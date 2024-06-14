-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2024 a las 23:52:18
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
-- Base de datos: `db_persona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  `unidad_medida_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `eliminado`, `denominacion`, `precio_venta`, `categoria_id`, `unidad_medida_id`) VALUES
(1, b'0', 'Harina', 0, 5, 2),
(2, b'1', 'Harina', 0, 5, 2),
(3, b'0', 'Pimienta', 0, 4, 2),
(4, b'0', 'Albahaca', 0, 4, 5),
(5, b'0', 'CocaCola', 1200, 1, 1),
(6, b'0', 'Salchicha', 0, 6, 6),
(7, b'1', 'Salchicha', 0, 6, 6),
(8, b'0', 'Tomate', 0, 8, 1),
(12, b'0', 'Pizza Napolitana', 6000, 2, 1),
(13, b'0', 'Pasta Italiana', 4500, 2, 1),
(14, b'0', 'Burger Americana', 6500, 3, 1),
(15, b'0', 'Pan', 0, 5, 1),
(16, b'0', 'Agua 500 ml', 700, 1, 1),
(17, b'0', 'Salchichita con Tomate', 3400, 3, 1),
(18, b'0', 'Medallon de carne', 0, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_aud`
--

CREATE TABLE `articulo_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  `unidad_medida_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo_aud`
--

INSERT INTO `articulo_aud` (`id`, `rev`, `revtype`, `denominacion`, `precio_venta`, `categoria_id`, `unidad_medida_id`) VALUES
(1, 14, 0, 'Harina', 0, 5, 2),
(2, 15, 0, 'Harina', 0, 5, 2),
(3, 16, 0, 'Pimienta', 0, 4, 2),
(4, 17, 0, 'Albahaca', 0, 4, 5),
(5, 20, 0, 'CocaCola', 1200, 1, 1),
(6, 21, 0, 'Salchicha', 0, 6, 6),
(7, 22, 0, 'Salchicha', 0, 6, 6),
(8, 23, 0, 'Tomate', 0, 8, 1),
(12, 24, 0, 'Pizza Napolitana', 6, 2, 1),
(12, 25, 1, 'Pizza Napolitana', 6, 2, 1),
(12, 26, 1, 'Pizza Napolitana', 6000, 2, 1),
(12, 27, 1, 'Pizza Napolitana', 6000, 2, 1),
(13, 28, 0, 'Pasta Italiana', 4500, 2, 1),
(13, 29, 1, 'Pasta Italiana', 4500, 2, 1),
(14, 30, 0, 'Burger Americana', 6500, 3, 1),
(15, 31, 0, 'Pan', 0, 5, 1),
(16, 32, 0, 'Agua 500 ml', 700, 1, 1),
(17, 33, 0, 'Salchichita con Tomate', 3400, 3, 1),
(18, 34, 0, 'Medallon de carne', 0, 6, 1),
(14, 35, 1, 'Burger Americana', 6500, 3, 1),
(1, 40, 1, 'Harina', 0, 5, 2),
(5, 40, 1, 'CocaCola', 1200, 1, 1),
(18, 40, 1, 'Medallon de carne', 0, 6, 1),
(1, 41, 1, 'Harina', 0, 5, 2),
(3, 41, 1, 'Pimienta', 0, 4, 2),
(4, 41, 1, 'Albahaca', 0, 4, 5),
(5, 41, 1, 'CocaCola', 1200, 1, 1),
(8, 41, 1, 'Tomate', 0, 8, 1),
(1, 42, 1, 'Harina', 0, 5, 2),
(8, 42, 1, 'Tomate', 0, 8, 1),
(16, 42, 1, 'Agua 500 ml', 700, 1, 1),
(5, 45, 1, 'CocaCola', 1200, 1, 1),
(1, 47, 1, 'Harina', 0, 5, 2),
(3, 47, 1, 'Pimienta', 0, 4, 2),
(4, 47, 1, 'Albahaca', 0, 4, 5),
(5, 47, 1, 'CocaCola', 1200, 1, 1),
(8, 47, 1, 'Tomate', 0, 8, 1),
(1, 48, 1, 'Harina', 0, 5, 2),
(8, 48, 1, 'Tomate', 0, 8, 1),
(16, 48, 1, 'Agua 500 ml', 700, 1, 1),
(1, 49, 1, 'Harina', 0, 5, 2),
(3, 49, 1, 'Pimienta', 0, 4, 2),
(4, 49, 1, 'Albahaca', 0, 4, 5),
(5, 49, 1, 'CocaCola', 1200, 1, 1),
(6, 49, 1, 'Salchicha', 0, 6, 6),
(8, 49, 1, 'Tomate', 0, 8, 1),
(6, 50, 1, 'Salchicha', 0, 6, 6),
(8, 50, 1, 'Tomate', 0, 8, 1),
(1, 51, 1, 'Harina', 0, 5, 2),
(8, 51, 1, 'Tomate', 0, 8, 1),
(1, 52, 1, 'Harina', 0, 5, 2),
(8, 52, 1, 'Tomate', 0, 8, 1),
(1, 53, 1, 'Harina', 0, 5, 2),
(8, 53, 1, 'Tomate', 0, 8, 1),
(1, 55, 1, 'Harina', 0, 5, 2),
(3, 55, 1, 'Pimienta', 0, 4, 2),
(4, 55, 1, 'Albahaca', 0, 4, 5),
(5, 55, 1, 'CocaCola', 1200, 1, 1),
(8, 55, 1, 'Tomate', 0, 8, 1),
(1, 59, 1, 'Harina', 0, 5, 2),
(18, 59, 1, 'Medallon de carne', 0, 6, 1),
(1, 64, 1, 'Harina', 0, 5, 2),
(18, 64, 1, 'Medallon de carne', 0, 6, 1),
(6, 66, 1, 'Salchicha', 0, 6, 6),
(8, 66, 1, 'Tomate', 0, 8, 1),
(16, 75, 1, 'Agua 500 ml', 700, 1, 1),
(6, 80, 1, 'Salchicha', 0, 6, 6),
(8, 80, 1, 'Tomate', 0, 8, 1),
(1, 86, 1, 'Harina', 0, 5, 2),
(8, 86, 1, 'Tomate', 0, 8, 1),
(18, 86, 1, 'Medallon de carne', 0, 6, 1),
(1, 88, 1, 'Harina', 0, 5, 2),
(6, 88, 1, 'Salchicha', 0, 6, 6),
(8, 88, 1, 'Tomate', 0, 8, 1),
(18, 88, 1, 'Medallon de carne', 0, 6, 1),
(1, 89, 1, 'Harina', 0, 5, 2),
(3, 89, 1, 'Pimienta', 0, 4, 2),
(4, 89, 1, 'Albahaca', 0, 4, 5),
(8, 89, 1, 'Tomate', 0, 8, 1),
(1, 101, 1, 'Harina', 0, 5, 2),
(18, 101, 1, 'Medallon de carne', 0, 6, 1),
(1, 102, 1, 'Harina', 0, 5, 2),
(8, 102, 1, 'Tomate', 0, 8, 1),
(18, 102, 1, 'Medallon de carne', 0, 6, 1),
(1, 103, 1, 'Harina', 0, 5, 2),
(18, 103, 1, 'Medallon de carne', 0, 6, 1),
(1, 104, 1, 'Harina', 0, 5, 2),
(18, 104, 1, 'Medallon de carne', 0, 6, 1),
(6, 105, 1, 'Salchicha', 0, 6, 6),
(8, 105, 1, 'Tomate', 0, 8, 1),
(6, 106, 1, 'Salchicha', 0, 6, 6),
(8, 106, 1, 'Tomate', 0, 8, 1),
(1, 107, 1, 'Harina', 0, 5, 2),
(3, 107, 1, 'Pimienta', 0, 4, 2),
(4, 107, 1, 'Albahaca', 0, 4, 5),
(6, 107, 1, 'Salchicha', 0, 6, 6),
(8, 107, 1, 'Tomate', 0, 8, 1),
(16, 107, 1, 'Agua 500 ml', 700, 1, 1),
(1, 111, 1, 'Harina', 0, 5, 2),
(8, 111, 1, 'Tomate', 0, 8, 1),
(18, 111, 1, 'Medallon de carne', 0, 6, 1),
(6, 112, 1, 'Salchicha', 0, 6, 6),
(8, 112, 1, 'Tomate', 0, 8, 1),
(1, 113, 1, 'Harina', 0, 5, 2),
(8, 113, 1, 'Tomate', 0, 8, 1),
(18, 113, 1, 'Medallon de carne', 0, 6, 1),
(6, 115, 1, 'Salchicha', 0, 6, 6),
(8, 115, 1, 'Tomate', 0, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_insumo`
--

CREATE TABLE `articulo_insumo` (
  `es_para_elaborar` bit(1) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `stock_actual` int(11) DEFAULT NULL,
  `stock_maximo` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo_insumo`
--

INSERT INTO `articulo_insumo` (`es_para_elaborar`, `precio_compra`, `stock_actual`, `stock_maximo`, `id`) VALUES
(b'1', 250, 76, 200, 1),
(b'1', 250, 100, 200, 2),
(b'1', 150, 92, 200, 3),
(b'1', 20, 92, 200, 4),
(b'0', 600, 99, 200, 5),
(b'1', 400, 94, 200, 6),
(b'1', 400, 100, 200, 7),
(b'1', 400, 77, 200, 8),
(b'1', 250, 100, 200, 15),
(b'0', 500, 96, 200, 16),
(b'1', 20, 64, 200, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_insumo_aud`
--

CREATE TABLE `articulo_insumo_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `es_para_elaborar` bit(1) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `stock_actual` int(11) DEFAULT NULL,
  `stock_maximo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo_insumo_aud`
--

INSERT INTO `articulo_insumo_aud` (`id`, `rev`, `es_para_elaborar`, `precio_compra`, `stock_actual`, `stock_maximo`) VALUES
(1, 14, b'1', 250, 20, 30),
(2, 15, b'1', 250, 20, 30),
(3, 16, b'1', 150, 30, 50),
(4, 17, b'1', 20, 30, 50),
(5, 20, b'0', 600, 20, 30),
(6, 21, b'1', 400, 30, 50),
(7, 22, b'1', 400, 30, 50),
(8, 23, b'1', 400, 60, 100),
(15, 31, b'1', 250, 20, 50),
(16, 32, b'0', 500, 20, 50),
(18, 34, b'1', 20, 10, 50),
(1, 40, b'1', 250, 18, 30),
(5, 40, b'0', 600, 19, 30),
(18, 40, b'1', 20, 2, 50),
(1, 41, b'1', 250, 16, 30),
(3, 41, b'1', 150, 28, 50),
(4, 41, b'1', 20, 28, 50),
(5, 41, b'0', 600, 18, 30),
(8, 41, b'1', 400, 58, 100),
(1, 42, b'1', 250, 14, 30),
(8, 42, b'1', 400, 57, 100),
(16, 42, b'0', 500, 19, 50),
(5, 45, b'0', 600, 17, 30),
(1, 47, b'1', 250, 12, 30),
(3, 47, b'1', 150, 26, 50),
(4, 47, b'1', 20, 26, 50),
(5, 47, b'0', 600, 16, 30),
(8, 47, b'1', 400, 55, 100),
(1, 48, b'1', 250, 10, 30),
(8, 48, b'1', 400, 54, 100),
(16, 48, b'0', 500, 18, 50),
(1, 49, b'1', 250, 8, 30),
(3, 49, b'1', 150, 24, 50),
(4, 49, b'1', 20, 24, 50),
(5, 49, b'0', 600, 15, 30),
(6, 49, b'1', 400, 29, 50),
(8, 49, b'1', 400, 50, 100),
(6, 50, b'1', 400, 27, 50),
(8, 50, b'1', 400, 46, 100),
(1, 51, b'1', 250, 6, 30),
(8, 51, b'1', 400, 45, 100),
(1, 52, b'1', 250, 4, 30),
(8, 52, b'1', 400, 44, 100),
(1, 53, b'1', 250, 2, 30),
(8, 53, b'1', 400, 43, 100),
(1, 55, b'1', 250, 93, 200),
(3, 55, b'1', 150, 98, 200),
(4, 55, b'1', 20, 98, 200),
(5, 55, b'0', 600, 99, 200),
(8, 55, b'1', 400, 96, 200),
(1, 59, b'1', 250, 92, 200),
(18, 59, b'1', 20, 96, 200),
(1, 64, b'1', 250, 91, 200),
(18, 64, b'1', 20, 92, 200),
(6, 66, b'1', 400, 99, 200),
(8, 66, b'1', 400, 94, 200),
(16, 75, b'0', 500, 97, 200),
(6, 80, b'1', 400, 97, 200),
(8, 80, b'1', 400, 90, 200),
(1, 86, b'1', 250, 87, 200),
(8, 86, b'1', 400, 89, 200),
(18, 86, b'1', 20, 84, 200),
(1, 88, b'1', 250, 86, 200),
(6, 88, b'1', 400, 96, 200),
(8, 88, b'1', 400, 87, 200),
(18, 88, b'1', 20, 80, 200),
(1, 89, b'1', 250, 80, 200),
(3, 89, b'1', 150, 94, 200),
(4, 89, b'1', 20, 94, 200),
(8, 89, b'1', 400, 82, 200),
(1, 101, b'1', 250, 76, 200),
(18, 101, b'1', 20, 64, 200),
(1, 102, b'1', 250, 80, 200),
(8, 102, b'1', 400, 83, 200),
(18, 102, b'1', 20, 72, 200),
(1, 103, b'1', 250, 79, 200),
(18, 103, b'1', 20, 68, 200),
(1, 104, b'1', 250, 78, 200),
(18, 104, b'1', 20, 64, 200),
(6, 105, b'1', 400, 95, 200),
(8, 105, b'1', 400, 81, 200),
(6, 106, b'1', 400, 96, 200),
(8, 106, b'1', 400, 83, 200),
(1, 107, b'1', 250, 76, 200),
(3, 107, b'1', 150, 92, 200),
(4, 107, b'1', 20, 92, 200),
(6, 107, b'1', 400, 94, 200),
(8, 107, b'1', 400, 77, 200),
(16, 107, b'0', 500, 96, 200),
(1, 111, b'1', 250, 70, 200),
(8, 111, b'1', 400, 75, 200),
(18, 111, b'1', 20, 56, 200),
(6, 112, b'1', 400, 91, 200),
(8, 112, b'1', 400, 69, 200),
(1, 113, b'1', 250, 76, 200),
(8, 113, b'1', 400, 71, 200),
(18, 113, b'1', 20, 64, 200),
(6, 115, b'1', 400, 94, 200),
(8, 115, b'1', 400, 77, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado`
--

CREATE TABLE `articulo_manufacturado` (
  `descripcion` varchar(255) DEFAULT NULL,
  `preparacion` varchar(255) DEFAULT NULL,
  `tiempo_estimado_minutos` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado`
--

INSERT INTO `articulo_manufacturado` (`descripcion`, `preparacion`, `tiempo_estimado_minutos`, `id`) VALUES
('Pizza Napolitana 12 porciones', 'Masa: mezcla 300g harina, 200ml agua, 10g sal, 10g levadura. Amasa, deja reposar 1h. Extiende y cubre con 200g salsa tomate, 200g mozzarella, ingredientes al gusto. Hornea a 220°C por 15min.', 35, 12),
('Pasta Napolitana Italiana', 'Cocina 400g de pasta. Salsa: sofríe 2 ajos y 1 cebolla picada, añade 800g tomate triturado, sal, pimienta, orégano. Cocina 15min. Mezcla la pasta con la salsa. Sirve con queso rallado. ¡Listo!', 35, 13),
('Hamburguesa americana doble medallon', 'Carne: mezcla 500g carne molida, sal, pimienta. Forma 4 hamburguesas, cocina 3min por lado. Pan: abre 4 panes, tuesta. Arma: coloca carne, queso, lechuga, tomate, cebolla, salsas al gusto. ¡Listo!', 35, 14),
('Salchicha con salsa de tomate', 'Hierve 4 salchichas. Calienta 4 panes. Coloca cada salchicha en su pan, añade mostaza, ketchup, y mayonesa al gusto. ¡Listo!', 20, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_aud`
--

CREATE TABLE `articulo_manufacturado_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `preparacion` varchar(255) DEFAULT NULL,
  `tiempo_estimado_minutos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado_aud`
--

INSERT INTO `articulo_manufacturado_aud` (`id`, `rev`, `descripcion`, `preparacion`, `tiempo_estimado_minutos`) VALUES
(12, 24, 'asda', 'sdf', 2),
(12, 25, 'asda', 'sdf', 2),
(12, 26, 'Pizza Napolitana 12 porciones', 'sdf', 35),
(12, 27, 'Pizza Napolitana 12 porciones', 'Masa: mezcla 300g harina, 200ml agua, 10g sal, 10g levadura. Amasa, deja reposar 1h. Extiende y cubre con 200g salsa tomate, 200g mozzarella, ingredientes al gusto. Hornea a 220°C por 15min.', 35),
(13, 28, 'Pasta Napolitana Italiana', 'Carne: mezcla 500g carne molida, sal, pimienta. Forma 4 hamburguesas, cocina 3min por lado. Pan: abre 4 panes, tuesta. Arma: coloca carne, queso, lechuga, tomate, cebolla, salsas al gusto. ¡Listo!', 35),
(13, 29, 'Pasta Napolitana Italiana', 'Cocina 400g de pasta. Salsa: sofríe 2 ajos y 1 cebolla picada, añade 800g tomate triturado, sal, pimienta, orégano. Cocina 15min. Mezcla la pasta con la salsa. Sirve con queso rallado. ¡Listo!', 35),
(14, 30, 'Hamburguesa americana doble medallon', 'Carne: mezcla 500g carne molida, sal, pimienta. Forma 4 hamburguesas, cocina 3min por lado. Pan: abre 4 panes, tuesta. Arma: coloca carne, queso, lechuga, tomate, cebolla, salsas al gusto. ¡Listo!', 35),
(17, 33, 'Salchicha con salsa de tomate', 'Hierve 4 salchichas. Calienta 4 panes. Coloca cada salchicha en su pan, añade mostaza, ketchup, y mayonesa al gusto. ¡Listo!', 20),
(14, 35, 'Hamburguesa americana doble medallon', 'Carne: mezcla 500g carne molida, sal, pimienta. Forma 4 hamburguesas, cocina 3min por lado. Pan: abre 4 panes, tuesta. Arma: coloca carne, queso, lechuga, tomate, cebolla, salsas al gusto. ¡Listo!', 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_detalle`
--

CREATE TABLE `articulo_manufacturado_detalle` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `articulo_insumo_id` bigint(20) DEFAULT NULL,
  `articulo_manufacturado_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado_detalle`
--

INSERT INTO `articulo_manufacturado_detalle` (`id`, `eliminado`, `cantidad`, `articulo_insumo_id`, `articulo_manufacturado_id`) VALUES
(1, b'0', 2, 1, 12),
(2, b'0', 2, 4, 12),
(3, b'0', 2, 3, 12),
(4, b'0', 2, 8, 12),
(5, b'0', 2, 1, 13),
(6, b'0', 1, 8, 13),
(7, b'1', 0, 6, 14),
(8, b'0', 1, 1, 14),
(9, b'0', 1, 6, 17),
(10, b'0', 2, 8, 17),
(11, b'0', 2, 18, 14),
(12, b'0', 2, 18, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_detalle_aud`
--

CREATE TABLE `articulo_manufacturado_detalle_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `articulo_insumo_id` bigint(20) DEFAULT NULL,
  `articulo_manufacturado_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado_detalle_aud`
--

INSERT INTO `articulo_manufacturado_detalle_aud` (`id`, `rev`, `revtype`, `cantidad`, `articulo_insumo_id`, `articulo_manufacturado_id`) VALUES
(1, 24, 0, 2, 1, 12),
(2, 25, 0, 2, 4, 12),
(3, 25, 0, 2, 3, 12),
(4, 25, 0, 2, 8, 12),
(5, 28, 0, 2, 1, 13),
(6, 28, 0, 1, 8, 13),
(7, 30, 0, 0, 6, 14),
(8, 30, 0, 1, 1, 14),
(9, 33, 0, 1, 6, 17),
(10, 33, 0, 2, 8, 17),
(11, 35, 0, 2, 18, 14),
(12, 35, 0, 2, 18, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `es_insumo` bit(1) NOT NULL,
  `categoria_padre_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `eliminado`, `denominacion`, `es_insumo`, `categoria_padre_id`) VALUES
(1, b'0', 'Bebidas', b'0', NULL),
(2, b'0', 'Comida Italiana', b'0', NULL),
(3, b'0', 'Comida Americana', b'0', NULL),
(4, b'0', 'Condimentos', b'1', NULL),
(5, b'0', 'Insumos para elaborar', b'1', NULL),
(6, b'0', 'Carnes insumo', b'1', NULL),
(7, b'0', 'Carnes', b'0', NULL),
(8, b'0', 'Frutas y Verduras', b'1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_articulo_aud`
--

CREATE TABLE `categoria_articulo_aud` (
  `rev` int(11) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_aud`
--

CREATE TABLE `categoria_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `es_insumo` bit(1) DEFAULT NULL,
  `categoria_padre_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_aud`
--

INSERT INTO `categoria_aud` (`id`, `rev`, `revtype`, `denominacion`, `es_insumo`, `categoria_padre_id`) VALUES
(1, 2, 0, 'Bebidas', b'0', NULL),
(2, 3, 0, 'Comida Italiana', b'0', NULL),
(3, 4, 0, 'Comida Americana', b'0', NULL),
(4, 5, 0, 'Condimentos', b'1', NULL),
(5, 6, 0, 'Insumos para elaborar', b'1', NULL),
(6, 7, 0, 'Carnes insumo', b'1', NULL),
(7, 8, 0, 'Carnes', b'0', NULL),
(8, 19, 0, 'Frutas y Verduras', b'1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_aud`
--

CREATE TABLE `cliente_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_domicilio`
--

CREATE TABLE `cliente_domicilio` (
  `cliente_id` bigint(20) NOT NULL,
  `domicilio_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_domicilio_aud`
--

CREATE TABLE `cliente_domicilio_aud` (
  `rev` int(11) NOT NULL,
  `cliente_id` bigint(20) NOT NULL,
  `domicilio_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `articulo_id` bigint(20) DEFAULT NULL,
  `pedido_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `eliminado`, `cantidad`, `sub_total`, `articulo_id`, `pedido_id`) VALUES
(1, b'0', 1, 4500, 13, 1),
(2, b'0', 1, 6000, 12, 1),
(3, b'0', 1, 1200, 5, 1),
(4, b'0', 1, 4500, 13, 1),
(5, b'0', 1, 6500, 14, 2),
(6, b'0', 1, 6500, 14, 3),
(7, b'0', 1, 3400, 17, 4),
(8, b'0', 3, 2100, 16, 5),
(9, b'0', 2, 6800, 17, 6),
(10, b'0', 1, 4500, 13, 7),
(11, b'0', 2, 13000, 14, 7),
(12, b'0', 1, 3400, 17, 8),
(13, b'0', 1, 6500, 14, 8),
(14, b'0', 1, 6000, 12, 9),
(15, b'0', 1, 4500, 13, 9),
(16, b'0', 1, 6000, 12, 9),
(17, b'0', 4, 26000, 14, 10),
(18, b'0', 1, 6500, 14, 11),
(19, b'0', 1, 6500, 14, 12),
(20, b'0', 1, 3400, 17, 13),
(21, b'0', 1, 6000, 12, 14),
(22, b'0', 1, 700, 16, 14),
(23, b'0', 2, 6800, 17, 14),
(24, b'0', 2, 9000, 13, 15),
(25, b'0', 2, 13000, 14, 15),
(26, b'0', 3, 10200, 17, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_aud`
--

CREATE TABLE `detalle_pedido_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `articulo_id` bigint(20) DEFAULT NULL,
  `pedido_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido_aud`
--

INSERT INTO `detalle_pedido_aud` (`id`, `rev`, `revtype`, `cantidad`, `sub_total`, `articulo_id`, `pedido_id`) VALUES
(1, 55, 0, 1, 4500, 13, 1),
(2, 55, 0, 1, 6000, 12, 1),
(3, 55, 0, 1, 1200, 5, 1),
(4, 55, 0, 1, 4500, 13, 1),
(5, 59, 0, 1, 6500, 14, 2),
(6, 64, 0, 1, 6500, 14, 3),
(7, 66, 0, 1, 3400, 17, 4),
(8, 75, 0, 3, 2100, 16, 5),
(9, 80, 0, 2, 6800, 17, 6),
(10, 86, 0, 1, 4500, 13, 7),
(11, 86, 0, 2, 13000, 14, 7),
(12, 88, 0, 1, 3400, 17, 8),
(13, 88, 0, 1, 6500, 14, 8),
(14, 89, 0, 1, 6000, 12, 9),
(15, 89, 0, 1, 4500, 13, 9),
(16, 89, 0, 1, 6000, 12, 9),
(17, 101, 0, 4, 26000, 14, 10),
(18, 103, 0, 1, 6500, 14, 11),
(19, 104, 0, 1, 6500, 14, 12),
(20, 105, 0, 1, 3400, 17, 13),
(21, 107, 0, 1, 6000, 12, 14),
(22, 107, 0, 1, 700, 16, 14),
(23, 107, 0, 2, 6800, 17, 14),
(24, 111, 0, 2, 9000, 13, 15),
(25, 111, 0, 2, 13000, 14, 15),
(26, 112, 0, 3, 10200, 17, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `nro_dpto` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `piso` int(11) DEFAULT NULL,
  `localidad_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio_aud`
--

CREATE TABLE `domicilio_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `nro_dpto` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `piso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `tipo_empleado` tinyint(4) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `sucursal_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_aud`
--

CREATE TABLE `empleado_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `tipo_empleado` tinyint(4) DEFAULT NULL,
  `sucursal_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `cuil` bigint(20) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `eliminado`, `cuil`, `nombre`, `razon_social`) VALUES
(1, b'0', 20431176085, 'Jebbs', 'Jebbs S.A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_aud`
--

CREATE TABLE `empresa_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `cuil` bigint(20) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa_aud`
--

INSERT INTO `empresa_aud` (`id`, `rev`, `revtype`, `cuil`, `nombre`, `razon_social`) VALUES
(1, 1, 0, 20431176085, 'Jebbs', 'Jebbs S.A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `fecha_fcturacion` date DEFAULT NULL,
  `mp_payment_id` varchar(255) DEFAULT NULL,
  `pagado` bit(1) DEFAULT NULL,
  `total_venta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `eliminado`, `fecha_fcturacion`, `mp_payment_id`, `pagado`, `total_venta`) VALUES
(1, b'0', '2024-06-14', '57a330a8-262d-4367-ad78-38ae9de7c506', b'1', 13230),
(2, b'0', '2024-06-14', '1026e51f-0c0c-4157-a772-fa37846e4ff7', b'1', 5850),
(3, b'0', '2024-06-14', '03e69198-7648-4bc7-ba95-1e2ba772a77b', b'1', 5850),
(4, b'0', '2024-06-14', '5979cdec-11dc-4e13-8a96-112889d46094', b'1', 3060),
(5, b'0', '2024-06-14', '7f06caa3-d5a9-448a-aa4a-28d4f267f06f', b'1', 1890),
(6, b'0', '2024-06-14', '3bd34a32-4385-4f87-96b8-9f370c666c8e', b'1', 6120),
(7, b'0', '2024-06-14', '227221994-8dd1caed-d0a8-42d9-a0d8-0e8ca470b53b', b'1', 11500),
(8, b'0', '2024-06-14', '1feb215f-7fd0-413e-b5b9-d9ecaf037f2f', b'1', 8910),
(9, b'0', '2024-06-14', '227221994-35d84394-5261-4022-99df-f320d8edc932', b'1', 14500),
(10, b'0', '2024-06-14', NULL, b'0', 23400),
(11, b'0', '2024-06-14', NULL, b'0', 5850),
(12, b'0', '2024-06-14', NULL, b'0', 5850),
(13, b'0', '2024-06-14', NULL, b'0', 3060),
(14, b'0', '2024-06-14', 'd7b8d5b8-ae2a-4f0d-ae27-da0162c6bf8b', b'1', 16650),
(15, b'0', '2024-06-14', '227221994-02efae55-c17d-4b17-8b3c-f3d5ae165d21', b'1', 22000),
(16, b'0', '2024-06-14', NULL, b'0', 9180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_aud`
--

CREATE TABLE `factura_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `fecha_fcturacion` date DEFAULT NULL,
  `mp_payment_id` varchar(255) DEFAULT NULL,
  `pagado` bit(1) DEFAULT NULL,
  `total_venta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura_aud`
--

INSERT INTO `factura_aud` (`id`, `rev`, `revtype`, `fecha_fcturacion`, `mp_payment_id`, `pagado`, `total_venta`) VALUES
(1, 55, 0, '2024-06-14', NULL, b'0', 13230),
(2, 59, 0, '2024-06-14', NULL, b'0', 5850),
(3, 64, 0, '2024-06-14', NULL, b'0', 5850),
(3, 65, 1, '2024-06-14', '03e69198-7648-4bc7-ba95-1e2ba772a77b', b'1', 5850),
(4, 66, 0, '2024-06-14', NULL, b'0', 3060),
(4, 67, 1, '2024-06-14', '5979cdec-11dc-4e13-8a96-112889d46094', b'1', 3060),
(1, 71, 1, '2024-06-14', '57a330a8-262d-4367-ad78-38ae9de7c506', b'1', 13230),
(5, 75, 0, '2024-06-14', NULL, b'0', 1890),
(5, 79, 1, '2024-06-14', '7f06caa3-d5a9-448a-aa4a-28d4f267f06f', b'1', 1890),
(6, 80, 0, '2024-06-14', NULL, b'0', 6120),
(6, 83, 1, '2024-06-14', '3bd34a32-4385-4f87-96b8-9f370c666c8e', b'1', 6120),
(2, 85, 1, '2024-06-14', '1026e51f-0c0c-4157-a772-fa37846e4ff7', b'1', 5850),
(7, 86, 0, '2024-06-14', '227221994-8dd1caed-d0a8-42d9-a0d8-0e8ca470b53b', b'1', 11500),
(8, 88, 0, '2024-06-14', NULL, b'0', 8910),
(9, 89, 0, '2024-06-14', '227221994-35d84394-5261-4022-99df-f320d8edc932', b'1', 14500),
(8, 93, 1, '2024-06-14', '1feb215f-7fd0-413e-b5b9-d9ecaf037f2f', b'1', 8910),
(10, 101, 0, '2024-06-14', NULL, b'0', 23400),
(11, 103, 0, '2024-06-14', NULL, b'0', 5850),
(12, 104, 0, '2024-06-14', NULL, b'0', 5850),
(13, 105, 0, '2024-06-14', NULL, b'0', 3060),
(14, 107, 0, '2024-06-14', NULL, b'0', 16650),
(14, 110, 1, '2024-06-14', 'd7b8d5b8-ae2a-4f0d-ae27-da0162c6bf8b', b'1', 16650),
(15, 111, 0, '2024-06-14', '227221994-02efae55-c17d-4b17-8b3c-f3d5ae165d21', b'1', 22000),
(16, 112, 0, '2024-06-14', NULL, b'0', 9180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_articulo`
--

CREATE TABLE `imagen_articulo` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `name_image` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `articulo_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagen_articulo`
--

INSERT INTO `imagen_articulo` (`id`, `eliminado`, `name_image`, `url_image`, `articulo_id`) VALUES
(1, b'0', 'adobestock_77761871.jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/xg5otxhvzrmagtz9gulc', 1),
(2, b'0', 'adobestock_77761871.jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/i3lzc4ih7lh2nszjcwuy', 2),
(3, b'0', 'OIP (1).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/jtv8u58b6ijaojqkbguw', 3),
(4, b'0', '7e2db098-albahaca-basil-adobestock_81129315-2048x1421.jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/zq7ol8s4krgkmqueabv9', 4),
(5, b'0', 'OIP.jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/cjb43emnhzh2gy6bt5ru', 5),
(6, b'0', 'Salchicha_Viena-1080x1025-2.png', 'https://res.cloudinary.com/dqvesgask/image/upload/wvt9ypve4tjngz1qbb2x', 6),
(7, b'0', 'Salchicha_Viena-1080x1025-2.png', 'https://res.cloudinary.com/dqvesgask/image/upload/s6kmwodtwgzbbrxplt8s', 7),
(8, b'0', 'OIP (2).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/zttolkfqkeok7pu9zjtw', 8),
(9, b'0', 'R.jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/mgi52rwzgku6ygrdbnlf', 12),
(10, b'0', 'OIP (3).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/etvbhkzl4tgkopgtzdzo', 12),
(11, b'0', 'OIP (4).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/q7a3mu69p4s8aoplwhfk', 12),
(12, b'0', 'R (1).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/w59hmyitwrb5kuvn8ijb', 13),
(13, b'0', 'Pasta-Napoletana-FB.jpg', 'https://res.cloudinary.com/dqvesgask/image/upload/ppr9w87afec6nktttlrn', 13),
(14, b'0', 'OIP (7).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/mnc5ptm6bvpj4srumxzo', 14),
(15, b'0', 'OIP (8).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/gf8i94dvaw1ytyhvjfvn', 14),
(16, b'0', 'OIP (9).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/zn3d9pohc4nx803i9g4v', 14),
(17, b'0', 'OIP (6).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/fbr8fvyseityzrcsmzdm', 15),
(18, b'0', 'R (3).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/osfkxq7uv6qorazn3skz', 16),
(19, b'0', 'R (2).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/ceee5v2l0ufiffajszyp', 16),
(20, b'0', 'OIP (10).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/reo3fcer0dnysqn7zc6d', 17),
(21, b'0', 'salchichas_guisadas_con_tomate_59059_paso_5_600.jpg', 'https://res.cloudinary.com/dqvesgask/image/upload/knss7zbr5hzhhytsiu8t', 17),
(22, b'0', 'OIP (5).jpeg', 'https://res.cloudinary.com/dqvesgask/image/upload/nfghbp2wsncmm7voszrf', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_persona`
--

CREATE TABLE `imagen_persona` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `name_image` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `provincia_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id`, `eliminado`, `nombre`, `provincia_id`) VALUES
(1, b'0', 'Adolfo Gonzales Chaves', 1),
(2, b'0', 'Concordia', 2),
(3, b'0', 'Federal', 2),
(4, b'0', 'Gualeguaychú', 2),
(5, b'0', 'Islas del Ibicuy', 2),
(6, b'0', 'Victoria', 2),
(7, b'0', 'Diamante', 2),
(8, b'0', 'Uruguay', 2),
(9, b'0', 'Paraná', 2),
(10, b'0', 'Saladillo', 1),
(11, b'0', 'Las Flores', 1),
(12, b'0', 'Rojas', 1),
(13, b'0', 'Escobar', 1),
(14, b'0', 'José C. Paz', 1),
(15, b'0', 'Bahía Blanca', 1),
(16, b'0', 'San Antonio de Areco', 1),
(17, b'0', 'Maipú', 1),
(18, b'0', 'General Alvarado', 1),
(19, b'0', 'General Pueyrredón', 1),
(20, b'0', 'Mar Chiquita', 1),
(21, b'0', 'Villa Gesell', 1),
(22, b'0', 'Pinamar', 1),
(23, b'0', 'General Lavalle', 1),
(24, b'0', 'La Costa', 1),
(25, b'0', 'Magdalena', 1),
(26, b'0', 'Sauce', 3),
(27, b'0', 'Vicente López', 1),
(28, b'0', 'La Viña', 4),
(29, b'0', 'Rauch', 1),
(30, b'0', 'Metán', 4),
(31, b'0', 'Molinos', 4),
(32, b'0', 'O\'Higgins', 5),
(33, b'0', 'Moreno', 1),
(34, b'0', 'La Matanza', 1),
(35, b'0', 'Tandil', 1),
(36, b'0', 'Coronel Suárez', 1),
(37, b'0', 'Chamical', 6),
(38, b'0', 'Futaleufú', 7),
(39, b'0', 'Río Chico', 8),
(40, b'0', 'San Antonio', 9),
(41, b'0', 'Alberdi', 10),
(42, b'0', 'Juan Felipe Ibarra', 10),
(43, b'0', 'General Taboada', 10),
(44, b'0', 'Salliqueló', 1),
(45, b'0', 'Berazategui', 1),
(46, b'0', 'General Güemes', 4),
(47, b'0', 'San Carlos', 4),
(48, b'0', 'General Paz', 1),
(49, b'0', 'General Guido', 1),
(50, b'0', 'General Juan Madariaga', 1),
(51, b'0', 'Lago Argentino', 8),
(52, b'0', 'Rivadavia', 10),
(53, b'0', 'Ojo de Agua', 10),
(54, b'0', 'Choya', 10),
(55, b'0', 'Gobernador Dupuy', 11),
(56, b'0', 'Cachi', 4),
(57, b'0', 'Chicoana', 4),
(58, b'0', 'Gaiman', 7),
(59, b'0', 'Rawson', 7),
(60, b'0', 'General Lamadrid', 6),
(61, b'0', 'Ayacucho', 11),
(62, b'0', '12 de Octubre', 5),
(63, b'0', 'Tulumba', 12),
(64, b'0', 'Cruz del Eje', 12),
(65, b'0', 'Punilla', 12),
(66, b'0', 'Comuna 6', 2),
(67, b'0', 'Santa Rosa', 13),
(68, b'0', 'General Güemes', 5),
(69, b'0', 'General Ortiz de Ocampo', 6),
(70, b'0', 'General Roca', 12),
(71, b'0', 'Pilagás', 14),
(72, b'0', 'Laishi', 14),
(73, b'0', 'Rivadavia', 13),
(74, b'0', 'Tornquist', 1),
(75, b'0', 'La Paz', 13),
(76, b'0', 'Coronel Pringles', 1),
(77, b'0', 'Conesa', 9),
(78, b'0', 'Villarino', 1),
(79, b'0', 'Pirané', 14),
(80, b'0', 'General Pinto', 1),
(81, b'0', 'San Cayetano', 1),
(82, b'0', 'Tres Arroyos', 1),
(83, b'0', 'Coronel Dorrego', 1),
(84, b'0', 'Necochea', 1),
(85, b'0', 'Independencia', 6),
(86, b'0', 'Chascomús', 1),
(87, b'0', 'Punta Indio', 1),
(88, b'0', 'El Carmen', 15),
(89, b'0', 'Santa María', 12),
(90, b'0', 'Valcheta', 9),
(91, b'0', 'Arauco', 6),
(92, b'0', 'Lezama', 1),
(93, b'0', 'Campana', 1),
(94, b'0', 'Magallanes', 8),
(95, b'0', 'Corpen Aike', 8),
(96, b'0', 'Minas', 12),
(97, b'0', 'San Alberto', 12),
(98, b'0', 'Río Segundo', 12),
(99, b'0', 'San Justo', 12),
(100, b'0', 'Unión', 12),
(101, b'0', 'Tercero Arriba', 12),
(102, b'0', 'Cerrillos', 4),
(103, b'0', 'Río Cuarto', 12),
(104, b'0', 'Tupungato', 13),
(105, b'0', '9 de Julio', 9),
(106, b'0', 'Ñorquinco', 9),
(107, b'0', 'San Rafael', 13),
(108, b'0', 'Anta', 4),
(109, b'0', 'Picún Leufú', 16),
(110, b'0', 'Zapala', 16),
(111, b'0', '25 de Mayo', 9),
(112, b'0', 'Telsen', 7),
(113, b'0', 'Pilcaniyeu', 9),
(114, b'0', 'Adolfo Alsina', 1),
(115, b'0', 'General Alvear', 13),
(116, b'0', 'La Caldera', 4),
(117, b'0', 'Sargento Cabral', 5),
(118, b'0', 'Pellegrini', 1),
(119, b'0', 'Aluminé', 16),
(120, b'0', 'Iruya', 4),
(121, b'0', 'Lácar', 16),
(122, b'0', 'Fray Mamerto Esquiú', 10),
(123, b'0', 'Valle Viejo', 10),
(124, b'0', 'San Cosme', 3),
(125, b'0', 'Sarmiento', 7),
(126, b'0', 'Comuna 1', 2),
(127, b'0', 'Comuna 4', 2),
(128, b'0', 'El Cuy', 9),
(129, b'0', 'Las Heras', 13),
(130, b'0', 'Tapenagá', 5),
(131, b'0', 'Lavalle', 13),
(132, b'0', 'Malargüe', 13),
(133, b'0', 'Presidente Roque Sáenz Peña', 12),
(134, b'0', 'Catán Lil', 16),
(135, b'0', 'Presidencia de la Plaza', 5),
(136, b'0', 'Comuna 5', 2),
(137, b'0', 'Esquina', 3),
(138, b'0', 'Ushuaia', 17),
(139, b'0', 'Antofagasta de la Sierra', 10),
(140, b'0', 'Ensenada', 1),
(141, b'0', 'Capital', 18),
(142, b'0', 'Belgrano', 19),
(143, b'0', 'Pergamino', 1),
(144, b'0', 'Puán', 1),
(145, b'0', 'General Villegas', 1),
(146, b'0', 'Comuna 12', 2),
(147, b'0', 'General Obligado', 19),
(148, b'0', 'Vera', 19),
(149, b'0', '9 de Julio', 19),
(150, b'0', 'Adolfo Alsina', 9),
(151, b'0', 'Quitilipi', 5),
(152, b'0', 'Güer Aike', 8),
(153, b'0', 'Capayán', 10),
(154, b'0', 'Burruyacú', 18),
(155, b'0', 'San Jerónimo', 19),
(156, b'0', 'Independencia', 5),
(157, b'0', 'Curuzú Cuatiá', 3),
(158, b'0', 'Luján de Cuyo', 13),
(159, b'0', 'Tinogasta', 10),
(160, b'0', 'Comuna 7', 2),
(161, b'0', 'Hucal', 20),
(162, b'0', 'Itatí', 3),
(163, b'0', 'Comuna 10', 2),
(164, b'0', 'Caleu Caleu', 20),
(165, b'0', 'Lihuel Calel', 20),
(166, b'0', 'Curacó', 20),
(167, b'0', 'Confluencia', 16),
(168, b'0', 'Picunches', 16),
(169, b'0', 'Añelo', 16),
(170, b'0', 'Loncopué', 16),
(171, b'0', 'Ñorquín', 16),
(172, b'0', 'Pehuenches', 16),
(173, b'0', 'Comuna 11', 2),
(174, b'0', 'Montecarlo', 21),
(175, b'0', 'Eldorado', 21),
(176, b'0', 'San Pedro', 21),
(177, b'0', 'Antártida Argentina', 17),
(178, b'0', 'Minas', 16),
(179, b'0', 'Chos Malal', 16),
(180, b'0', 'Cushamen', 7),
(181, b'0', 'Lago Buenos Aires', 8),
(182, b'0', 'Pichi Mahuida', 9),
(183, b'0', 'San Martín', 22),
(184, b'0', 'Yavi', 15),
(185, b'0', 'Santa Catalina', 15),
(186, b'0', 'San Pedro', 15),
(187, b'0', 'Valle Grande', 15),
(188, b'0', 'Patiño', 14),
(189, b'0', 'Bermejo', 14),
(190, b'0', 'Susques', 15),
(191, b'0', 'Matacos', 14),
(192, b'0', 'Los Andes', 4),
(193, b'0', 'Orán', 4),
(194, b'0', 'Tilcara', 15),
(195, b'0', 'Palpalá', 15),
(196, b'0', 'Loventué', 20),
(197, b'0', 'Río Senguer', 7),
(198, b'0', 'Bariloche', 9),
(199, b'0', 'Huiliches', 16),
(200, b'0', 'Limay Mahuida', 20),
(201, b'0', 'Puelén', 20),
(202, b'0', 'Chalileo', 20),
(203, b'0', 'Chical Co', 20),
(204, b'0', 'Quebrachos', 22),
(205, b'0', 'Monte Caseros', 3),
(206, b'0', 'Mayor Luis J. Fontana', 5),
(207, b'0', 'Fray Justo Santa María de Oro', 5),
(208, b'0', 'General Belgrano', 6),
(209, b'0', 'Las Colonias', 19),
(210, b'0', 'San Justo', 19),
(211, b'0', 'San Cristóbal', 19),
(212, b'0', 'San Javier', 19),
(213, b'0', 'Chapaleufú', 20),
(214, b'0', 'Realicó', 20),
(215, b'0', 'Maracó', 20),
(216, b'0', 'Trenel', 20),
(217, b'0', 'Copo', 22),
(218, b'0', 'Capital', 20),
(219, b'0', 'Santa Bárbara', 15),
(220, b'0', 'Almirante Brown', 5),
(221, b'0', 'Rosario de la Frontera', 4),
(222, b'0', 'Collón Curá', 16),
(223, b'0', 'Comuna 3', 2),
(224, b'0', 'San Fernando', 1),
(225, b'0', 'Tigre', 1),
(226, b'0', 'Santa María', 10),
(227, b'0', 'Santa Rosa', 10),
(228, b'0', 'La Paz', 10),
(229, b'0', 'Río Hondo', 22),
(230, b'0', 'Vinchina', 6),
(231, b'0', 'Capital', 6),
(232, b'0', 'Río Seco', 12),
(233, b'0', 'Avellaneda', 9),
(234, b'0', 'General Roca', 9),
(235, b'0', 'Belgrano', 11),
(236, b'0', 'Los Lagos', 16),
(237, b'0', 'Capital', 10),
(238, b'0', 'Ancasti', 10),
(239, b'0', 'Pomán', 10),
(240, b'0', 'Comuna 2', 2),
(241, b'0', '9 de Julio', 5),
(242, b'0', 'Pocho', 12),
(243, b'0', 'Ezeiza', 1),
(244, b'0', 'Andalgalá', 10),
(245, b'0', 'Ambato', 10),
(246, b'0', 'Comuna 8', 2),
(247, b'0', 'Guasayán', 22),
(248, b'0', 'Paclín', 10),
(249, b'0', 'El Alto', 10),
(250, b'0', 'Sobremonte', 12),
(251, b'0', 'Río Grande', 17),
(252, b'0', 'Comuna 13', 2),
(253, b'0', 'Banda', 22),
(254, b'0', 'Paso de Indios', 7),
(255, b'0', 'Capital', 12),
(256, b'0', 'Mártires', 7),
(257, b'0', 'Sarmiento', 22),
(258, b'0', 'Deseado', 8),
(259, b'0', 'Languiñeo', 7),
(260, b'0', 'Belgrano', 22),
(261, b'0', 'Aguirre', 22),
(262, b'0', 'Maipú', 5),
(263, b'0', 'San Carlos', 13),
(264, b'0', 'Tunuyán', 13),
(265, b'0', 'Robles', 22),
(266, b'0', 'Loreto', 22),
(267, b'0', 'Catriló', 20),
(268, b'0', 'Capital', 22),
(269, b'0', 'Comuna 14', 2),
(270, b'0', 'Colón', 23),
(271, b'0', 'Villaguay', 23),
(272, b'0', 'Castelli', 1),
(273, b'0', 'San Salvador', 23),
(274, b'0', 'Belén', 10),
(275, b'0', 'Almirante Brown', 1),
(276, b'0', 'Nogoyá', 23),
(277, b'0', 'Tala', 23),
(278, b'0', 'Gualeguay', 23),
(279, b'0', 'Federación', 23),
(280, b'0', 'La Paz', 23),
(281, b'0', 'Feliciano', 23),
(282, b'0', 'Presidente Perón', 1),
(283, b'0', 'Junín', 1),
(284, b'0', 'Brandsen', 1),
(285, b'0', 'Chivilcoy', 1),
(286, b'0', 'Alberti', 1),
(287, b'0', 'Bragado', 1),
(288, b'0', 'General Las Heras', 1),
(289, b'0', 'Carlos Casares', 1),
(290, b'0', 'Marcos Paz', 1),
(291, b'0', 'General Viamonte', 1),
(292, b'0', 'Carlos Tejedor', 1),
(293, b'0', '25 de Mayo', 1),
(294, b'0', '9 de Julio', 1),
(295, b'0', 'Pehuajó', 1),
(296, b'0', 'Tapalqué', 1),
(297, b'0', 'Trenque Lauquen', 1),
(298, b'0', 'General Belgrano', 1),
(299, b'0', 'Monte', 1),
(300, b'0', 'Roque Pérez', 1),
(301, b'0', 'Olavarría', 1),
(302, b'0', 'Merlo', 1),
(303, b'0', 'Cainguás', 21),
(304, b'0', 'Islas del Atlántico Sur', 17),
(305, b'0', 'Esteban Echeverría', 1),
(306, b'0', 'Arrecifes', 1),
(307, b'0', 'Capitán Sarmiento', 1),
(308, b'0', 'Dr. Manuel Belgrano', 15),
(309, b'0', 'Carmen de Areco', 1),
(310, b'0', 'Salto', 1),
(311, b'0', 'Exaltación de la Cruz', 1),
(312, b'0', 'San Miguel', 1),
(313, b'0', 'San Andrés de Giles', 1),
(314, b'0', 'Mercedes', 1),
(315, b'0', 'Pilar', 1),
(316, b'0', 'Luján', 1),
(317, b'0', 'Famaillá', 18),
(318, b'0', 'Hurlingham', 1),
(319, b'0', 'Morón', 1),
(320, b'0', 'Chacabuco', 1),
(321, b'0', 'Junín', 13),
(322, b'0', 'Malvinas Argentinas', 1),
(323, b'0', 'Tres Lomas', 1),
(324, b'0', 'Ayacucho', 1),
(325, b'0', 'Guaminí', 1),
(326, b'0', 'General San Martín', 1),
(327, b'0', 'Lincoln', 1),
(328, b'0', 'Laprida', 1),
(329, b'0', 'San Isidro', 1),
(330, b'0', 'Benito Juárez', 1),
(331, b'0', 'Colón', 1),
(332, b'0', 'Ituzaingó', 1),
(333, b'0', 'General Rodríguez', 1),
(334, b'0', 'Suipacha', 1),
(335, b'0', 'Tres de Febrero', 1),
(336, b'0', 'General Felipe Varela', 6),
(337, b'0', 'Florencio Varela', 1),
(338, b'0', 'Navarro', 1),
(339, b'0', 'Cañuelas', 1),
(340, b'0', 'Moreno', 22),
(341, b'0', 'Chacabuco', 5),
(342, b'0', 'San Vicente', 1),
(343, b'0', 'Lobos', 1),
(344, b'0', 'General Alvear', 1),
(345, b'0', 'Quilmes', 1),
(346, b'0', 'Pila', 1),
(347, b'0', 'General La Madrid', 1),
(348, b'0', 'Bolívar', 1),
(349, b'0', 'Castro Barros', 6),
(350, b'0', 'Balcarce', 1),
(351, b'0', 'Hipólito Yrigoyen', 1),
(352, b'0', 'Capital', 13),
(353, b'0', 'Dolores', 1),
(354, b'0', 'Azul', 1),
(355, b'0', 'Daireaux', 1),
(356, b'0', 'Godoy Cruz', 13),
(357, b'0', 'Cafayate', 4),
(358, b'0', 'Figueroa', 22),
(359, b'0', 'Saavedra', 1),
(360, b'0', 'Monte Hermoso', 1),
(361, b'0', 'Lobería', 1),
(362, b'0', 'Berisso', 1),
(363, b'0', 'Tordillo', 1),
(364, b'0', 'Zárate', 1),
(365, b'0', 'Ramallo', 1),
(366, b'0', 'San Nicolás', 1),
(367, b'0', 'Salavina', 22),
(368, b'0', 'Pellegrini', 22),
(369, b'0', 'Avellaneda', 22),
(370, b'0', '2 de Abril', 5),
(371, b'0', 'Guaymallén', 13),
(372, b'0', 'Juárez Celman', 12),
(373, b'0', 'Capital', 4),
(374, b'0', 'Silípica', 22),
(375, b'0', 'La Candelaria', 4),
(376, b'0', 'Rancul', 20),
(377, b'0', 'Maipú', 13),
(378, b'0', 'Guachipas', 4),
(379, b'0', 'Atreucó', 20),
(380, b'0', 'San Martín', 13),
(381, b'0', 'Guatraché', 20),
(382, b'0', 'Sanagasta', 6),
(383, b'0', 'Conhelo', 20),
(384, b'0', 'Libertador General San Martín', 21),
(385, b'0', 'Rosario Vera Peñaloza', 6),
(386, b'0', 'San Miguel', 3),
(387, b'0', 'General Juan Facundo Quiroga', 6),
(388, b'0', 'Ángel Vicente Peñaloza', 6),
(389, b'0', 'Empedrado', 3),
(390, b'0', 'Chilecito', 6),
(391, b'0', 'Toay', 20),
(392, b'0', 'Colón', 12),
(393, b'0', 'Ituzaingó', 3),
(394, b'0', 'Famatina', 6),
(395, b'0', 'General López', 19),
(396, b'0', 'Constitución', 19),
(397, b'0', 'Caseros', 19),
(398, b'0', 'Rosario', 19),
(399, b'0', 'San Lorenzo', 19),
(400, b'0', 'Iriondo', 19),
(401, b'0', 'Lanús', 1),
(402, b'0', 'General San Martín', 6),
(403, b'0', 'San Blas de Los Sauces', 6),
(404, b'0', 'San Antonio', 15),
(405, b'0', 'Rinconada', 15),
(406, b'0', 'Ramón Lista', 14),
(407, b'0', 'La Poma', 4),
(408, b'0', 'Biedma', 7),
(409, b'0', 'Capital', 3),
(410, b'0', 'San Luis del Palmar', 3),
(411, b'0', 'Formosa', 14),
(412, b'0', 'Pilcomayo', 14),
(413, b'0', 'Tehuelches', 7),
(414, b'0', 'Escalante', 7),
(415, b'0', 'Ischilín', 12),
(416, b'0', 'Totoral', 12),
(417, b'0', 'General San Martín', 12),
(418, b'0', 'San Javier', 12),
(419, b'0', 'Río Primero', 12),
(420, b'0', 'Marcos Juárez', 12),
(421, b'0', 'General Donovan', 5),
(422, b'0', 'Leandro N. Alem', 1),
(423, b'0', 'Libertador General San Martín', 5),
(424, b'0', 'Gastre', 7),
(425, b'0', 'General Arenales', 1),
(426, b'0', 'Bermejo', 5),
(427, b'0', 'Calamuchita', 12),
(428, b'0', 'Cruz Alta', 18),
(429, b'0', 'Lules', 18),
(430, b'0', 'Yerba Buena', 18),
(431, b'0', 'Tafí Viejo', 18),
(432, b'0', 'Libertador General San Martín', 11),
(433, b'0', 'Coronel Pringles', 11),
(434, b'0', 'Chacabuco', 11),
(435, b'0', 'Rivadavia', 1),
(436, b'0', 'Patagones', 1),
(437, b'0', 'Juan Martín de Pueyrredón', 11),
(438, b'0', 'General Pedernera', 11),
(439, b'0', 'Trancas', 18),
(440, b'0', 'Tafí del Valle', 18),
(441, b'0', 'Comuna 9', 2),
(442, b'0', 'Junín', 11),
(443, b'0', 'Mitre', 22),
(444, b'0', 'Atamisqui', 22),
(445, b'0', 'Berón de Astrada', 3),
(446, b'0', 'Tolhuin', 17),
(447, b'0', 'Capital', 21),
(448, b'0', 'Candelaria', 21),
(449, b'0', 'Jiménez', 22),
(450, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(451, b'0', 'Baradero', 1),
(452, b'0', 'San Pedro', 1),
(453, b'0', 'Santa Victoria', 4),
(454, b'0', 'General José de San Martín', 4),
(455, b'0', 'Rivadavia', 4),
(456, b'0', 'Rosario de Lerma', 4),
(457, b'0', 'Ledesma', 15),
(458, b'0', 'Humahuaca', 15),
(459, b'0', 'Cochinoca', 15),
(460, b'0', 'Tumbaya', 15),
(461, b'0', 'Florentino Ameghino', 1),
(462, b'0', 'Florentino Ameghino', 7),
(463, b'0', 'La Cocha', 18),
(464, b'0', 'Graneros', 18),
(465, b'0', 'Juan Bautista Alberdi', 18),
(466, b'0', 'Río Chico', 18),
(467, b'0', 'Simoca', 18),
(468, b'0', 'Chicligasta', 18),
(469, b'0', 'Monteros', 18),
(470, b'0', 'Leales', 18),
(471, b'0', 'San Martín', 19),
(472, b'0', 'La Capital', 19),
(473, b'0', 'General Manuel Belgrano', 21),
(474, b'0', 'Guaraní', 21),
(475, b'0', 'Iguazú', 21),
(476, b'0', '25 de Mayo', 21),
(477, b'0', 'Oberá', 21),
(478, b'0', 'Castellanos', 19),
(479, b'0', 'Garay', 19),
(480, b'0', 'Quemú Quemú', 20),
(481, b'0', 'San Ignacio', 21),
(482, b'0', 'Utracán', 20),
(483, b'0', 'San Martín', 3),
(484, b'0', 'Paso de los Libres', 3),
(485, b'0', 'Goya', 3),
(486, b'0', 'Lavalle', 3),
(487, b'0', 'San Roque', 3),
(488, b'0', 'General Alvear', 3),
(489, b'0', 'Concepción', 3),
(490, b'0', 'Bella Vista', 3),
(491, b'0', 'Santo Tomé', 3),
(492, b'0', 'Saladas', 3),
(493, b'0', 'General Paz', 3),
(494, b'0', 'Leandro N. Alem', 21),
(495, b'0', 'San Javier', 21),
(496, b'0', 'Mburucuyá', 3),
(497, b'0', 'Concepción', 21),
(498, b'0', 'Apóstoles', 21),
(499, b'0', '1° de Mayo', 5),
(500, b'0', 'San Fernando', 5),
(501, b'0', 'San Lorenzo', 5),
(502, b'0', 'Lomas de Zamora', 1),
(503, b'0', 'Avellaneda', 1),
(504, b'0', '25 de Mayo', 5),
(505, b'0', 'General Belgrano', 5),
(506, b'0', 'Libertad', 5),
(507, b'0', 'Comandante Fernández', 5),
(508, b'0', 'Comuna 15', 2),
(509, b'0', 'Chimbas', 24),
(510, b'0', 'Capital', 24),
(511, b'0', 'Rivadavia', 24),
(512, b'0', '9 de Julio', 24),
(513, b'0', 'Albardón', 24),
(514, b'0', 'Angaco', 24),
(515, b'0', 'Santa Lucía', 24),
(516, b'0', 'Rawson', 24),
(517, b'0', '25 de Mayo', 24),
(518, b'0', 'San Martín', 24),
(519, b'0', 'Pocito', 24),
(520, b'0', 'Zonda', 24),
(521, b'0', 'Ullum', 24),
(522, b'0', 'Sarmiento', 24),
(523, b'0', 'Calingasta', 24),
(524, b'0', 'Iglesia', 24),
(525, b'0', 'Jáchal', 24),
(526, b'0', 'Valle Fértil', 24),
(527, b'0', 'Caucete', 24),
(528, b'0', 'La Plata', 1),
(529, b'0', 'Mercedes', 3),
(530, b'0', 'Adolfo Gonzales Chaves', 1),
(531, b'0', 'Concordia', 23),
(532, b'0', 'Federal', 23),
(533, b'0', 'Gualeguaychú', 23),
(534, b'0', 'Islas del Ibicuy', 23),
(535, b'0', 'Victoria', 23),
(536, b'0', 'Diamante', 23),
(537, b'0', 'Uruguay', 23),
(538, b'0', 'Paraná', 23),
(539, b'0', 'Saladillo', 1),
(540, b'0', 'Las Flores', 1),
(541, b'0', 'Rojas', 1),
(542, b'0', 'Escobar', 1),
(543, b'0', 'José C. Paz', 1),
(544, b'0', 'Bahía Blanca', 1),
(545, b'0', 'San Antonio de Areco', 1),
(546, b'0', 'Maipú', 1),
(547, b'0', 'General Alvarado', 1),
(548, b'0', 'General Pueyrredón', 1),
(549, b'0', 'Mar Chiquita', 1),
(550, b'0', 'Villa Gesell', 1),
(551, b'0', 'Pinamar', 1),
(552, b'0', 'General Lavalle', 1),
(553, b'0', 'La Costa', 1),
(554, b'0', 'Magdalena', 1),
(555, b'0', 'Sauce', 3),
(556, b'0', 'Vicente López', 1),
(557, b'0', 'La Viña', 4),
(558, b'0', 'Rauch', 1),
(559, b'0', 'Metán', 4),
(560, b'0', 'Molinos', 4),
(561, b'0', 'O\'Higgins', 5),
(562, b'0', 'Moreno', 1),
(563, b'0', 'La Matanza', 1),
(564, b'0', 'Tandil', 1),
(565, b'0', 'Coronel Suárez', 1),
(566, b'0', 'Chamical', 6),
(567, b'0', 'Futaleufú', 7),
(568, b'0', 'Río Chico', 8),
(569, b'0', 'San Antonio', 9),
(570, b'0', 'Alberdi', 22),
(571, b'0', 'Juan Felipe Ibarra', 22),
(572, b'0', 'General Taboada', 22),
(573, b'0', 'Salliqueló', 1),
(574, b'0', 'Berazategui', 1),
(575, b'0', 'General Güemes', 4),
(576, b'0', 'San Carlos', 4),
(577, b'0', 'General Paz', 1),
(578, b'0', 'General Guido', 1),
(579, b'0', 'General Juan Madariaga', 1),
(580, b'0', 'Lago Argentino', 8),
(581, b'0', 'Rivadavia', 22),
(582, b'0', 'Ojo de Agua', 22),
(583, b'0', 'Choya', 22),
(584, b'0', 'Gobernador Dupuy', 11),
(585, b'0', 'Cachi', 4),
(586, b'0', 'Chicoana', 4),
(587, b'0', 'Gaiman', 7),
(588, b'0', 'Rawson', 7),
(589, b'0', 'General Lamadrid', 6),
(590, b'0', 'Ayacucho', 11),
(591, b'0', '12 de Octubre', 5),
(592, b'0', 'Tulumba', 12),
(593, b'0', 'Cruz del Eje', 12),
(594, b'0', 'Punilla', 12),
(595, b'0', 'Comuna 6', 2),
(596, b'0', 'Santa Rosa', 13),
(597, b'0', 'General Güemes', 5),
(598, b'0', 'General Ortiz de Ocampo', 6),
(599, b'0', 'General Roca', 12),
(600, b'0', 'Pilagás', 14),
(601, b'0', 'Laishi', 14),
(602, b'0', 'Rivadavia', 13),
(603, b'0', 'Tornquist', 1),
(604, b'0', 'La Paz', 13),
(605, b'0', 'Coronel Pringles', 1),
(606, b'0', 'Conesa', 9),
(607, b'0', 'Villarino', 1),
(608, b'0', 'Pirané', 14),
(609, b'0', 'General Pinto', 1),
(610, b'0', 'San Cayetano', 1),
(611, b'0', 'Tres Arroyos', 1),
(612, b'0', 'Coronel Dorrego', 1),
(613, b'0', 'Necochea', 1),
(614, b'0', 'Independencia', 6),
(615, b'0', 'Chascomús', 1),
(616, b'0', 'Punta Indio', 1),
(617, b'0', 'El Carmen', 15),
(618, b'0', 'Santa María', 12),
(619, b'0', 'Valcheta', 9),
(620, b'0', 'Arauco', 6),
(621, b'0', 'Lezama', 1),
(622, b'0', 'Campana', 1),
(623, b'0', 'Magallanes', 8),
(624, b'0', 'Corpen Aike', 8),
(625, b'0', 'Minas', 12),
(626, b'0', 'San Alberto', 12),
(627, b'0', 'Río Segundo', 12),
(628, b'0', 'San Justo', 12),
(629, b'0', 'Unión', 12),
(630, b'0', 'Tercero Arriba', 12),
(631, b'0', 'Cerrillos', 4),
(632, b'0', 'Río Cuarto', 12),
(633, b'0', 'Tupungato', 13),
(634, b'0', '9 de Julio', 9),
(635, b'0', 'Ñorquinco', 9),
(636, b'0', 'San Rafael', 13),
(637, b'0', 'Anta', 4),
(638, b'0', 'Picún Leufú', 16),
(639, b'0', 'Zapala', 16),
(640, b'0', '25 de Mayo', 9),
(641, b'0', 'Telsen', 7),
(642, b'0', 'Pilcaniyeu', 9),
(643, b'0', 'Adolfo Alsina', 1),
(644, b'0', 'General Alvear', 13),
(645, b'0', 'La Caldera', 4),
(646, b'0', 'Sargento Cabral', 5),
(647, b'0', 'Pellegrini', 1),
(648, b'0', 'Aluminé', 16),
(649, b'0', 'Iruya', 4),
(650, b'0', 'Lácar', 16),
(651, b'0', 'Fray Mamerto Esquiú', 10),
(652, b'0', 'Valle Viejo', 10),
(653, b'0', 'San Cosme', 3),
(654, b'0', 'Sarmiento', 7),
(655, b'0', 'Comuna 1', 2),
(656, b'0', 'Comuna 4', 2),
(657, b'0', 'El Cuy', 9),
(658, b'0', 'Las Heras', 13),
(659, b'0', 'Tapenagá', 5),
(660, b'0', 'Lavalle', 13),
(661, b'0', 'Malargüe', 13),
(662, b'0', 'Presidente Roque Sáenz Peña', 12),
(663, b'0', 'Catán Lil', 16),
(664, b'0', 'Presidencia de la Plaza', 5),
(665, b'0', 'Comuna 5', 2),
(666, b'0', 'Esquina', 3),
(667, b'0', 'Ushuaia', 17),
(668, b'0', 'Antofagasta de la Sierra', 10),
(669, b'0', 'Ensenada', 1),
(670, b'0', 'Capital', 18),
(671, b'0', 'Belgrano', 19),
(672, b'0', 'Pergamino', 1),
(673, b'0', 'Puán', 1),
(674, b'0', 'General Villegas', 1),
(675, b'0', 'Comuna 12', 2),
(676, b'0', 'General Obligado', 19),
(677, b'0', 'Vera', 19),
(678, b'0', '9 de Julio', 19),
(679, b'0', 'Adolfo Alsina', 9),
(680, b'0', 'Quitilipi', 5),
(681, b'0', 'Güer Aike', 8),
(682, b'0', 'Capayán', 10),
(683, b'0', 'Burruyacú', 18),
(684, b'0', 'San Jerónimo', 19),
(685, b'0', 'Independencia', 5),
(686, b'0', 'Curuzú Cuatiá', 3),
(687, b'0', 'Luján de Cuyo', 13),
(688, b'0', 'Tinogasta', 10),
(689, b'0', 'Comuna 7', 2),
(690, b'0', 'Hucal', 20),
(691, b'0', 'Itatí', 3),
(692, b'0', 'Comuna 10', 2),
(693, b'0', 'Caleu Caleu', 20),
(694, b'0', 'Lihuel Calel', 20),
(695, b'0', 'Curacó', 20),
(696, b'0', 'Confluencia', 16),
(697, b'0', 'Picunches', 16),
(698, b'0', 'Añelo', 16),
(699, b'0', 'Loncopué', 16),
(700, b'0', 'Ñorquín', 16),
(701, b'0', 'Pehuenches', 16),
(702, b'0', 'Comuna 11', 2),
(703, b'0', 'Montecarlo', 21),
(704, b'0', 'Eldorado', 21),
(705, b'0', 'San Pedro', 21),
(706, b'0', 'Antártida Argentina', 17),
(707, b'0', 'Minas', 16),
(708, b'0', 'Chos Malal', 16),
(709, b'0', 'Cushamen', 7),
(710, b'0', 'Lago Buenos Aires', 8),
(711, b'0', 'Pichi Mahuida', 9),
(712, b'0', 'San Martín', 22),
(713, b'0', 'Yavi', 15),
(714, b'0', 'Santa Catalina', 15),
(715, b'0', 'San Pedro', 15),
(716, b'0', 'Valle Grande', 15),
(717, b'0', 'Patiño', 14),
(718, b'0', 'Bermejo', 14),
(719, b'0', 'Susques', 15),
(720, b'0', 'Matacos', 14),
(721, b'0', 'Los Andes', 4),
(722, b'0', 'Orán', 4),
(723, b'0', 'Tilcara', 15),
(724, b'0', 'Palpalá', 15),
(725, b'0', 'Loventué', 20),
(726, b'0', 'Río Senguer', 7),
(727, b'0', 'Bariloche', 9),
(728, b'0', 'Huiliches', 16),
(729, b'0', 'Limay Mahuida', 20),
(730, b'0', 'Puelén', 20),
(731, b'0', 'Chalileo', 20),
(732, b'0', 'Chical Co', 20),
(733, b'0', 'Quebrachos', 22),
(734, b'0', 'Monte Caseros', 3),
(735, b'0', 'Mayor Luis J. Fontana', 5),
(736, b'0', 'Fray Justo Santa María de Oro', 5),
(737, b'0', 'General Belgrano', 6),
(738, b'0', 'Las Colonias', 19),
(739, b'0', 'San Justo', 19),
(740, b'0', 'San Cristóbal', 19),
(741, b'0', 'San Javier', 19),
(742, b'0', 'Chapaleufú', 20),
(743, b'0', 'Realicó', 20),
(744, b'0', 'Maracó', 20),
(745, b'0', 'Trenel', 20),
(746, b'0', 'Copo', 22),
(747, b'0', 'Capital', 20),
(748, b'0', 'Santa Bárbara', 15),
(749, b'0', 'Almirante Brown', 5),
(750, b'0', 'Rosario de la Frontera', 4),
(751, b'0', 'Collón Curá', 16),
(752, b'0', 'Comuna 3', 2),
(753, b'0', 'San Fernando', 1),
(754, b'0', 'Tigre', 1),
(755, b'0', 'Santa María', 10),
(756, b'0', 'Santa Rosa', 10),
(757, b'0', 'La Paz', 10),
(758, b'0', 'Río Hondo', 22),
(759, b'0', 'Vinchina', 6),
(760, b'0', 'Capital', 6),
(761, b'0', 'Río Seco', 12),
(762, b'0', 'Avellaneda', 9),
(763, b'0', 'General Roca', 9),
(764, b'0', 'Belgrano', 11),
(765, b'0', 'Los Lagos', 16),
(766, b'0', 'Capital', 10),
(767, b'0', 'Ancasti', 10),
(768, b'0', 'Pomán', 10),
(769, b'0', 'Comuna 2', 2),
(770, b'0', '9 de Julio', 5),
(771, b'0', 'Pocho', 12),
(772, b'0', 'Ezeiza', 1),
(773, b'0', 'Andalgalá', 10),
(774, b'0', 'Ambato', 10),
(775, b'0', 'Comuna 8', 2),
(776, b'0', 'Guasayán', 22),
(777, b'0', 'Paclín', 10),
(778, b'0', 'El Alto', 10),
(779, b'0', 'Sobremonte', 12),
(780, b'0', 'Río Grande', 17),
(781, b'0', 'Comuna 13', 2),
(782, b'0', 'Banda', 22),
(783, b'0', 'Paso de Indios', 7),
(784, b'0', 'Capital', 12),
(785, b'0', 'Mártires', 7),
(786, b'0', 'Sarmiento', 22),
(787, b'0', 'Deseado', 8),
(788, b'0', 'Languiñeo', 7),
(789, b'0', 'Belgrano', 22),
(790, b'0', 'Aguirre', 22),
(791, b'0', 'Maipú', 5),
(792, b'0', 'San Carlos', 13),
(793, b'0', 'Tunuyán', 13),
(794, b'0', 'Robles', 22),
(795, b'0', 'Loreto', 22),
(796, b'0', 'Catriló', 20),
(797, b'0', 'Capital', 22),
(798, b'0', 'Comuna 14', 2),
(799, b'0', 'Colón', 23),
(800, b'0', 'Villaguay', 23),
(801, b'0', 'Castelli', 1),
(802, b'0', 'San Salvador', 23),
(803, b'0', 'Belén', 10),
(804, b'0', 'Almirante Brown', 1),
(805, b'0', 'Nogoyá', 23),
(806, b'0', 'Tala', 23),
(807, b'0', 'Gualeguay', 23),
(808, b'0', 'Federación', 23),
(809, b'0', 'La Paz', 23),
(810, b'0', 'Feliciano', 23),
(811, b'0', 'Presidente Perón', 1),
(812, b'0', 'Junín', 1),
(813, b'0', 'Brandsen', 1),
(814, b'0', 'Chivilcoy', 1),
(815, b'0', 'Alberti', 1),
(816, b'0', 'Bragado', 1),
(817, b'0', 'General Las Heras', 1),
(818, b'0', 'Carlos Casares', 1),
(819, b'0', 'Marcos Paz', 1),
(820, b'0', 'General Viamonte', 1),
(821, b'0', 'Carlos Tejedor', 1),
(822, b'0', '25 de Mayo', 1),
(823, b'0', '9 de Julio', 1),
(824, b'0', 'Pehuajó', 1),
(825, b'0', 'Tapalqué', 1),
(826, b'0', 'Trenque Lauquen', 1),
(827, b'0', 'General Belgrano', 1),
(828, b'0', 'Monte', 1),
(829, b'0', 'Roque Pérez', 1),
(830, b'0', 'Olavarría', 1),
(831, b'0', 'Merlo', 1),
(832, b'0', 'Cainguás', 21),
(833, b'0', 'Islas del Atlántico Sur', 17),
(834, b'0', 'Esteban Echeverría', 1),
(835, b'0', 'Arrecifes', 1),
(836, b'0', 'Capitán Sarmiento', 1),
(837, b'0', 'Dr. Manuel Belgrano', 15),
(838, b'0', 'Carmen de Areco', 1),
(839, b'0', 'Salto', 1),
(840, b'0', 'Exaltación de la Cruz', 1),
(841, b'0', 'San Miguel', 1),
(842, b'0', 'San Andrés de Giles', 1),
(843, b'0', 'Mercedes', 1),
(844, b'0', 'Pilar', 1),
(845, b'0', 'Luján', 1),
(846, b'0', 'Famaillá', 18),
(847, b'0', 'Hurlingham', 1),
(848, b'0', 'Morón', 1),
(849, b'0', 'Chacabuco', 1),
(850, b'0', 'Junín', 13),
(851, b'0', 'Malvinas Argentinas', 1),
(852, b'0', 'Tres Lomas', 1),
(853, b'0', 'Ayacucho', 1),
(854, b'0', 'Guaminí', 1),
(855, b'0', 'General San Martín', 1),
(856, b'0', 'Lincoln', 1),
(857, b'0', 'Laprida', 1),
(858, b'0', 'San Isidro', 1),
(859, b'0', 'Benito Juárez', 1),
(860, b'0', 'Colón', 1),
(861, b'0', 'Ituzaingó', 1),
(862, b'0', 'General Rodríguez', 1),
(863, b'0', 'Suipacha', 1),
(864, b'0', 'Tres de Febrero', 1),
(865, b'0', 'General Felipe Varela', 6),
(866, b'0', 'Florencio Varela', 1),
(867, b'0', 'Navarro', 1),
(868, b'0', 'Cañuelas', 1),
(869, b'0', 'Moreno', 22),
(870, b'0', 'Chacabuco', 5),
(871, b'0', 'San Vicente', 1),
(872, b'0', 'Lobos', 1),
(873, b'0', 'General Alvear', 1),
(874, b'0', 'Quilmes', 1),
(875, b'0', 'Pila', 1),
(876, b'0', 'General La Madrid', 1),
(877, b'0', 'Bolívar', 1),
(878, b'0', 'Castro Barros', 6),
(879, b'0', 'Balcarce', 1),
(880, b'0', 'Hipólito Yrigoyen', 1),
(881, b'0', 'Capital', 13),
(882, b'0', 'Dolores', 1),
(883, b'0', 'Azul', 1),
(884, b'0', 'Daireaux', 1),
(885, b'0', 'Godoy Cruz', 13),
(886, b'0', 'Cafayate', 4),
(887, b'0', 'Figueroa', 22),
(888, b'0', 'Saavedra', 1),
(889, b'0', 'Monte Hermoso', 1),
(890, b'0', 'Lobería', 1),
(891, b'0', 'Berisso', 1),
(892, b'0', 'Tordillo', 1),
(893, b'0', 'Zárate', 1),
(894, b'0', 'Ramallo', 1),
(895, b'0', 'San Nicolás', 1),
(896, b'0', 'Salavina', 22),
(897, b'0', 'Pellegrini', 22),
(898, b'0', 'Avellaneda', 22),
(899, b'0', '2 de Abril', 5),
(900, b'0', 'Guaymallén', 13),
(901, b'0', 'Juárez Celman', 12),
(902, b'0', 'Capital', 4),
(903, b'0', 'Silípica', 22),
(904, b'0', 'La Candelaria', 4),
(905, b'0', 'Rancul', 20),
(906, b'0', 'Maipú', 13),
(907, b'0', 'Guachipas', 4),
(908, b'0', 'Atreucó', 20),
(909, b'0', 'San Martín', 13),
(910, b'0', 'Guatraché', 20),
(911, b'0', 'Sanagasta', 6),
(912, b'0', 'Conhelo', 20),
(913, b'0', 'Libertador General San Martín', 21),
(914, b'0', 'Rosario Vera Peñaloza', 6),
(915, b'0', 'San Miguel', 3),
(916, b'0', 'General Juan Facundo Quiroga', 6),
(917, b'0', 'Ángel Vicente Peñaloza', 6),
(918, b'0', 'Empedrado', 3),
(919, b'0', 'Chilecito', 6),
(920, b'0', 'Toay', 20),
(921, b'0', 'Colón', 12),
(922, b'0', 'Ituzaingó', 3),
(923, b'0', 'Famatina', 6),
(924, b'0', 'General López', 19),
(925, b'0', 'Constitución', 19),
(926, b'0', 'Caseros', 19),
(927, b'0', 'Rosario', 19),
(928, b'0', 'San Lorenzo', 19),
(929, b'0', 'Iriondo', 19),
(930, b'0', 'Lanús', 1),
(931, b'0', 'General San Martín', 6),
(932, b'0', 'San Blas de Los Sauces', 6),
(933, b'0', 'San Antonio', 15),
(934, b'0', 'Rinconada', 15),
(935, b'0', 'Ramón Lista', 14),
(936, b'0', 'La Poma', 4),
(937, b'0', 'Biedma', 7),
(938, b'0', 'Capital', 3),
(939, b'0', 'San Luis del Palmar', 3),
(940, b'0', 'Formosa', 14),
(941, b'0', 'Pilcomayo', 14),
(942, b'0', 'Tehuelches', 7),
(943, b'0', 'Escalante', 7),
(944, b'0', 'Ischilín', 12),
(945, b'0', 'Totoral', 12),
(946, b'0', 'General San Martín', 12),
(947, b'0', 'San Javier', 12),
(948, b'0', 'Río Primero', 12),
(949, b'0', 'Marcos Juárez', 12),
(950, b'0', 'General Donovan', 5),
(951, b'0', 'Leandro N. Alem', 1),
(952, b'0', 'Libertador General San Martín', 5),
(953, b'0', 'Gastre', 7),
(954, b'0', 'General Arenales', 1),
(955, b'0', 'Bermejo', 5),
(956, b'0', 'Calamuchita', 12),
(957, b'0', 'Cruz Alta', 18),
(958, b'0', 'Lules', 18),
(959, b'0', 'Yerba Buena', 18),
(960, b'0', 'Tafí Viejo', 18),
(961, b'0', 'Libertador General San Martín', 11),
(962, b'0', 'Coronel Pringles', 11),
(963, b'0', 'Chacabuco', 11),
(964, b'0', 'Rivadavia', 1),
(965, b'0', 'Patagones', 1),
(966, b'0', 'Juan Martín de Pueyrredón', 11),
(967, b'0', 'General Pedernera', 11),
(968, b'0', 'Trancas', 18),
(969, b'0', 'Tafí del Valle', 18),
(970, b'0', 'Comuna 9', 2),
(971, b'0', 'Junín', 11),
(972, b'0', 'Mitre', 22),
(973, b'0', 'Atamisqui', 22),
(974, b'0', 'Berón de Astrada', 3),
(975, b'0', 'Tolhuin', 17),
(976, b'0', 'Capital', 21),
(977, b'0', 'Candelaria', 21),
(978, b'0', 'Jiménez', 22),
(979, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(980, b'0', 'Baradero', 1),
(981, b'0', 'San Pedro', 1),
(982, b'0', 'Santa Victoria', 4),
(983, b'0', 'General José de San Martín', 4),
(984, b'0', 'Rivadavia', 4),
(985, b'0', 'Rosario de Lerma', 4),
(986, b'0', 'Ledesma', 15),
(987, b'0', 'Humahuaca', 15),
(988, b'0', 'Cochinoca', 15),
(989, b'0', 'Tumbaya', 15),
(990, b'0', 'Florentino Ameghino', 1),
(991, b'0', 'Florentino Ameghino', 7),
(992, b'0', 'La Cocha', 18),
(993, b'0', 'Graneros', 18),
(994, b'0', 'Juan Bautista Alberdi', 18),
(995, b'0', 'Río Chico', 18),
(996, b'0', 'Simoca', 18),
(997, b'0', 'Chicligasta', 18),
(998, b'0', 'Monteros', 18),
(999, b'0', 'Leales', 18),
(1000, b'0', 'San Martín', 19),
(1001, b'0', 'La Capital', 19),
(1002, b'0', 'General Manuel Belgrano', 21),
(1003, b'0', 'Guaraní', 21),
(1004, b'0', 'Iguazú', 21),
(1005, b'0', '25 de Mayo', 21),
(1006, b'0', 'Oberá', 21),
(1007, b'0', 'Castellanos', 19),
(1008, b'0', 'Garay', 19),
(1009, b'0', 'Quemú Quemú', 20),
(1010, b'0', 'San Ignacio', 21),
(1011, b'0', 'Utracán', 20),
(1012, b'0', 'San Martín', 3),
(1013, b'0', 'Paso de los Libres', 3),
(1014, b'0', 'Goya', 3),
(1015, b'0', 'Lavalle', 3),
(1016, b'0', 'San Roque', 3),
(1017, b'0', 'General Alvear', 3),
(1018, b'0', 'Concepción', 3),
(1019, b'0', 'Bella Vista', 3),
(1020, b'0', 'Santo Tomé', 3),
(1021, b'0', 'Saladas', 3),
(1022, b'0', 'General Paz', 3),
(1023, b'0', 'Leandro N. Alem', 21),
(1024, b'0', 'San Javier', 21),
(1025, b'0', 'Mburucuyá', 3),
(1026, b'0', 'Concepción', 21),
(1027, b'0', 'Apóstoles', 21),
(1028, b'0', '1° de Mayo', 5),
(1029, b'0', 'San Fernando', 5),
(1030, b'0', 'San Lorenzo', 5),
(1031, b'0', 'Lomas de Zamora', 1),
(1032, b'0', 'Avellaneda', 1),
(1033, b'0', '25 de Mayo', 5),
(1034, b'0', 'General Belgrano', 5),
(1035, b'0', 'Libertad', 5),
(1036, b'0', 'Comandante Fernández', 5),
(1037, b'0', 'Comuna 15', 2),
(1038, b'0', 'Chimbas', 24),
(1039, b'0', 'Capital', 24),
(1040, b'0', 'Rivadavia', 24),
(1041, b'0', '9 de Julio', 24),
(1042, b'0', 'Albardón', 24),
(1043, b'0', 'Angaco', 24),
(1044, b'0', 'Santa Lucía', 24),
(1045, b'0', 'Rawson', 24),
(1046, b'0', '25 de Mayo', 24),
(1047, b'0', 'San Martín', 24),
(1048, b'0', 'Pocito', 24),
(1049, b'0', 'Zonda', 24),
(1050, b'0', 'Ullum', 24),
(1051, b'0', 'Sarmiento', 24),
(1052, b'0', 'Calingasta', 24),
(1053, b'0', 'Iglesia', 24),
(1054, b'0', 'Jáchal', 24),
(1055, b'0', 'Valle Fértil', 24),
(1056, b'0', 'Caucete', 24),
(1057, b'0', 'La Plata', 1),
(1058, b'0', 'Mercedes', 3),
(1059, b'0', 'Adolfo Gonzales Chaves', 1),
(1060, b'0', 'Concordia', 23),
(1061, b'0', 'Federal', 23),
(1062, b'0', 'Gualeguaychú', 23),
(1063, b'0', 'Islas del Ibicuy', 23),
(1064, b'0', 'Victoria', 23),
(1065, b'0', 'Diamante', 23),
(1066, b'0', 'Uruguay', 23),
(1067, b'0', 'Paraná', 23),
(1068, b'0', 'Saladillo', 1),
(1069, b'0', 'Las Flores', 1),
(1070, b'0', 'Rojas', 1),
(1071, b'0', 'Escobar', 1),
(1072, b'0', 'José C. Paz', 1),
(1073, b'0', 'Bahía Blanca', 1),
(1074, b'0', 'San Antonio de Areco', 1),
(1075, b'0', 'Maipú', 1),
(1076, b'0', 'General Alvarado', 1),
(1077, b'0', 'General Pueyrredón', 1),
(1078, b'0', 'Mar Chiquita', 1),
(1079, b'0', 'Villa Gesell', 1),
(1080, b'0', 'Pinamar', 1),
(1081, b'0', 'General Lavalle', 1),
(1082, b'0', 'La Costa', 1),
(1083, b'0', 'Magdalena', 1),
(1084, b'0', 'Sauce', 3),
(1085, b'0', 'Vicente López', 1),
(1086, b'0', 'La Viña', 4),
(1087, b'0', 'Rauch', 1),
(1088, b'0', 'Metán', 4),
(1089, b'0', 'Molinos', 4),
(1090, b'0', 'O\'Higgins', 5),
(1091, b'0', 'Moreno', 1),
(1092, b'0', 'La Matanza', 1),
(1093, b'0', 'Tandil', 1),
(1094, b'0', 'Coronel Suárez', 1),
(1095, b'0', 'Chamical', 6),
(1096, b'0', 'Futaleufú', 7),
(1097, b'0', 'Río Chico', 8),
(1098, b'0', 'San Antonio', 9),
(1099, b'0', 'Alberdi', 22),
(1100, b'0', 'Juan Felipe Ibarra', 22),
(1101, b'0', 'General Taboada', 22),
(1102, b'0', 'Salliqueló', 1),
(1103, b'0', 'Berazategui', 1),
(1104, b'0', 'General Güemes', 4),
(1105, b'0', 'San Carlos', 4),
(1106, b'0', 'General Paz', 1),
(1107, b'0', 'General Guido', 1),
(1108, b'0', 'General Juan Madariaga', 1),
(1109, b'0', 'Lago Argentino', 8),
(1110, b'0', 'Rivadavia', 22),
(1111, b'0', 'Ojo de Agua', 22),
(1112, b'0', 'Choya', 22),
(1113, b'0', 'Gobernador Dupuy', 11),
(1114, b'0', 'Cachi', 4),
(1115, b'0', 'Chicoana', 4),
(1116, b'0', 'Gaiman', 7),
(1117, b'0', 'Rawson', 7),
(1118, b'0', 'General Lamadrid', 6),
(1119, b'0', 'Ayacucho', 11),
(1120, b'0', '12 de Octubre', 5),
(1121, b'0', 'Tulumba', 12),
(1122, b'0', 'Cruz del Eje', 12),
(1123, b'0', 'Punilla', 12),
(1124, b'0', 'Comuna 6', 2),
(1125, b'0', 'Santa Rosa', 13),
(1126, b'0', 'General Güemes', 5),
(1127, b'0', 'General Ortiz de Ocampo', 6),
(1128, b'0', 'General Roca', 12),
(1129, b'0', 'Pilagás', 14),
(1130, b'0', 'Laishi', 14),
(1131, b'0', 'Rivadavia', 13),
(1132, b'0', 'Tornquist', 1),
(1133, b'0', 'La Paz', 13),
(1134, b'0', 'Coronel Pringles', 1),
(1135, b'0', 'Conesa', 9),
(1136, b'0', 'Villarino', 1),
(1137, b'0', 'Pirané', 14),
(1138, b'0', 'General Pinto', 1),
(1139, b'0', 'San Cayetano', 1),
(1140, b'0', 'Tres Arroyos', 1),
(1141, b'0', 'Coronel Dorrego', 1),
(1142, b'0', 'Necochea', 1),
(1143, b'0', 'Independencia', 6),
(1144, b'0', 'Chascomús', 1),
(1145, b'0', 'Punta Indio', 1),
(1146, b'0', 'El Carmen', 15),
(1147, b'0', 'Santa María', 12),
(1148, b'0', 'Valcheta', 9),
(1149, b'0', 'Arauco', 6),
(1150, b'0', 'Lezama', 1),
(1151, b'0', 'Campana', 1),
(1152, b'0', 'Magallanes', 8),
(1153, b'0', 'Corpen Aike', 8),
(1154, b'0', 'Minas', 12),
(1155, b'0', 'San Alberto', 12),
(1156, b'0', 'Río Segundo', 12),
(1157, b'0', 'San Justo', 12),
(1158, b'0', 'Unión', 12),
(1159, b'0', 'Tercero Arriba', 12),
(1160, b'0', 'Cerrillos', 4),
(1161, b'0', 'Río Cuarto', 12),
(1162, b'0', 'Tupungato', 13),
(1163, b'0', '9 de Julio', 9),
(1164, b'0', 'Ñorquinco', 9),
(1165, b'0', 'San Rafael', 13),
(1166, b'0', 'Anta', 4),
(1167, b'0', 'Picún Leufú', 16),
(1168, b'0', 'Zapala', 16),
(1169, b'0', '25 de Mayo', 9),
(1170, b'0', 'Telsen', 7),
(1171, b'0', 'Pilcaniyeu', 9),
(1172, b'0', 'Adolfo Alsina', 1),
(1173, b'0', 'General Alvear', 13),
(1174, b'0', 'La Caldera', 4),
(1175, b'0', 'Sargento Cabral', 5),
(1176, b'0', 'Pellegrini', 1),
(1177, b'0', 'Aluminé', 16),
(1178, b'0', 'Iruya', 4),
(1179, b'0', 'Lácar', 16),
(1180, b'0', 'Fray Mamerto Esquiú', 10),
(1181, b'0', 'Valle Viejo', 10),
(1182, b'0', 'San Cosme', 3),
(1183, b'0', 'Sarmiento', 7),
(1184, b'0', 'Comuna 1', 2),
(1185, b'0', 'Comuna 4', 2),
(1186, b'0', 'El Cuy', 9),
(1187, b'0', 'Las Heras', 13),
(1188, b'0', 'Tapenagá', 5),
(1189, b'0', 'Lavalle', 13),
(1190, b'0', 'Malargüe', 13),
(1191, b'0', 'Presidente Roque Sáenz Peña', 12),
(1192, b'0', 'Catán Lil', 16),
(1193, b'0', 'Presidencia de la Plaza', 5),
(1194, b'0', 'Comuna 5', 2),
(1195, b'0', 'Esquina', 3),
(1196, b'0', 'Ushuaia', 17),
(1197, b'0', 'Antofagasta de la Sierra', 10),
(1198, b'0', 'Ensenada', 1),
(1199, b'0', 'Capital', 18),
(1200, b'0', 'Belgrano', 19),
(1201, b'0', 'Pergamino', 1),
(1202, b'0', 'Puán', 1),
(1203, b'0', 'General Villegas', 1),
(1204, b'0', 'Comuna 12', 2),
(1205, b'0', 'General Obligado', 19),
(1206, b'0', 'Vera', 19),
(1207, b'0', '9 de Julio', 19),
(1208, b'0', 'Adolfo Alsina', 9),
(1209, b'0', 'Quitilipi', 5),
(1210, b'0', 'Güer Aike', 8),
(1211, b'0', 'Capayán', 10),
(1212, b'0', 'Burruyacú', 18),
(1213, b'0', 'San Jerónimo', 19),
(1214, b'0', 'Independencia', 5),
(1215, b'0', 'Curuzú Cuatiá', 3),
(1216, b'0', 'Luján de Cuyo', 13),
(1217, b'0', 'Tinogasta', 10),
(1218, b'0', 'Comuna 7', 2),
(1219, b'0', 'Hucal', 20),
(1220, b'0', 'Itatí', 3),
(1221, b'0', 'Comuna 10', 2),
(1222, b'0', 'Caleu Caleu', 20),
(1223, b'0', 'Lihuel Calel', 20),
(1224, b'0', 'Curacó', 20),
(1225, b'0', 'Confluencia', 16),
(1226, b'0', 'Picunches', 16),
(1227, b'0', 'Añelo', 16),
(1228, b'0', 'Loncopué', 16),
(1229, b'0', 'Ñorquín', 16),
(1230, b'0', 'Pehuenches', 16),
(1231, b'0', 'Comuna 11', 2),
(1232, b'0', 'Montecarlo', 21),
(1233, b'0', 'Eldorado', 21),
(1234, b'0', 'San Pedro', 21),
(1235, b'0', 'Antártida Argentina', 17),
(1236, b'0', 'Minas', 16),
(1237, b'0', 'Chos Malal', 16),
(1238, b'0', 'Cushamen', 7),
(1239, b'0', 'Lago Buenos Aires', 8),
(1240, b'0', 'Pichi Mahuida', 9),
(1241, b'0', 'San Martín', 22),
(1242, b'0', 'Yavi', 15),
(1243, b'0', 'Santa Catalina', 15),
(1244, b'0', 'San Pedro', 15),
(1245, b'0', 'Valle Grande', 15),
(1246, b'0', 'Patiño', 14),
(1247, b'0', 'Bermejo', 14),
(1248, b'0', 'Susques', 15),
(1249, b'0', 'Matacos', 14),
(1250, b'0', 'Los Andes', 4),
(1251, b'0', 'Orán', 4),
(1252, b'0', 'Tilcara', 15),
(1253, b'0', 'Palpalá', 15),
(1254, b'0', 'Loventué', 20),
(1255, b'0', 'Río Senguer', 7),
(1256, b'0', 'Bariloche', 9),
(1257, b'0', 'Huiliches', 16),
(1258, b'0', 'Limay Mahuida', 20),
(1259, b'0', 'Puelén', 20),
(1260, b'0', 'Chalileo', 20),
(1261, b'0', 'Chical Co', 20),
(1262, b'0', 'Quebrachos', 22),
(1263, b'0', 'Monte Caseros', 3),
(1264, b'0', 'Mayor Luis J. Fontana', 5),
(1265, b'0', 'Fray Justo Santa María de Oro', 5),
(1266, b'0', 'General Belgrano', 6),
(1267, b'0', 'Las Colonias', 19),
(1268, b'0', 'San Justo', 19),
(1269, b'0', 'San Cristóbal', 19),
(1270, b'0', 'San Javier', 19),
(1271, b'0', 'Chapaleufú', 20),
(1272, b'0', 'Realicó', 20),
(1273, b'0', 'Maracó', 20),
(1274, b'0', 'Trenel', 20),
(1275, b'0', 'Copo', 22),
(1276, b'0', 'Capital', 20),
(1277, b'0', 'Santa Bárbara', 15),
(1278, b'0', 'Almirante Brown', 5),
(1279, b'0', 'Rosario de la Frontera', 4),
(1280, b'0', 'Collón Curá', 16),
(1281, b'0', 'Comuna 3', 2),
(1282, b'0', 'San Fernando', 1),
(1283, b'0', 'Tigre', 1),
(1284, b'0', 'Santa María', 10),
(1285, b'0', 'Santa Rosa', 10),
(1286, b'0', 'La Paz', 10),
(1287, b'0', 'Río Hondo', 22),
(1288, b'0', 'Vinchina', 6),
(1289, b'0', 'Capital', 6),
(1290, b'0', 'Río Seco', 12),
(1291, b'0', 'Avellaneda', 9),
(1292, b'0', 'General Roca', 9),
(1293, b'0', 'Belgrano', 11),
(1294, b'0', 'Los Lagos', 16),
(1295, b'0', 'Capital', 10),
(1296, b'0', 'Ancasti', 10),
(1297, b'0', 'Pomán', 10),
(1298, b'0', 'Comuna 2', 2),
(1299, b'0', '9 de Julio', 5),
(1300, b'0', 'Pocho', 12),
(1301, b'0', 'Ezeiza', 1),
(1302, b'0', 'Andalgalá', 10),
(1303, b'0', 'Ambato', 10),
(1304, b'0', 'Comuna 8', 2),
(1305, b'0', 'Guasayán', 22),
(1306, b'0', 'Paclín', 10),
(1307, b'0', 'El Alto', 10),
(1308, b'0', 'Sobremonte', 12),
(1309, b'0', 'Río Grande', 17),
(1310, b'0', 'Comuna 13', 2),
(1311, b'0', 'Banda', 22),
(1312, b'0', 'Paso de Indios', 7),
(1313, b'0', 'Capital', 12),
(1314, b'0', 'Mártires', 7),
(1315, b'0', 'Sarmiento', 22),
(1316, b'0', 'Deseado', 8),
(1317, b'0', 'Languiñeo', 7),
(1318, b'0', 'Belgrano', 22),
(1319, b'0', 'Aguirre', 22),
(1320, b'0', 'Maipú', 5),
(1321, b'0', 'San Carlos', 13),
(1322, b'0', 'Tunuyán', 13),
(1323, b'0', 'Robles', 22),
(1324, b'0', 'Loreto', 22),
(1325, b'0', 'Catriló', 20),
(1326, b'0', 'Capital', 22),
(1327, b'0', 'Comuna 14', 2),
(1328, b'0', 'Colón', 23),
(1329, b'0', 'Villaguay', 23),
(1330, b'0', 'Castelli', 1),
(1331, b'0', 'San Salvador', 23),
(1332, b'0', 'Belén', 10),
(1333, b'0', 'Almirante Brown', 1),
(1334, b'0', 'Nogoyá', 23),
(1335, b'0', 'Tala', 23),
(1336, b'0', 'Gualeguay', 23),
(1337, b'0', 'Federación', 23),
(1338, b'0', 'La Paz', 23),
(1339, b'0', 'Feliciano', 23),
(1340, b'0', 'Presidente Perón', 1),
(1341, b'0', 'Junín', 1),
(1342, b'0', 'Brandsen', 1),
(1343, b'0', 'Chivilcoy', 1),
(1344, b'0', 'Alberti', 1),
(1345, b'0', 'Bragado', 1),
(1346, b'0', 'General Las Heras', 1),
(1347, b'0', 'Carlos Casares', 1),
(1348, b'0', 'Marcos Paz', 1),
(1349, b'0', 'General Viamonte', 1),
(1350, b'0', 'Carlos Tejedor', 1),
(1351, b'0', '25 de Mayo', 1),
(1352, b'0', '9 de Julio', 1),
(1353, b'0', 'Pehuajó', 1),
(1354, b'0', 'Tapalqué', 1),
(1355, b'0', 'Trenque Lauquen', 1),
(1356, b'0', 'General Belgrano', 1),
(1357, b'0', 'Monte', 1),
(1358, b'0', 'Roque Pérez', 1),
(1359, b'0', 'Olavarría', 1),
(1360, b'0', 'Merlo', 1),
(1361, b'0', 'Cainguás', 21),
(1362, b'0', 'Islas del Atlántico Sur', 17),
(1363, b'0', 'Esteban Echeverría', 1),
(1364, b'0', 'Arrecifes', 1),
(1365, b'0', 'Capitán Sarmiento', 1),
(1366, b'0', 'Dr. Manuel Belgrano', 15),
(1367, b'0', 'Carmen de Areco', 1),
(1368, b'0', 'Salto', 1),
(1369, b'0', 'Exaltación de la Cruz', 1),
(1370, b'0', 'San Miguel', 1),
(1371, b'0', 'San Andrés de Giles', 1),
(1372, b'0', 'Mercedes', 1),
(1373, b'0', 'Pilar', 1),
(1374, b'0', 'Luján', 1),
(1375, b'0', 'Famaillá', 18),
(1376, b'0', 'Hurlingham', 1),
(1377, b'0', 'Morón', 1),
(1378, b'0', 'Chacabuco', 1),
(1379, b'0', 'Junín', 13),
(1380, b'0', 'Malvinas Argentinas', 1),
(1381, b'0', 'Tres Lomas', 1),
(1382, b'0', 'Ayacucho', 1),
(1383, b'0', 'Guaminí', 1),
(1384, b'0', 'General San Martín', 1),
(1385, b'0', 'Lincoln', 1),
(1386, b'0', 'Laprida', 1),
(1387, b'0', 'San Isidro', 1),
(1388, b'0', 'Benito Juárez', 1),
(1389, b'0', 'Colón', 1),
(1390, b'0', 'Ituzaingó', 1),
(1391, b'0', 'General Rodríguez', 1),
(1392, b'0', 'Suipacha', 1),
(1393, b'0', 'Tres de Febrero', 1),
(1394, b'0', 'General Felipe Varela', 6),
(1395, b'0', 'Florencio Varela', 1),
(1396, b'0', 'Navarro', 1),
(1397, b'0', 'Cañuelas', 1),
(1398, b'0', 'Moreno', 22),
(1399, b'0', 'Chacabuco', 5),
(1400, b'0', 'San Vicente', 1),
(1401, b'0', 'Lobos', 1),
(1402, b'0', 'General Alvear', 1),
(1403, b'0', 'Quilmes', 1),
(1404, b'0', 'Pila', 1),
(1405, b'0', 'General La Madrid', 1),
(1406, b'0', 'Bolívar', 1),
(1407, b'0', 'Castro Barros', 6),
(1408, b'0', 'Balcarce', 1),
(1409, b'0', 'Hipólito Yrigoyen', 1),
(1410, b'0', 'Capital', 13),
(1411, b'0', 'Dolores', 1),
(1412, b'0', 'Azul', 1),
(1413, b'0', 'Daireaux', 1),
(1414, b'0', 'Godoy Cruz', 13),
(1415, b'0', 'Cafayate', 4),
(1416, b'0', 'Figueroa', 22),
(1417, b'0', 'Saavedra', 1),
(1418, b'0', 'Monte Hermoso', 1),
(1419, b'0', 'Lobería', 1),
(1420, b'0', 'Berisso', 1),
(1421, b'0', 'Tordillo', 1),
(1422, b'0', 'Zárate', 1),
(1423, b'0', 'Ramallo', 1),
(1424, b'0', 'San Nicolás', 1),
(1425, b'0', 'Salavina', 22),
(1426, b'0', 'Pellegrini', 22),
(1427, b'0', 'Avellaneda', 22),
(1428, b'0', '2 de Abril', 5),
(1429, b'0', 'Guaymallén', 13),
(1430, b'0', 'Juárez Celman', 12),
(1431, b'0', 'Capital', 4),
(1432, b'0', 'Silípica', 22),
(1433, b'0', 'La Candelaria', 4),
(1434, b'0', 'Rancul', 20),
(1435, b'0', 'Maipú', 13),
(1436, b'0', 'Guachipas', 4),
(1437, b'0', 'Atreucó', 20),
(1438, b'0', 'San Martín', 13),
(1439, b'0', 'Guatraché', 20),
(1440, b'0', 'Sanagasta', 6),
(1441, b'0', 'Conhelo', 20),
(1442, b'0', 'Libertador General San Martín', 21),
(1443, b'0', 'Rosario Vera Peñaloza', 6),
(1444, b'0', 'San Miguel', 3),
(1445, b'0', 'General Juan Facundo Quiroga', 6),
(1446, b'0', 'Ángel Vicente Peñaloza', 6),
(1447, b'0', 'Empedrado', 3),
(1448, b'0', 'Chilecito', 6),
(1449, b'0', 'Toay', 20),
(1450, b'0', 'Colón', 12),
(1451, b'0', 'Ituzaingó', 3),
(1452, b'0', 'Famatina', 6),
(1453, b'0', 'General López', 19),
(1454, b'0', 'Constitución', 19),
(1455, b'0', 'Caseros', 19),
(1456, b'0', 'Rosario', 19),
(1457, b'0', 'San Lorenzo', 19),
(1458, b'0', 'Iriondo', 19),
(1459, b'0', 'Lanús', 1),
(1460, b'0', 'General San Martín', 6),
(1461, b'0', 'San Blas de Los Sauces', 6),
(1462, b'0', 'San Antonio', 15),
(1463, b'0', 'Rinconada', 15),
(1464, b'0', 'Ramón Lista', 14),
(1465, b'0', 'La Poma', 4),
(1466, b'0', 'Biedma', 7),
(1467, b'0', 'Capital', 3),
(1468, b'0', 'San Luis del Palmar', 3),
(1469, b'0', 'Formosa', 14),
(1470, b'0', 'Pilcomayo', 14),
(1471, b'0', 'Tehuelches', 7),
(1472, b'0', 'Escalante', 7),
(1473, b'0', 'Ischilín', 12),
(1474, b'0', 'Totoral', 12),
(1475, b'0', 'General San Martín', 12),
(1476, b'0', 'San Javier', 12),
(1477, b'0', 'Río Primero', 12),
(1478, b'0', 'Marcos Juárez', 12),
(1479, b'0', 'General Donovan', 5),
(1480, b'0', 'Leandro N. Alem', 1),
(1481, b'0', 'Libertador General San Martín', 5),
(1482, b'0', 'Gastre', 7),
(1483, b'0', 'General Arenales', 1),
(1484, b'0', 'Bermejo', 5),
(1485, b'0', 'Calamuchita', 12),
(1486, b'0', 'Cruz Alta', 18),
(1487, b'0', 'Lules', 18),
(1488, b'0', 'Yerba Buena', 18),
(1489, b'0', 'Tafí Viejo', 18),
(1490, b'0', 'Libertador General San Martín', 11),
(1491, b'0', 'Coronel Pringles', 11),
(1492, b'0', 'Chacabuco', 11),
(1493, b'0', 'Rivadavia', 1),
(1494, b'0', 'Patagones', 1),
(1495, b'0', 'Juan Martín de Pueyrredón', 11),
(1496, b'0', 'General Pedernera', 11),
(1497, b'0', 'Trancas', 18),
(1498, b'0', 'Tafí del Valle', 18),
(1499, b'0', 'Comuna 9', 2),
(1500, b'0', 'Junín', 11),
(1501, b'0', 'Mitre', 22),
(1502, b'0', 'Atamisqui', 22),
(1503, b'0', 'Berón de Astrada', 3),
(1504, b'0', 'Tolhuin', 17),
(1505, b'0', 'Capital', 21),
(1506, b'0', 'Candelaria', 21),
(1507, b'0', 'Jiménez', 22),
(1508, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(1509, b'0', 'Baradero', 1),
(1510, b'0', 'San Pedro', 1),
(1511, b'0', 'Santa Victoria', 4),
(1512, b'0', 'General José de San Martín', 4),
(1513, b'0', 'Rivadavia', 4),
(1514, b'0', 'Rosario de Lerma', 4),
(1515, b'0', 'Ledesma', 15),
(1516, b'0', 'Humahuaca', 15),
(1517, b'0', 'Cochinoca', 15),
(1518, b'0', 'Tumbaya', 15),
(1519, b'0', 'Florentino Ameghino', 1),
(1520, b'0', 'Florentino Ameghino', 7),
(1521, b'0', 'La Cocha', 18),
(1522, b'0', 'Graneros', 18),
(1523, b'0', 'Juan Bautista Alberdi', 18),
(1524, b'0', 'Río Chico', 18),
(1525, b'0', 'Simoca', 18),
(1526, b'0', 'Chicligasta', 18),
(1527, b'0', 'Monteros', 18),
(1528, b'0', 'Leales', 18),
(1529, b'0', 'San Martín', 19),
(1530, b'0', 'La Capital', 19),
(1531, b'0', 'General Manuel Belgrano', 21),
(1532, b'0', 'Guaraní', 21),
(1533, b'0', 'Iguazú', 21),
(1534, b'0', '25 de Mayo', 21),
(1535, b'0', 'Oberá', 21),
(1536, b'0', 'Castellanos', 19),
(1537, b'0', 'Garay', 19),
(1538, b'0', 'Quemú Quemú', 20),
(1539, b'0', 'San Ignacio', 21),
(1540, b'0', 'Utracán', 20),
(1541, b'0', 'San Martín', 3),
(1542, b'0', 'Paso de los Libres', 3),
(1543, b'0', 'Goya', 3),
(1544, b'0', 'Lavalle', 3),
(1545, b'0', 'San Roque', 3),
(1546, b'0', 'General Alvear', 3),
(1547, b'0', 'Concepción', 3),
(1548, b'0', 'Bella Vista', 3),
(1549, b'0', 'Santo Tomé', 3),
(1550, b'0', 'Saladas', 3),
(1551, b'0', 'General Paz', 3),
(1552, b'0', 'Leandro N. Alem', 21),
(1553, b'0', 'San Javier', 21),
(1554, b'0', 'Mburucuyá', 3),
(1555, b'0', 'Concepción', 21),
(1556, b'0', 'Apóstoles', 21),
(1557, b'0', '1° de Mayo', 5),
(1558, b'0', 'San Fernando', 5),
(1559, b'0', 'San Lorenzo', 5),
(1560, b'0', 'Lomas de Zamora', 1),
(1561, b'0', 'Avellaneda', 1),
(1562, b'0', '25 de Mayo', 5),
(1563, b'0', 'General Belgrano', 5),
(1564, b'0', 'Libertad', 5),
(1565, b'0', 'Comandante Fernández', 5),
(1566, b'0', 'Comuna 15', 2),
(1567, b'0', 'Chimbas', 24),
(1568, b'0', 'Capital', 24),
(1569, b'0', 'Rivadavia', 24),
(1570, b'0', '9 de Julio', 24),
(1571, b'0', 'Albardón', 24),
(1572, b'0', 'Angaco', 24),
(1573, b'0', 'Santa Lucía', 24),
(1574, b'0', 'Rawson', 24),
(1575, b'0', '25 de Mayo', 24),
(1576, b'0', 'San Martín', 24),
(1577, b'0', 'Pocito', 24),
(1578, b'0', 'Zonda', 24),
(1579, b'0', 'Ullum', 24),
(1580, b'0', 'Sarmiento', 24),
(1581, b'0', 'Calingasta', 24),
(1582, b'0', 'Iglesia', 24),
(1583, b'0', 'Jáchal', 24),
(1584, b'0', 'Valle Fértil', 24),
(1585, b'0', 'Caucete', 24),
(1586, b'0', 'La Plata', 1),
(1587, b'0', 'Mercedes', 3),
(1588, b'0', 'Adolfo Gonzales Chaves', 1),
(1589, b'0', 'Concordia', 23),
(1590, b'0', 'Federal', 23),
(1591, b'0', 'Gualeguaychú', 23),
(1592, b'0', 'Islas del Ibicuy', 23),
(1593, b'0', 'Victoria', 23),
(1594, b'0', 'Diamante', 23),
(1595, b'0', 'Uruguay', 23),
(1596, b'0', 'Paraná', 23),
(1597, b'0', 'Saladillo', 1),
(1598, b'0', 'Las Flores', 1),
(1599, b'0', 'Rojas', 1),
(1600, b'0', 'Escobar', 1),
(1601, b'0', 'José C. Paz', 1),
(1602, b'0', 'Bahía Blanca', 1),
(1603, b'0', 'San Antonio de Areco', 1),
(1604, b'0', 'Maipú', 1),
(1605, b'0', 'General Alvarado', 1),
(1606, b'0', 'General Pueyrredón', 1),
(1607, b'0', 'Mar Chiquita', 1),
(1608, b'0', 'Villa Gesell', 1),
(1609, b'0', 'Pinamar', 1),
(1610, b'0', 'General Lavalle', 1),
(1611, b'0', 'La Costa', 1),
(1612, b'0', 'Magdalena', 1),
(1613, b'0', 'Sauce', 3),
(1614, b'0', 'Vicente López', 1),
(1615, b'0', 'La Viña', 4),
(1616, b'0', 'Rauch', 1),
(1617, b'0', 'Metán', 4),
(1618, b'0', 'Molinos', 4),
(1619, b'0', 'O\'Higgins', 5),
(1620, b'0', 'Moreno', 1),
(1621, b'0', 'La Matanza', 1),
(1622, b'0', 'Tandil', 1),
(1623, b'0', 'Coronel Suárez', 1),
(1624, b'0', 'Chamical', 6),
(1625, b'0', 'Futaleufú', 7),
(1626, b'0', 'Río Chico', 8),
(1627, b'0', 'San Antonio', 9),
(1628, b'0', 'Alberdi', 22),
(1629, b'0', 'Juan Felipe Ibarra', 22),
(1630, b'0', 'General Taboada', 22),
(1631, b'0', 'Salliqueló', 1),
(1632, b'0', 'Berazategui', 1),
(1633, b'0', 'General Güemes', 4),
(1634, b'0', 'San Carlos', 4),
(1635, b'0', 'General Paz', 1),
(1636, b'0', 'General Guido', 1),
(1637, b'0', 'General Juan Madariaga', 1),
(1638, b'0', 'Lago Argentino', 8),
(1639, b'0', 'Rivadavia', 22),
(1640, b'0', 'Ojo de Agua', 22),
(1641, b'0', 'Choya', 22),
(1642, b'0', 'Gobernador Dupuy', 11),
(1643, b'0', 'Cachi', 4),
(1644, b'0', 'Chicoana', 4),
(1645, b'0', 'Gaiman', 7),
(1646, b'0', 'Rawson', 7),
(1647, b'0', 'General Lamadrid', 6),
(1648, b'0', 'Ayacucho', 11),
(1649, b'0', '12 de Octubre', 5),
(1650, b'0', 'Tulumba', 12),
(1651, b'0', 'Cruz del Eje', 12),
(1652, b'0', 'Punilla', 12),
(1653, b'0', 'Comuna 6', 2),
(1654, b'0', 'Santa Rosa', 13),
(1655, b'0', 'General Güemes', 5),
(1656, b'0', 'General Ortiz de Ocampo', 6),
(1657, b'0', 'General Roca', 12),
(1658, b'0', 'Pilagás', 14),
(1659, b'0', 'Laishi', 14),
(1660, b'0', 'Rivadavia', 13),
(1661, b'0', 'Tornquist', 1),
(1662, b'0', 'La Paz', 13),
(1663, b'0', 'Coronel Pringles', 1),
(1664, b'0', 'Conesa', 9),
(1665, b'0', 'Villarino', 1),
(1666, b'0', 'Pirané', 14),
(1667, b'0', 'General Pinto', 1),
(1668, b'0', 'San Cayetano', 1),
(1669, b'0', 'Tres Arroyos', 1),
(1670, b'0', 'Coronel Dorrego', 1),
(1671, b'0', 'Necochea', 1),
(1672, b'0', 'Independencia', 6),
(1673, b'0', 'Chascomús', 1),
(1674, b'0', 'Punta Indio', 1),
(1675, b'0', 'El Carmen', 15),
(1676, b'0', 'Santa María', 12),
(1677, b'0', 'Valcheta', 9),
(1678, b'0', 'Arauco', 6),
(1679, b'0', 'Lezama', 1),
(1680, b'0', 'Campana', 1),
(1681, b'0', 'Magallanes', 8),
(1682, b'0', 'Corpen Aike', 8),
(1683, b'0', 'Minas', 12),
(1684, b'0', 'San Alberto', 12),
(1685, b'0', 'Río Segundo', 12),
(1686, b'0', 'San Justo', 12),
(1687, b'0', 'Unión', 12),
(1688, b'0', 'Tercero Arriba', 12),
(1689, b'0', 'Cerrillos', 4),
(1690, b'0', 'Río Cuarto', 12),
(1691, b'0', 'Tupungato', 13),
(1692, b'0', '9 de Julio', 9),
(1693, b'0', 'Ñorquinco', 9),
(1694, b'0', 'San Rafael', 13),
(1695, b'0', 'Anta', 4),
(1696, b'0', 'Picún Leufú', 16),
(1697, b'0', 'Zapala', 16),
(1698, b'0', '25 de Mayo', 9),
(1699, b'0', 'Telsen', 7),
(1700, b'0', 'Pilcaniyeu', 9),
(1701, b'0', 'Adolfo Alsina', 1),
(1702, b'0', 'General Alvear', 13),
(1703, b'0', 'La Caldera', 4),
(1704, b'0', 'Sargento Cabral', 5),
(1705, b'0', 'Pellegrini', 1),
(1706, b'0', 'Aluminé', 16),
(1707, b'0', 'Iruya', 4),
(1708, b'0', 'Lácar', 16),
(1709, b'0', 'Fray Mamerto Esquiú', 10),
(1710, b'0', 'Valle Viejo', 10),
(1711, b'0', 'San Cosme', 3),
(1712, b'0', 'Sarmiento', 7),
(1713, b'0', 'Comuna 1', 2),
(1714, b'0', 'Comuna 4', 2),
(1715, b'0', 'El Cuy', 9),
(1716, b'0', 'Las Heras', 13),
(1717, b'0', 'Tapenagá', 5),
(1718, b'0', 'Lavalle', 13),
(1719, b'0', 'Malargüe', 13),
(1720, b'0', 'Presidente Roque Sáenz Peña', 12),
(1721, b'0', 'Catán Lil', 16),
(1722, b'0', 'Presidencia de la Plaza', 5),
(1723, b'0', 'Comuna 5', 2),
(1724, b'0', 'Esquina', 3),
(1725, b'0', 'Ushuaia', 17);
INSERT INTO `localidad` (`id`, `eliminado`, `nombre`, `provincia_id`) VALUES
(1726, b'0', 'Antofagasta de la Sierra', 10),
(1727, b'0', 'Ensenada', 1),
(1728, b'0', 'Capital', 18),
(1729, b'0', 'Belgrano', 19),
(1730, b'0', 'Pergamino', 1),
(1731, b'0', 'Puán', 1),
(1732, b'0', 'General Villegas', 1),
(1733, b'0', 'Comuna 12', 2),
(1734, b'0', 'General Obligado', 19),
(1735, b'0', 'Vera', 19),
(1736, b'0', '9 de Julio', 19),
(1737, b'0', 'Adolfo Alsina', 9),
(1738, b'0', 'Quitilipi', 5),
(1739, b'0', 'Güer Aike', 8),
(1740, b'0', 'Capayán', 10),
(1741, b'0', 'Burruyacú', 18),
(1742, b'0', 'San Jerónimo', 19),
(1743, b'0', 'Independencia', 5),
(1744, b'0', 'Curuzú Cuatiá', 3),
(1745, b'0', 'Luján de Cuyo', 13),
(1746, b'0', 'Tinogasta', 10),
(1747, b'0', 'Comuna 7', 2),
(1748, b'0', 'Hucal', 20),
(1749, b'0', 'Itatí', 3),
(1750, b'0', 'Comuna 10', 2),
(1751, b'0', 'Caleu Caleu', 20),
(1752, b'0', 'Lihuel Calel', 20),
(1753, b'0', 'Curacó', 20),
(1754, b'0', 'Confluencia', 16),
(1755, b'0', 'Picunches', 16),
(1756, b'0', 'Añelo', 16),
(1757, b'0', 'Loncopué', 16),
(1758, b'0', 'Ñorquín', 16),
(1759, b'0', 'Pehuenches', 16),
(1760, b'0', 'Comuna 11', 2),
(1761, b'0', 'Montecarlo', 21),
(1762, b'0', 'Eldorado', 21),
(1763, b'0', 'San Pedro', 21),
(1764, b'0', 'Antártida Argentina', 17),
(1765, b'0', 'Minas', 16),
(1766, b'0', 'Chos Malal', 16),
(1767, b'0', 'Cushamen', 7),
(1768, b'0', 'Lago Buenos Aires', 8),
(1769, b'0', 'Pichi Mahuida', 9),
(1770, b'0', 'San Martín', 22),
(1771, b'0', 'Yavi', 15),
(1772, b'0', 'Santa Catalina', 15),
(1773, b'0', 'San Pedro', 15),
(1774, b'0', 'Valle Grande', 15),
(1775, b'0', 'Patiño', 14),
(1776, b'0', 'Bermejo', 14),
(1777, b'0', 'Susques', 15),
(1778, b'0', 'Matacos', 14),
(1779, b'0', 'Los Andes', 4),
(1780, b'0', 'Orán', 4),
(1781, b'0', 'Tilcara', 15),
(1782, b'0', 'Palpalá', 15),
(1783, b'0', 'Loventué', 20),
(1784, b'0', 'Río Senguer', 7),
(1785, b'0', 'Bariloche', 9),
(1786, b'0', 'Huiliches', 16),
(1787, b'0', 'Limay Mahuida', 20),
(1788, b'0', 'Puelén', 20),
(1789, b'0', 'Chalileo', 20),
(1790, b'0', 'Chical Co', 20),
(1791, b'0', 'Quebrachos', 22),
(1792, b'0', 'Monte Caseros', 3),
(1793, b'0', 'Mayor Luis J. Fontana', 5),
(1794, b'0', 'Fray Justo Santa María de Oro', 5),
(1795, b'0', 'General Belgrano', 6),
(1796, b'0', 'Las Colonias', 19),
(1797, b'0', 'San Justo', 19),
(1798, b'0', 'San Cristóbal', 19),
(1799, b'0', 'San Javier', 19),
(1800, b'0', 'Chapaleufú', 20),
(1801, b'0', 'Realicó', 20),
(1802, b'0', 'Maracó', 20),
(1803, b'0', 'Trenel', 20),
(1804, b'0', 'Copo', 22),
(1805, b'0', 'Capital', 20),
(1806, b'0', 'Santa Bárbara', 15),
(1807, b'0', 'Almirante Brown', 5),
(1808, b'0', 'Rosario de la Frontera', 4),
(1809, b'0', 'Collón Curá', 16),
(1810, b'0', 'Comuna 3', 2),
(1811, b'0', 'San Fernando', 1),
(1812, b'0', 'Tigre', 1),
(1813, b'0', 'Santa María', 10),
(1814, b'0', 'Santa Rosa', 10),
(1815, b'0', 'La Paz', 10),
(1816, b'0', 'Río Hondo', 22),
(1817, b'0', 'Vinchina', 6),
(1818, b'0', 'Capital', 6),
(1819, b'0', 'Río Seco', 12),
(1820, b'0', 'Avellaneda', 9),
(1821, b'0', 'General Roca', 9),
(1822, b'0', 'Belgrano', 11),
(1823, b'0', 'Los Lagos', 16),
(1824, b'0', 'Capital', 10),
(1825, b'0', 'Ancasti', 10),
(1826, b'0', 'Pomán', 10),
(1827, b'0', 'Comuna 2', 2),
(1828, b'0', '9 de Julio', 5),
(1829, b'0', 'Pocho', 12),
(1830, b'0', 'Ezeiza', 1),
(1831, b'0', 'Andalgalá', 10),
(1832, b'0', 'Ambato', 10),
(1833, b'0', 'Comuna 8', 2),
(1834, b'0', 'Guasayán', 22),
(1835, b'0', 'Paclín', 10),
(1836, b'0', 'El Alto', 10),
(1837, b'0', 'Sobremonte', 12),
(1838, b'0', 'Río Grande', 17),
(1839, b'0', 'Comuna 13', 2),
(1840, b'0', 'Banda', 22),
(1841, b'0', 'Paso de Indios', 7),
(1842, b'0', 'Capital', 12),
(1843, b'0', 'Mártires', 7),
(1844, b'0', 'Sarmiento', 22),
(1845, b'0', 'Deseado', 8),
(1846, b'0', 'Languiñeo', 7),
(1847, b'0', 'Belgrano', 22),
(1848, b'0', 'Aguirre', 22),
(1849, b'0', 'Maipú', 5),
(1850, b'0', 'San Carlos', 13),
(1851, b'0', 'Tunuyán', 13),
(1852, b'0', 'Robles', 22),
(1853, b'0', 'Loreto', 22),
(1854, b'0', 'Catriló', 20),
(1855, b'0', 'Capital', 22),
(1856, b'0', 'Comuna 14', 2),
(1857, b'0', 'Colón', 23),
(1858, b'0', 'Villaguay', 23),
(1859, b'0', 'Castelli', 1),
(1860, b'0', 'San Salvador', 23),
(1861, b'0', 'Belén', 10),
(1862, b'0', 'Almirante Brown', 1),
(1863, b'0', 'Nogoyá', 23),
(1864, b'0', 'Tala', 23),
(1865, b'0', 'Gualeguay', 23),
(1866, b'0', 'Federación', 23),
(1867, b'0', 'La Paz', 23),
(1868, b'0', 'Feliciano', 23),
(1869, b'0', 'Presidente Perón', 1),
(1870, b'0', 'Junín', 1),
(1871, b'0', 'Brandsen', 1),
(1872, b'0', 'Chivilcoy', 1),
(1873, b'0', 'Alberti', 1),
(1874, b'0', 'Bragado', 1),
(1875, b'0', 'General Las Heras', 1),
(1876, b'0', 'Carlos Casares', 1),
(1877, b'0', 'Marcos Paz', 1),
(1878, b'0', 'General Viamonte', 1),
(1879, b'0', 'Carlos Tejedor', 1),
(1880, b'0', '25 de Mayo', 1),
(1881, b'0', '9 de Julio', 1),
(1882, b'0', 'Pehuajó', 1),
(1883, b'0', 'Tapalqué', 1),
(1884, b'0', 'Trenque Lauquen', 1),
(1885, b'0', 'General Belgrano', 1),
(1886, b'0', 'Monte', 1),
(1887, b'0', 'Roque Pérez', 1),
(1888, b'0', 'Olavarría', 1),
(1889, b'0', 'Merlo', 1),
(1890, b'0', 'Cainguás', 21),
(1891, b'0', 'Islas del Atlántico Sur', 17),
(1892, b'0', 'Esteban Echeverría', 1),
(1893, b'0', 'Arrecifes', 1),
(1894, b'0', 'Capitán Sarmiento', 1),
(1895, b'0', 'Dr. Manuel Belgrano', 15),
(1896, b'0', 'Carmen de Areco', 1),
(1897, b'0', 'Salto', 1),
(1898, b'0', 'Exaltación de la Cruz', 1),
(1899, b'0', 'San Miguel', 1),
(1900, b'0', 'San Andrés de Giles', 1),
(1901, b'0', 'Mercedes', 1),
(1902, b'0', 'Pilar', 1),
(1903, b'0', 'Luján', 1),
(1904, b'0', 'Famaillá', 18),
(1905, b'0', 'Hurlingham', 1),
(1906, b'0', 'Morón', 1),
(1907, b'0', 'Chacabuco', 1),
(1908, b'0', 'Junín', 13),
(1909, b'0', 'Malvinas Argentinas', 1),
(1910, b'0', 'Tres Lomas', 1),
(1911, b'0', 'Ayacucho', 1),
(1912, b'0', 'Guaminí', 1),
(1913, b'0', 'General San Martín', 1),
(1914, b'0', 'Lincoln', 1),
(1915, b'0', 'Laprida', 1),
(1916, b'0', 'San Isidro', 1),
(1917, b'0', 'Benito Juárez', 1),
(1918, b'0', 'Colón', 1),
(1919, b'0', 'Ituzaingó', 1),
(1920, b'0', 'General Rodríguez', 1),
(1921, b'0', 'Suipacha', 1),
(1922, b'0', 'Tres de Febrero', 1),
(1923, b'0', 'General Felipe Varela', 6),
(1924, b'0', 'Florencio Varela', 1),
(1925, b'0', 'Navarro', 1),
(1926, b'0', 'Cañuelas', 1),
(1927, b'0', 'Moreno', 22),
(1928, b'0', 'Chacabuco', 5),
(1929, b'0', 'San Vicente', 1),
(1930, b'0', 'Lobos', 1),
(1931, b'0', 'General Alvear', 1),
(1932, b'0', 'Quilmes', 1),
(1933, b'0', 'Pila', 1),
(1934, b'0', 'General La Madrid', 1),
(1935, b'0', 'Bolívar', 1),
(1936, b'0', 'Castro Barros', 6),
(1937, b'0', 'Balcarce', 1),
(1938, b'0', 'Hipólito Yrigoyen', 1),
(1939, b'0', 'Capital', 13),
(1940, b'0', 'Dolores', 1),
(1941, b'0', 'Azul', 1),
(1942, b'0', 'Daireaux', 1),
(1943, b'0', 'Godoy Cruz', 13),
(1944, b'0', 'Cafayate', 4),
(1945, b'0', 'Figueroa', 22),
(1946, b'0', 'Saavedra', 1),
(1947, b'0', 'Monte Hermoso', 1),
(1948, b'0', 'Lobería', 1),
(1949, b'0', 'Berisso', 1),
(1950, b'0', 'Tordillo', 1),
(1951, b'0', 'Zárate', 1),
(1952, b'0', 'Ramallo', 1),
(1953, b'0', 'San Nicolás', 1),
(1954, b'0', 'Salavina', 22),
(1955, b'0', 'Pellegrini', 22),
(1956, b'0', 'Avellaneda', 22),
(1957, b'0', '2 de Abril', 5),
(1958, b'0', 'Guaymallén', 13),
(1959, b'0', 'Juárez Celman', 12),
(1960, b'0', 'Capital', 4),
(1961, b'0', 'Silípica', 22),
(1962, b'0', 'La Candelaria', 4),
(1963, b'0', 'Rancul', 20),
(1964, b'0', 'Maipú', 13),
(1965, b'0', 'Guachipas', 4),
(1966, b'0', 'Atreucó', 20),
(1967, b'0', 'San Martín', 13),
(1968, b'0', 'Guatraché', 20),
(1969, b'0', 'Sanagasta', 6),
(1970, b'0', 'Conhelo', 20),
(1971, b'0', 'Libertador General San Martín', 21),
(1972, b'0', 'Rosario Vera Peñaloza', 6),
(1973, b'0', 'San Miguel', 3),
(1974, b'0', 'General Juan Facundo Quiroga', 6),
(1975, b'0', 'Ángel Vicente Peñaloza', 6),
(1976, b'0', 'Empedrado', 3),
(1977, b'0', 'Chilecito', 6),
(1978, b'0', 'Toay', 20),
(1979, b'0', 'Colón', 12),
(1980, b'0', 'Ituzaingó', 3),
(1981, b'0', 'Famatina', 6),
(1982, b'0', 'General López', 19),
(1983, b'0', 'Constitución', 19),
(1984, b'0', 'Caseros', 19),
(1985, b'0', 'Rosario', 19),
(1986, b'0', 'San Lorenzo', 19),
(1987, b'0', 'Iriondo', 19),
(1988, b'0', 'Lanús', 1),
(1989, b'0', 'General San Martín', 6),
(1990, b'0', 'San Blas de Los Sauces', 6),
(1991, b'0', 'San Antonio', 15),
(1992, b'0', 'Rinconada', 15),
(1993, b'0', 'Ramón Lista', 14),
(1994, b'0', 'La Poma', 4),
(1995, b'0', 'Biedma', 7),
(1996, b'0', 'Capital', 3),
(1997, b'0', 'San Luis del Palmar', 3),
(1998, b'0', 'Formosa', 14),
(1999, b'0', 'Pilcomayo', 14),
(2000, b'0', 'Tehuelches', 7),
(2001, b'0', 'Escalante', 7),
(2002, b'0', 'Ischilín', 12),
(2003, b'0', 'Totoral', 12),
(2004, b'0', 'General San Martín', 12),
(2005, b'0', 'San Javier', 12),
(2006, b'0', 'Río Primero', 12),
(2007, b'0', 'Comuna 1', 2),
(2008, b'0', 'General Donovan', 5),
(2009, b'0', 'Leandro N. Alem', 1),
(2010, b'0', 'Libertador General San Martín', 5),
(2011, b'0', 'Gastre', 7),
(2012, b'0', 'General Arenales', 1),
(2013, b'0', 'Bermejo', 5),
(2014, b'0', 'Comuna 2', 2),
(2015, b'0', 'Cruz Alta', 18),
(2016, b'0', 'Lules', 18),
(2017, b'0', 'Yerba Buena', 18),
(2018, b'0', 'Tafí Viejo', 18),
(2019, b'0', 'Libertador General San Martín', 11),
(2020, b'0', 'Coronel Pringles', 11),
(2021, b'0', 'Comuna 3', 2),
(2022, b'0', 'Rivadavia', 1),
(2023, b'0', 'Patagones', 1),
(2024, b'0', 'Juan Martín de Pueyrredón', 11),
(2025, b'0', 'General Pedernera', 11),
(2026, b'0', 'Trancas', 18),
(2027, b'0', 'Tafí del Valle', 18),
(2028, b'0', 'Comuna 4', 2),
(2029, b'0', 'Junín', 11),
(2030, b'0', 'Mitre', 22),
(2031, b'0', 'Atamisqui', 22),
(2032, b'0', 'Berón de Astrada', 3),
(2033, b'0', 'Tolhuin', 17),
(2034, b'0', 'Capital', 21),
(2035, b'0', 'Comuna 5', 2),
(2036, b'0', 'Jiménez', 22),
(2037, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(2038, b'0', 'Baradero', 1),
(2039, b'0', 'San Pedro', 1),
(2040, b'0', 'Santa Victoria', 4),
(2041, b'0', 'General José de San Martín', 4),
(2042, b'0', 'Comuna 6', 2),
(2043, b'0', 'Rosario de Lerma', 4),
(2044, b'0', 'Ledesma', 15),
(2045, b'0', 'Humahuaca', 15),
(2046, b'0', 'Cochinoca', 15),
(2047, b'0', 'Tumbaya', 15),
(2048, b'0', 'Florentino Ameghino', 1),
(2049, b'0', 'Comuna 7', 2),
(2050, b'0', 'La Cocha', 18),
(2051, b'0', 'Graneros', 18),
(2052, b'0', 'Juan Bautista Alberdi', 18),
(2053, b'0', 'Río Chico', 18),
(2054, b'0', 'Simoca', 18),
(2055, b'0', 'Chicligasta', 18),
(2056, b'0', 'Comuna 8', 2),
(2057, b'0', 'Leales', 18),
(2058, b'0', 'San Martín', 19),
(2059, b'0', 'La Capital', 19),
(2060, b'0', 'General Manuel Belgrano', 21),
(2061, b'0', 'Guaraní', 21),
(2062, b'0', 'Iguazú', 21),
(2063, b'0', 'Comuna 9', 2),
(2064, b'0', 'Oberá', 21),
(2065, b'0', 'Castellanos', 19),
(2066, b'0', 'Garay', 19),
(2067, b'0', 'Quemú Quemú', 20),
(2068, b'0', 'San Ignacio', 21),
(2069, b'0', 'Utracán', 20),
(2070, b'0', 'Comuna 10', 2),
(2071, b'0', 'Paso de los Libres', 3),
(2072, b'0', 'Goya', 3),
(2073, b'0', 'Lavalle', 3),
(2074, b'0', 'San Roque', 3),
(2075, b'0', 'General Alvear', 3),
(2076, b'0', 'Concepción', 3),
(2077, b'0', 'Comuna 11', 2),
(2078, b'0', 'Santo Tomé', 3),
(2079, b'0', 'Saladas', 3),
(2080, b'0', 'General Paz', 3),
(2081, b'0', 'Leandro N. Alem', 21),
(2082, b'0', 'San Javier', 21),
(2083, b'0', 'Mburucuyá', 3),
(2084, b'0', 'Comuna 12', 2),
(2085, b'0', 'Apóstoles', 21),
(2086, b'0', '1° de Mayo', 5),
(2087, b'0', 'San Fernando', 5),
(2088, b'0', 'San Lorenzo', 5),
(2089, b'0', 'Lomas de Zamora', 1),
(2090, b'0', 'Avellaneda', 1),
(2091, b'0', 'Comuna 13', 2),
(2092, b'0', 'General Belgrano', 5),
(2093, b'0', 'Libertad', 5),
(2094, b'0', 'Comandante Fernández', 5),
(2095, b'0', 'Comuna 15', 2),
(2096, b'0', 'Chimbas', 24),
(2097, b'0', 'Capital', 24),
(2098, b'0', 'Comuna 14', 2),
(2099, b'0', '9 de Julio', 24),
(2100, b'0', 'Albardón', 24),
(2101, b'0', 'Angaco', 24),
(2102, b'0', 'Santa Lucía', 24),
(2103, b'0', 'Rawson', 24),
(2104, b'0', '25 de Mayo', 24),
(2105, b'0', 'Comuna 15', 2),
(2106, b'0', 'Pocito', 24),
(2107, b'0', 'Zonda', 24),
(2108, b'0', 'Ullum', 24),
(2109, b'0', 'Sarmiento', 24),
(2110, b'0', 'Calingasta', 24),
(2111, b'0', 'Iglesia', 24),
(2112, b'0', 'Jáchal', 24),
(2113, b'0', 'Valle Fértil', 24),
(2114, b'0', 'Caucete', 24),
(2115, b'0', 'La Plata', 1),
(2116, b'0', 'Mercedes', 3),
(2117, b'0', 'Adolfo Gonzales Chaves', 1),
(2118, b'0', 'Concordia', 23),
(2119, b'0', 'Federal', 23),
(2120, b'0', 'Gualeguaychú', 23),
(2121, b'0', 'Islas del Ibicuy', 23),
(2122, b'0', 'Victoria', 23),
(2123, b'0', 'Diamante', 23),
(2124, b'0', 'Uruguay', 23),
(2125, b'0', 'Paraná', 23),
(2126, b'0', 'Saladillo', 1),
(2127, b'0', 'Las Flores', 1),
(2128, b'0', 'Rojas', 1),
(2129, b'0', 'Escobar', 1),
(2130, b'0', 'José C. Paz', 1),
(2131, b'0', 'Bahía Blanca', 1),
(2132, b'0', 'San Antonio de Areco', 1),
(2133, b'0', 'Maipú', 1),
(2134, b'0', 'General Alvarado', 1),
(2135, b'0', 'General Pueyrredón', 1),
(2136, b'0', 'Mar Chiquita', 1),
(2137, b'0', 'Villa Gesell', 1),
(2138, b'0', 'Pinamar', 1),
(2139, b'0', 'General Lavalle', 1),
(2140, b'0', 'La Costa', 1),
(2141, b'0', 'Magdalena', 1),
(2142, b'0', 'Sauce', 3),
(2143, b'0', 'Vicente López', 1),
(2144, b'0', 'La Viña', 4),
(2145, b'0', 'Rauch', 1),
(2146, b'0', 'Metán', 4),
(2147, b'0', 'Molinos', 4),
(2148, b'0', 'O\'Higgins', 5),
(2149, b'0', 'Moreno', 1),
(2150, b'0', 'La Matanza', 1),
(2151, b'0', 'Tandil', 1),
(2152, b'0', 'Coronel Suárez', 1),
(2153, b'0', 'Chamical', 6),
(2154, b'0', 'Futaleufú', 7),
(2155, b'0', 'Río Chico', 8),
(2156, b'0', 'San Antonio', 9),
(2157, b'0', 'Alberdi', 22),
(2158, b'0', 'Juan Felipe Ibarra', 22),
(2159, b'0', 'General Taboada', 22),
(2160, b'0', 'Salliqueló', 1),
(2161, b'0', 'Berazategui', 1),
(2162, b'0', 'General Güemes', 4),
(2163, b'0', 'San Carlos', 4),
(2164, b'0', 'General Paz', 1),
(2165, b'0', 'General Guido', 1),
(2166, b'0', 'General Juan Madariaga', 1),
(2167, b'0', 'Lago Argentino', 8),
(2168, b'0', 'Rivadavia', 22),
(2169, b'0', 'Ojo de Agua', 22),
(2170, b'0', 'Choya', 22),
(2171, b'0', 'Gobernador Dupuy', 11),
(2172, b'0', 'Cachi', 4),
(2173, b'0', 'Chicoana', 4),
(2174, b'0', 'Gaiman', 7),
(2175, b'0', 'Rawson', 7),
(2176, b'0', 'General Lamadrid', 6),
(2177, b'0', 'Ayacucho', 11),
(2178, b'0', '12 de Octubre', 5),
(2179, b'0', 'Tulumba', 12),
(2180, b'0', 'Cruz del Eje', 12),
(2181, b'0', 'Punilla', 12),
(2182, b'0', 'Santa Rosa', 13),
(2183, b'0', 'General Güemes', 5),
(2184, b'0', 'General Ortiz de Ocampo', 6),
(2185, b'0', 'General Roca', 12),
(2186, b'0', 'Pilagás', 14),
(2187, b'0', 'Laishi', 14),
(2188, b'0', 'Rivadavia', 13),
(2189, b'0', 'Tornquist', 1),
(2190, b'0', 'La Paz', 13),
(2191, b'0', 'Coronel Pringles', 1),
(2192, b'0', 'Conesa', 9),
(2193, b'0', 'Villarino', 1),
(2194, b'0', 'Pirané', 14),
(2195, b'0', 'General Pinto', 1),
(2196, b'0', 'San Cayetano', 1),
(2197, b'0', 'Tres Arroyos', 1),
(2198, b'0', 'Coronel Dorrego', 1),
(2199, b'0', 'Necochea', 1),
(2200, b'0', 'Independencia', 6),
(2201, b'0', 'Chascomús', 1),
(2202, b'0', 'Punta Indio', 1),
(2203, b'0', 'El Carmen', 15),
(2204, b'0', 'Santa María', 12),
(2205, b'0', 'Valcheta', 9),
(2206, b'0', 'Arauco', 6),
(2207, b'0', 'Lezama', 1),
(2208, b'0', 'Campana', 1),
(2209, b'0', 'Magallanes', 8),
(2210, b'0', 'Corpen Aike', 8),
(2211, b'0', 'Minas', 12),
(2212, b'0', 'San Alberto', 12),
(2213, b'0', 'Río Segundo', 12),
(2214, b'0', 'San Justo', 12),
(2215, b'0', 'Unión', 12),
(2216, b'0', 'Tercero Arriba', 12),
(2217, b'0', 'Cerrillos', 4),
(2218, b'0', 'Río Cuarto', 12),
(2219, b'0', 'Tupungato', 13),
(2220, b'0', '9 de Julio', 9),
(2221, b'0', 'Ñorquinco', 9),
(2222, b'0', 'San Rafael', 13),
(2223, b'0', 'Anta', 4),
(2224, b'0', 'Picún Leufú', 16),
(2225, b'0', 'Zapala', 16),
(2226, b'0', '25 de Mayo', 9),
(2227, b'0', 'Telsen', 7),
(2228, b'0', 'Pilcaniyeu', 9),
(2229, b'0', 'Adolfo Alsina', 1),
(2230, b'0', 'General Alvear', 13),
(2231, b'0', 'La Caldera', 4),
(2232, b'0', 'Sargento Cabral', 5),
(2233, b'0', 'Pellegrini', 1),
(2234, b'0', 'Aluminé', 16),
(2235, b'0', 'Iruya', 4),
(2236, b'0', 'Lácar', 16),
(2237, b'0', 'Fray Mamerto Esquiú', 10),
(2238, b'0', 'Valle Viejo', 10),
(2239, b'0', 'San Cosme', 3),
(2240, b'0', 'Sarmiento', 7),
(2241, b'0', 'El Cuy', 9),
(2242, b'0', 'Las Heras', 13),
(2243, b'0', 'Tapenagá', 5),
(2244, b'0', 'Lavalle', 13),
(2245, b'0', 'Malargüe', 13),
(2246, b'0', 'Presidente Roque Sáenz Peña', 12),
(2247, b'0', 'Catán Lil', 16),
(2248, b'0', 'Presidencia de la Plaza', 5),
(2249, b'0', 'Esquina', 3),
(2250, b'0', 'Ushuaia', 17),
(2251, b'0', 'Antofagasta de la Sierra', 10),
(2252, b'0', 'Ensenada', 1),
(2253, b'0', 'Capital', 18),
(2254, b'0', 'Belgrano', 19),
(2255, b'0', 'Pergamino', 1),
(2256, b'0', 'Puán', 1),
(2257, b'0', 'General Villegas', 1),
(2258, b'0', 'General Obligado', 19),
(2259, b'0', 'Vera', 19),
(2260, b'0', '9 de Julio', 19),
(2261, b'0', 'Adolfo Alsina', 9),
(2262, b'0', 'Quitilipi', 5),
(2263, b'0', 'Güer Aike', 8),
(2264, b'0', 'Capayán', 10),
(2265, b'0', 'Burruyacú', 18),
(2266, b'0', 'San Jerónimo', 19),
(2267, b'0', 'Independencia', 5),
(2268, b'0', 'Curuzú Cuatiá', 3),
(2269, b'0', 'Luján de Cuyo', 13),
(2270, b'0', 'Tinogasta', 10),
(2271, b'0', 'Hucal', 20),
(2272, b'0', 'Itatí', 3),
(2273, b'0', 'Caleu Caleu', 20),
(2274, b'0', 'Lihuel Calel', 20),
(2275, b'0', 'Curacó', 20),
(2276, b'0', 'Confluencia', 16),
(2277, b'0', 'Picunches', 16),
(2278, b'0', 'Añelo', 16),
(2279, b'0', 'Loncopué', 16),
(2280, b'0', 'Ñorquín', 16),
(2281, b'0', 'Pehuenches', 16),
(2282, b'0', 'Montecarlo', 21),
(2283, b'0', 'Eldorado', 21),
(2284, b'0', 'San Pedro', 21),
(2285, b'0', 'Antártida Argentina', 17),
(2286, b'0', 'Minas', 16),
(2287, b'0', 'Chos Malal', 16),
(2288, b'0', 'Cushamen', 7),
(2289, b'0', 'Lago Buenos Aires', 8),
(2290, b'0', 'Pichi Mahuida', 9),
(2291, b'0', 'San Martín', 22),
(2292, b'0', 'Yavi', 15),
(2293, b'0', 'Santa Catalina', 15),
(2294, b'0', 'San Pedro', 15),
(2295, b'0', 'Valle Grande', 15),
(2296, b'0', 'Patiño', 14),
(2297, b'0', 'Bermejo', 14),
(2298, b'0', 'Susques', 15),
(2299, b'0', 'Matacos', 14),
(2300, b'0', 'Los Andes', 4),
(2301, b'0', 'Orán', 4),
(2302, b'0', 'Tilcara', 15),
(2303, b'0', 'Palpalá', 15),
(2304, b'0', 'Loventué', 20),
(2305, b'0', 'Río Senguer', 7),
(2306, b'0', 'Bariloche', 9),
(2307, b'0', 'Huiliches', 16),
(2308, b'0', 'Limay Mahuida', 20),
(2309, b'0', 'Puelén', 20),
(2310, b'0', 'Chalileo', 20),
(2311, b'0', 'Chical Co', 20),
(2312, b'0', 'Quebrachos', 22),
(2313, b'0', 'Monte Caseros', 3),
(2314, b'0', 'Mayor Luis J. Fontana', 5),
(2315, b'0', 'Fray Justo Santa María de Oro', 5),
(2316, b'0', 'General Belgrano', 6),
(2317, b'0', 'Las Colonias', 19),
(2318, b'0', 'San Justo', 19),
(2319, b'0', 'San Cristóbal', 19),
(2320, b'0', 'San Javier', 19),
(2321, b'0', 'Chapaleufú', 20),
(2322, b'0', 'Realicó', 20),
(2323, b'0', 'Maracó', 20),
(2324, b'0', 'Trenel', 20),
(2325, b'0', 'Copo', 22),
(2326, b'0', 'Capital', 20),
(2327, b'0', 'Santa Bárbara', 15),
(2328, b'0', 'Almirante Brown', 5),
(2329, b'0', 'Rosario de la Frontera', 4),
(2330, b'0', 'Collón Curá', 16),
(2331, b'0', 'San Fernando', 1),
(2332, b'0', 'Tigre', 1),
(2333, b'0', 'Santa María', 10),
(2334, b'0', 'Santa Rosa', 10),
(2335, b'0', 'La Paz', 10),
(2336, b'0', 'Río Hondo', 22),
(2337, b'0', 'Vinchina', 6),
(2338, b'0', 'Capital', 6),
(2339, b'0', 'Río Seco', 12),
(2340, b'0', 'Avellaneda', 9),
(2341, b'0', 'General Roca', 9),
(2342, b'0', 'Belgrano', 11),
(2343, b'0', 'Los Lagos', 16),
(2344, b'0', 'Capital', 10),
(2345, b'0', 'Ancasti', 10),
(2346, b'0', 'Pomán', 10),
(2347, b'0', '9 de Julio', 5),
(2348, b'0', 'Pocho', 12),
(2349, b'0', 'Ezeiza', 1),
(2350, b'0', 'Andalgalá', 10),
(2351, b'0', 'Ambato', 10),
(2352, b'0', 'Guasayán', 22),
(2353, b'0', 'Paclín', 10),
(2354, b'0', 'El Alto', 10),
(2355, b'0', 'Sobremonte', 12),
(2356, b'0', 'Río Grande', 17),
(2357, b'0', 'Banda', 22),
(2358, b'0', 'Paso de Indios', 7),
(2359, b'0', 'Capital', 12),
(2360, b'0', 'Mártires', 7),
(2361, b'0', 'Sarmiento', 22),
(2362, b'0', 'Deseado', 8),
(2363, b'0', 'Languiñeo', 7),
(2364, b'0', 'Belgrano', 22),
(2365, b'0', 'Aguirre', 22),
(2366, b'0', 'Maipú', 5),
(2367, b'0', 'San Carlos', 13),
(2368, b'0', 'Tunuyán', 13),
(2369, b'0', 'Robles', 22),
(2370, b'0', 'Loreto', 22),
(2371, b'0', 'Catriló', 20),
(2372, b'0', 'Capital', 22),
(2373, b'0', 'Colón', 23),
(2374, b'0', 'Villaguay', 23),
(2375, b'0', 'Castelli', 1),
(2376, b'0', 'San Salvador', 23),
(2377, b'0', 'Belén', 10),
(2378, b'0', 'Almirante Brown', 1),
(2379, b'0', 'Nogoyá', 23),
(2380, b'0', 'Tala', 23),
(2381, b'0', 'Gualeguay', 23),
(2382, b'0', 'Federación', 23),
(2383, b'0', 'La Paz', 23),
(2384, b'0', 'Feliciano', 23),
(2385, b'0', 'Presidente Perón', 1),
(2386, b'0', 'Junín', 1),
(2387, b'0', 'Brandsen', 1),
(2388, b'0', 'Chivilcoy', 1),
(2389, b'0', 'Alberti', 1),
(2390, b'0', 'Bragado', 1),
(2391, b'0', 'General Las Heras', 1),
(2392, b'0', 'Carlos Casares', 1),
(2393, b'0', 'Marcos Paz', 1),
(2394, b'0', 'General Viamonte', 1),
(2395, b'0', 'Carlos Tejedor', 1),
(2396, b'0', '25 de Mayo', 1),
(2397, b'0', '9 de Julio', 1),
(2398, b'0', 'Pehuajó', 1),
(2399, b'0', 'Tapalqué', 1),
(2400, b'0', 'Trenque Lauquen', 1),
(2401, b'0', 'General Belgrano', 1),
(2402, b'0', 'Monte', 1),
(2403, b'0', 'Roque Pérez', 1),
(2404, b'0', 'Olavarría', 1),
(2405, b'0', 'Merlo', 1),
(2406, b'0', 'Cainguás', 21),
(2407, b'0', 'Islas del Atlántico Sur', 17),
(2408, b'0', 'Esteban Echeverría', 1),
(2409, b'0', 'Arrecifes', 1),
(2410, b'0', 'Capitán Sarmiento', 1),
(2411, b'0', 'Dr. Manuel Belgrano', 15),
(2412, b'0', 'Carmen de Areco', 1),
(2413, b'0', 'Salto', 1),
(2414, b'0', 'Exaltación de la Cruz', 1),
(2415, b'0', 'San Miguel', 1),
(2416, b'0', 'San Andrés de Giles', 1),
(2417, b'0', 'Mercedes', 1),
(2418, b'0', 'Pilar', 1),
(2419, b'0', 'Luján', 1),
(2420, b'0', 'Famaillá', 18),
(2421, b'0', 'Hurlingham', 1),
(2422, b'0', 'Morón', 1),
(2423, b'0', 'Chacabuco', 1),
(2424, b'0', 'Junín', 13),
(2425, b'0', 'Malvinas Argentinas', 1),
(2426, b'0', 'Tres Lomas', 1),
(2427, b'0', 'Ayacucho', 1),
(2428, b'0', 'Guaminí', 1),
(2429, b'0', 'General San Martín', 1),
(2430, b'0', 'Lincoln', 1),
(2431, b'0', 'Laprida', 1),
(2432, b'0', 'San Isidro', 1),
(2433, b'0', 'Benito Juárez', 1),
(2434, b'0', 'Colón', 1),
(2435, b'0', 'Ituzaingó', 1),
(2436, b'0', 'General Rodríguez', 1),
(2437, b'0', 'Suipacha', 1),
(2438, b'0', 'Tres de Febrero', 1),
(2439, b'0', 'General Felipe Varela', 6),
(2440, b'0', 'Florencio Varela', 1),
(2441, b'0', 'Navarro', 1),
(2442, b'0', 'Cañuelas', 1),
(2443, b'0', 'Moreno', 22),
(2444, b'0', 'Chacabuco', 5),
(2445, b'0', 'San Vicente', 1),
(2446, b'0', 'Lobos', 1),
(2447, b'0', 'General Alvear', 1),
(2448, b'0', 'Quilmes', 1),
(2449, b'0', 'Pila', 1),
(2450, b'0', 'General La Madrid', 1),
(2451, b'0', 'Bolívar', 1),
(2452, b'0', 'Castro Barros', 6),
(2453, b'0', 'Balcarce', 1),
(2454, b'0', 'Hipólito Yrigoyen', 1),
(2455, b'0', 'Capital', 13),
(2456, b'0', 'Dolores', 1),
(2457, b'0', 'Azul', 1),
(2458, b'0', 'Daireaux', 1),
(2459, b'0', 'Godoy Cruz', 13),
(2460, b'0', 'Cafayate', 4),
(2461, b'0', 'Figueroa', 22),
(2462, b'0', 'Saavedra', 1),
(2463, b'0', 'Monte Hermoso', 1),
(2464, b'0', 'Lobería', 1),
(2465, b'0', 'Berisso', 1),
(2466, b'0', 'Tordillo', 1),
(2467, b'0', 'Zárate', 1),
(2468, b'0', 'Ramallo', 1),
(2469, b'0', 'San Nicolás', 1),
(2470, b'0', 'Salavina', 22),
(2471, b'0', 'Pellegrini', 22),
(2472, b'0', 'Avellaneda', 22),
(2473, b'0', '2 de Abril', 5),
(2474, b'0', 'Guaymallén', 13),
(2475, b'0', 'Juárez Celman', 12),
(2476, b'0', 'Capital', 4),
(2477, b'0', 'Silípica', 22),
(2478, b'0', 'La Candelaria', 4),
(2479, b'0', 'Rancul', 20),
(2480, b'0', 'Maipú', 13),
(2481, b'0', 'Guachipas', 4),
(2482, b'0', 'Atreucó', 20),
(2483, b'0', 'San Martín', 13),
(2484, b'0', 'Guatraché', 20),
(2485, b'0', 'Sanagasta', 6),
(2486, b'0', 'Conhelo', 20),
(2487, b'0', 'Libertador General San Martín', 21),
(2488, b'0', 'Rosario Vera Peñaloza', 6),
(2489, b'0', 'San Miguel', 3),
(2490, b'0', 'General Juan Facundo Quiroga', 6),
(2491, b'0', 'Ángel Vicente Peñaloza', 6),
(2492, b'0', 'Empedrado', 3),
(2493, b'0', 'Chilecito', 6),
(2494, b'0', 'Toay', 20),
(2495, b'0', 'Colón', 12),
(2496, b'0', 'Ituzaingó', 3),
(2497, b'0', 'Famatina', 6),
(2498, b'0', 'General López', 19),
(2499, b'0', 'Constitución', 19),
(2500, b'0', 'Caseros', 19),
(2501, b'0', 'Rosario', 19),
(2502, b'0', 'San Lorenzo', 19),
(2503, b'0', 'Iriondo', 19),
(2504, b'0', 'Lanús', 1),
(2505, b'0', 'General San Martín', 6),
(2506, b'0', 'San Blas de Los Sauces', 6),
(2507, b'0', 'San Antonio', 15),
(2508, b'0', 'Rinconada', 15),
(2509, b'0', 'Ramón Lista', 14),
(2510, b'0', 'La Poma', 4),
(2511, b'0', 'Biedma', 7),
(2512, b'0', 'Capital', 3),
(2513, b'0', 'San Luis del Palmar', 3),
(2514, b'0', 'Formosa', 14),
(2515, b'0', 'Pilcomayo', 14),
(2516, b'0', 'Tehuelches', 7),
(2517, b'0', 'Escalante', 7),
(2518, b'0', 'Ischilín', 12),
(2519, b'0', 'Totoral', 12),
(2520, b'0', 'General San Martín', 12),
(2521, b'0', 'San Javier', 12),
(2522, b'0', 'Río Primero', 12),
(2523, b'0', 'Marcos Juárez', 12),
(2524, b'0', 'General Donovan', 5),
(2525, b'0', 'Leandro N. Alem', 1),
(2526, b'0', 'Libertador General San Martín', 5),
(2527, b'0', 'Gastre', 7),
(2528, b'0', 'General Arenales', 1),
(2529, b'0', 'Bermejo', 5),
(2530, b'0', 'Calamuchita', 12),
(2531, b'0', 'Cruz Alta', 18),
(2532, b'0', 'Lules', 18),
(2533, b'0', 'Yerba Buena', 18),
(2534, b'0', 'Tafí Viejo', 18),
(2535, b'0', 'Libertador General San Martín', 11),
(2536, b'0', 'Coronel Pringles', 11),
(2537, b'0', 'Chacabuco', 11),
(2538, b'0', 'Rivadavia', 1),
(2539, b'0', 'Patagones', 1),
(2540, b'0', 'Juan Martín de Pueyrredón', 11),
(2541, b'0', 'General Pedernera', 11),
(2542, b'0', 'Trancas', 18),
(2543, b'0', 'Tafí del Valle', 18),
(2544, b'0', 'Junín', 11),
(2545, b'0', 'Mitre', 22),
(2546, b'0', 'Atamisqui', 22),
(2547, b'0', 'Berón de Astrada', 3),
(2548, b'0', 'Tolhuin', 17),
(2549, b'0', 'Capital', 21),
(2550, b'0', 'Candelaria', 21),
(2551, b'0', 'Jiménez', 22),
(2552, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(2553, b'0', 'Baradero', 1),
(2554, b'0', 'San Pedro', 1),
(2555, b'0', 'Santa Victoria', 4),
(2556, b'0', 'General José de San Martín', 4),
(2557, b'0', 'Rivadavia', 4),
(2558, b'0', 'Rosario de Lerma', 4),
(2559, b'0', 'Ledesma', 15),
(2560, b'0', 'Humahuaca', 15),
(2561, b'0', 'Cochinoca', 15),
(2562, b'0', 'Tumbaya', 15),
(2563, b'0', 'Florentino Ameghino', 1),
(2564, b'0', 'Florentino Ameghino', 7),
(2565, b'0', 'La Cocha', 18),
(2566, b'0', 'Graneros', 18),
(2567, b'0', 'Juan Bautista Alberdi', 18),
(2568, b'0', 'Río Chico', 18),
(2569, b'0', 'Simoca', 18),
(2570, b'0', 'Chicligasta', 18),
(2571, b'0', 'Monteros', 18),
(2572, b'0', 'Leales', 18),
(2573, b'0', 'San Martín', 19),
(2574, b'0', 'La Capital', 19),
(2575, b'0', 'General Manuel Belgrano', 21),
(2576, b'0', 'Guaraní', 21),
(2577, b'0', 'Iguazú', 21),
(2578, b'0', '25 de Mayo', 21),
(2579, b'0', 'Oberá', 21),
(2580, b'0', 'Castellanos', 19),
(2581, b'0', 'Garay', 19),
(2582, b'0', 'Quemú Quemú', 20),
(2583, b'0', 'San Ignacio', 21),
(2584, b'0', 'Utracán', 20),
(2585, b'0', 'San Martín', 3),
(2586, b'0', 'Paso de los Libres', 3),
(2587, b'0', 'Goya', 3),
(2588, b'0', 'Lavalle', 3),
(2589, b'0', 'San Roque', 3),
(2590, b'0', 'General Alvear', 3),
(2591, b'0', 'Concepción', 3),
(2592, b'0', 'Bella Vista', 3),
(2593, b'0', 'Santo Tomé', 3),
(2594, b'0', 'Saladas', 3),
(2595, b'0', 'General Paz', 3),
(2596, b'0', 'Leandro N. Alem', 21),
(2597, b'0', 'San Javier', 21),
(2598, b'0', 'Mburucuyá', 3),
(2599, b'0', 'Concepción', 21),
(2600, b'0', 'Apóstoles', 21),
(2601, b'0', '1° de Mayo', 5),
(2602, b'0', 'San Fernando', 5),
(2603, b'0', 'San Lorenzo', 5),
(2604, b'0', 'Lomas de Zamora', 1),
(2605, b'0', 'Avellaneda', 1),
(2606, b'0', '25 de Mayo', 5),
(2607, b'0', 'General Belgrano', 5),
(2608, b'0', 'Libertad', 5),
(2609, b'0', 'Comandante Fernández', 5),
(2610, b'0', 'Chimbas', 24),
(2611, b'0', 'Capital', 24),
(2612, b'0', 'Rivadavia', 24),
(2613, b'0', '9 de Julio', 24),
(2614, b'0', 'Albardón', 24),
(2615, b'0', 'Angaco', 24),
(2616, b'0', 'Santa Lucía', 24),
(2617, b'0', 'Rawson', 24),
(2618, b'0', '25 de Mayo', 24),
(2619, b'0', 'San Martín', 24),
(2620, b'0', 'Pocito', 24),
(2621, b'0', 'Zonda', 24),
(2622, b'0', 'Ullum', 24),
(2623, b'0', 'Sarmiento', 24),
(2624, b'0', 'Calingasta', 24),
(2625, b'0', 'Iglesia', 24),
(2626, b'0', 'Jáchal', 24),
(2627, b'0', 'Valle Fértil', 24),
(2628, b'0', 'Caucete', 24),
(2629, b'0', 'La Plata', 1),
(2630, b'0', 'Mercedes', 3),
(2631, b'0', 'Adolfo Gonzales Chaves', 1),
(2632, b'0', 'Concordia', 23),
(2633, b'0', 'Federal', 23),
(2634, b'0', 'Gualeguaychú', 23),
(2635, b'0', 'Islas del Ibicuy', 23),
(2636, b'0', 'Victoria', 23),
(2637, b'0', 'Diamante', 23),
(2638, b'0', 'Uruguay', 23),
(2639, b'0', 'Paraná', 23),
(2640, b'0', 'Saladillo', 1),
(2641, b'0', 'Las Flores', 1),
(2642, b'0', 'Rojas', 1),
(2643, b'0', 'Escobar', 1),
(2644, b'0', 'José C. Paz', 1),
(2645, b'0', 'Bahía Blanca', 1),
(2646, b'0', 'San Antonio de Areco', 1),
(2647, b'0', 'Maipú', 1),
(2648, b'0', 'General Alvarado', 1),
(2649, b'0', 'General Pueyrredón', 1),
(2650, b'0', 'Mar Chiquita', 1),
(2651, b'0', 'Villa Gesell', 1),
(2652, b'0', 'Pinamar', 1),
(2653, b'0', 'General Lavalle', 1),
(2654, b'0', 'La Costa', 1),
(2655, b'0', 'Magdalena', 1),
(2656, b'0', 'Sauce', 3),
(2657, b'0', 'Vicente López', 1),
(2658, b'0', 'La Viña', 4),
(2659, b'0', 'Rauch', 1),
(2660, b'0', 'Metán', 4),
(2661, b'0', 'Molinos', 4),
(2662, b'0', 'O\'Higgins', 5),
(2663, b'0', 'Moreno', 1),
(2664, b'0', 'La Matanza', 1),
(2665, b'0', 'Tandil', 1),
(2666, b'0', 'Coronel Suárez', 1),
(2667, b'0', 'Chamical', 6),
(2668, b'0', 'Futaleufú', 7),
(2669, b'0', 'Río Chico', 8),
(2670, b'0', 'San Antonio', 9),
(2671, b'0', 'Alberdi', 22),
(2672, b'0', 'Juan Felipe Ibarra', 22),
(2673, b'0', 'General Taboada', 22),
(2674, b'0', 'Salliqueló', 1),
(2675, b'0', 'Berazategui', 1),
(2676, b'0', 'General Güemes', 4),
(2677, b'0', 'San Carlos', 4),
(2678, b'0', 'General Paz', 1),
(2679, b'0', 'General Guido', 1),
(2680, b'0', 'General Juan Madariaga', 1),
(2681, b'0', 'Lago Argentino', 8),
(2682, b'0', 'Rivadavia', 22),
(2683, b'0', 'Ojo de Agua', 22),
(2684, b'0', 'Choya', 22),
(2685, b'0', 'Gobernador Dupuy', 11),
(2686, b'0', 'Cachi', 4),
(2687, b'0', 'Chicoana', 4),
(2688, b'0', 'Gaiman', 7),
(2689, b'0', 'Rawson', 7),
(2690, b'0', 'General Lamadrid', 6),
(2691, b'0', 'Ayacucho', 11),
(2692, b'0', '12 de Octubre', 5),
(2693, b'0', 'Tulumba', 12),
(2694, b'0', 'Cruz del Eje', 12),
(2695, b'0', 'Punilla', 12),
(2696, b'0', 'Santa Rosa', 13),
(2697, b'0', 'General Güemes', 5),
(2698, b'0', 'General Ortiz de Ocampo', 6),
(2699, b'0', 'General Roca', 12),
(2700, b'0', 'Pilagás', 14),
(2701, b'0', 'Laishi', 14),
(2702, b'0', 'Rivadavia', 13),
(2703, b'0', 'Tornquist', 1),
(2704, b'0', 'La Paz', 13),
(2705, b'0', 'Coronel Pringles', 1),
(2706, b'0', 'Conesa', 9),
(2707, b'0', 'Villarino', 1),
(2708, b'0', 'Pirané', 14),
(2709, b'0', 'General Pinto', 1),
(2710, b'0', 'San Cayetano', 1),
(2711, b'0', 'Tres Arroyos', 1),
(2712, b'0', 'Coronel Dorrego', 1),
(2713, b'0', 'Necochea', 1),
(2714, b'0', 'Independencia', 6),
(2715, b'0', 'Chascomús', 1),
(2716, b'0', 'Punta Indio', 1),
(2717, b'0', 'El Carmen', 15),
(2718, b'0', 'Santa María', 12),
(2719, b'0', 'Valcheta', 9),
(2720, b'0', 'Arauco', 6),
(2721, b'0', 'Lezama', 1),
(2722, b'0', 'Campana', 1),
(2723, b'0', 'Magallanes', 8),
(2724, b'0', 'Corpen Aike', 8),
(2725, b'0', 'Minas', 12),
(2726, b'0', 'San Alberto', 12),
(2727, b'0', 'Río Segundo', 12),
(2728, b'0', 'San Justo', 12),
(2729, b'0', 'Unión', 12),
(2730, b'0', 'Tercero Arriba', 12),
(2731, b'0', 'Cerrillos', 4),
(2732, b'0', 'Río Cuarto', 12),
(2733, b'0', 'Tupungato', 13),
(2734, b'0', '9 de Julio', 9),
(2735, b'0', 'Ñorquinco', 9),
(2736, b'0', 'San Rafael', 13),
(2737, b'0', 'Anta', 4),
(2738, b'0', 'Picún Leufú', 16),
(2739, b'0', 'Zapala', 16),
(2740, b'0', '25 de Mayo', 9),
(2741, b'0', 'Telsen', 7),
(2742, b'0', 'Pilcaniyeu', 9),
(2743, b'0', 'Adolfo Alsina', 1),
(2744, b'0', 'General Alvear', 13),
(2745, b'0', 'La Caldera', 4),
(2746, b'0', 'Sargento Cabral', 5),
(2747, b'0', 'Pellegrini', 1),
(2748, b'0', 'Aluminé', 16),
(2749, b'0', 'Iruya', 4),
(2750, b'0', 'Lácar', 16),
(2751, b'0', 'Fray Mamerto Esquiú', 10),
(2752, b'0', 'Valle Viejo', 10),
(2753, b'0', 'San Cosme', 3),
(2754, b'0', 'Sarmiento', 7),
(2755, b'0', 'El Cuy', 9),
(2756, b'0', 'Las Heras', 13),
(2757, b'0', 'Tapenagá', 5),
(2758, b'0', 'Lavalle', 13),
(2759, b'0', 'Malargüe', 13),
(2760, b'0', 'Presidente Roque Sáenz Peña', 12),
(2761, b'0', 'Catán Lil', 16),
(2762, b'0', 'Presidencia de la Plaza', 5),
(2763, b'0', 'Esquina', 3),
(2764, b'0', 'Ushuaia', 17),
(2765, b'0', 'Antofagasta de la Sierra', 10),
(2766, b'0', 'Ensenada', 1),
(2767, b'0', 'Capital', 18),
(2768, b'0', 'Belgrano', 19),
(2769, b'0', 'Pergamino', 1),
(2770, b'0', 'Puán', 1),
(2771, b'0', 'General Villegas', 1),
(2772, b'0', 'General Obligado', 19),
(2773, b'0', 'Vera', 19),
(2774, b'0', '9 de Julio', 19),
(2775, b'0', 'Adolfo Alsina', 9),
(2776, b'0', 'Quitilipi', 5),
(2777, b'0', 'Güer Aike', 8),
(2778, b'0', 'Capayán', 10),
(2779, b'0', 'Burruyacú', 18),
(2780, b'0', 'San Jerónimo', 19),
(2781, b'0', 'Independencia', 5),
(2782, b'0', 'Curuzú Cuatiá', 3),
(2783, b'0', 'Luján de Cuyo', 13),
(2784, b'0', 'Tinogasta', 10),
(2785, b'0', 'Hucal', 20),
(2786, b'0', 'Itatí', 3),
(2787, b'0', 'Caleu Caleu', 20),
(2788, b'0', 'Lihuel Calel', 20),
(2789, b'0', 'Curacó', 20),
(2790, b'0', 'Confluencia', 16),
(2791, b'0', 'Picunches', 16),
(2792, b'0', 'Añelo', 16),
(2793, b'0', 'Loncopué', 16),
(2794, b'0', 'Ñorquín', 16),
(2795, b'0', 'Pehuenches', 16),
(2796, b'0', 'Montecarlo', 21),
(2797, b'0', 'Eldorado', 21),
(2798, b'0', 'San Pedro', 21),
(2799, b'0', 'Antártida Argentina', 17),
(2800, b'0', 'Minas', 16),
(2801, b'0', 'Chos Malal', 16),
(2802, b'0', 'Cushamen', 7),
(2803, b'0', 'Lago Buenos Aires', 8),
(2804, b'0', 'Pichi Mahuida', 9),
(2805, b'0', 'San Martín', 22),
(2806, b'0', 'Yavi', 15),
(2807, b'0', 'Santa Catalina', 15),
(2808, b'0', 'San Pedro', 15),
(2809, b'0', 'Valle Grande', 15),
(2810, b'0', 'Patiño', 14),
(2811, b'0', 'Bermejo', 14),
(2812, b'0', 'Susques', 15),
(2813, b'0', 'Matacos', 14),
(2814, b'0', 'Los Andes', 4),
(2815, b'0', 'Orán', 4),
(2816, b'0', 'Tilcara', 15),
(2817, b'0', 'Palpalá', 15),
(2818, b'0', 'Loventué', 20),
(2819, b'0', 'Río Senguer', 7),
(2820, b'0', 'Bariloche', 9),
(2821, b'0', 'Huiliches', 16),
(2822, b'0', 'Limay Mahuida', 20),
(2823, b'0', 'Puelén', 20),
(2824, b'0', 'Chalileo', 20),
(2825, b'0', 'Chical Co', 20),
(2826, b'0', 'Quebrachos', 22),
(2827, b'0', 'Monte Caseros', 3),
(2828, b'0', 'Mayor Luis J. Fontana', 5),
(2829, b'0', 'Fray Justo Santa María de Oro', 5),
(2830, b'0', 'General Belgrano', 6),
(2831, b'0', 'Las Colonias', 19),
(2832, b'0', 'San Justo', 19),
(2833, b'0', 'San Cristóbal', 19),
(2834, b'0', 'San Javier', 19),
(2835, b'0', 'Chapaleufú', 20),
(2836, b'0', 'Realicó', 20),
(2837, b'0', 'Maracó', 20),
(2838, b'0', 'Trenel', 20),
(2839, b'0', 'Copo', 22),
(2840, b'0', 'Capital', 20),
(2841, b'0', 'Santa Bárbara', 15),
(2842, b'0', 'Almirante Brown', 5),
(2843, b'0', 'Rosario de la Frontera', 4),
(2844, b'0', 'Collón Curá', 16),
(2845, b'0', 'San Fernando', 1),
(2846, b'0', 'Tigre', 1),
(2847, b'0', 'Santa María', 10),
(2848, b'0', 'Santa Rosa', 10),
(2849, b'0', 'La Paz', 10),
(2850, b'0', 'Río Hondo', 22),
(2851, b'0', 'Vinchina', 6),
(2852, b'0', 'Capital', 6),
(2853, b'0', 'Río Seco', 12),
(2854, b'0', 'Avellaneda', 9),
(2855, b'0', 'General Roca', 9),
(2856, b'0', 'Belgrano', 11),
(2857, b'0', 'Los Lagos', 16),
(2858, b'0', 'Capital', 10),
(2859, b'0', 'Ancasti', 10),
(2860, b'0', 'Pomán', 10),
(2861, b'0', '9 de Julio', 5),
(2862, b'0', 'Pocho', 12),
(2863, b'0', 'Ezeiza', 1),
(2864, b'0', 'Andalgalá', 10),
(2865, b'0', 'Ambato', 10),
(2866, b'0', 'Guasayán', 22),
(2867, b'0', 'Paclín', 10),
(2868, b'0', 'El Alto', 10),
(2869, b'0', 'Sobremonte', 12),
(2870, b'0', 'Río Grande', 17),
(2871, b'0', 'Banda', 22),
(2872, b'0', 'Paso de Indios', 7),
(2873, b'0', 'Capital', 12),
(2874, b'0', 'Mártires', 7),
(2875, b'0', 'Sarmiento', 22),
(2876, b'0', 'Deseado', 8),
(2877, b'0', 'Languiñeo', 7),
(2878, b'0', 'Belgrano', 22),
(2879, b'0', 'Aguirre', 22),
(2880, b'0', 'Maipú', 5),
(2881, b'0', 'San Carlos', 13),
(2882, b'0', 'Tunuyán', 13),
(2883, b'0', 'Robles', 22),
(2884, b'0', 'Loreto', 22),
(2885, b'0', 'Catriló', 20),
(2886, b'0', 'Capital', 22),
(2887, b'0', 'Colón', 23),
(2888, b'0', 'Villaguay', 23),
(2889, b'0', 'Castelli', 1),
(2890, b'0', 'San Salvador', 23),
(2891, b'0', 'Belén', 10),
(2892, b'0', 'Almirante Brown', 1),
(2893, b'0', 'Nogoyá', 23),
(2894, b'0', 'Tala', 23),
(2895, b'0', 'Gualeguay', 23),
(2896, b'0', 'Federación', 23),
(2897, b'0', 'La Paz', 23),
(2898, b'0', 'Feliciano', 23),
(2899, b'0', 'Presidente Perón', 1),
(2900, b'0', 'Junín', 1),
(2901, b'0', 'Brandsen', 1),
(2902, b'0', 'Chivilcoy', 1),
(2903, b'0', 'Alberti', 1),
(2904, b'0', 'Bragado', 1),
(2905, b'0', 'General Las Heras', 1),
(2906, b'0', 'Carlos Casares', 1),
(2907, b'0', 'Marcos Paz', 1),
(2908, b'0', 'General Viamonte', 1),
(2909, b'0', 'Carlos Tejedor', 1),
(2910, b'0', '25 de Mayo', 1),
(2911, b'0', '9 de Julio', 1),
(2912, b'0', 'Pehuajó', 1),
(2913, b'0', 'Tapalqué', 1),
(2914, b'0', 'Trenque Lauquen', 1),
(2915, b'0', 'General Belgrano', 1),
(2916, b'0', 'Monte', 1),
(2917, b'0', 'Roque Pérez', 1),
(2918, b'0', 'Olavarría', 1),
(2919, b'0', 'Merlo', 1),
(2920, b'0', 'Cainguás', 21),
(2921, b'0', 'Islas del Atlántico Sur', 17),
(2922, b'0', 'Esteban Echeverría', 1),
(2923, b'0', 'Arrecifes', 1),
(2924, b'0', 'Capitán Sarmiento', 1),
(2925, b'0', 'Dr. Manuel Belgrano', 15),
(2926, b'0', 'Carmen de Areco', 1),
(2927, b'0', 'Salto', 1),
(2928, b'0', 'Exaltación de la Cruz', 1),
(2929, b'0', 'San Miguel', 1),
(2930, b'0', 'San Andrés de Giles', 1),
(2931, b'0', 'Mercedes', 1),
(2932, b'0', 'Pilar', 1),
(2933, b'0', 'Luján', 1),
(2934, b'0', 'Famaillá', 18),
(2935, b'0', 'Hurlingham', 1),
(2936, b'0', 'Morón', 1),
(2937, b'0', 'Chacabuco', 1),
(2938, b'0', 'Junín', 13),
(2939, b'0', 'Malvinas Argentinas', 1),
(2940, b'0', 'Tres Lomas', 1),
(2941, b'0', 'Ayacucho', 1),
(2942, b'0', 'Guaminí', 1),
(2943, b'0', 'General San Martín', 1),
(2944, b'0', 'Lincoln', 1),
(2945, b'0', 'Laprida', 1),
(2946, b'0', 'San Isidro', 1),
(2947, b'0', 'Benito Juárez', 1),
(2948, b'0', 'Colón', 1),
(2949, b'0', 'Ituzaingó', 1),
(2950, b'0', 'General Rodríguez', 1),
(2951, b'0', 'Suipacha', 1),
(2952, b'0', 'Tres de Febrero', 1),
(2953, b'0', 'General Felipe Varela', 6),
(2954, b'0', 'Florencio Varela', 1),
(2955, b'0', 'Navarro', 1),
(2956, b'0', 'Cañuelas', 1),
(2957, b'0', 'Moreno', 22),
(2958, b'0', 'Chacabuco', 5),
(2959, b'0', 'San Vicente', 1),
(2960, b'0', 'Lobos', 1),
(2961, b'0', 'General Alvear', 1),
(2962, b'0', 'Quilmes', 1),
(2963, b'0', 'Pila', 1),
(2964, b'0', 'General La Madrid', 1),
(2965, b'0', 'Bolívar', 1),
(2966, b'0', 'Castro Barros', 6),
(2967, b'0', 'Balcarce', 1),
(2968, b'0', 'Hipólito Yrigoyen', 1),
(2969, b'0', 'Capital', 13),
(2970, b'0', 'Dolores', 1),
(2971, b'0', 'Azul', 1),
(2972, b'0', 'Daireaux', 1),
(2973, b'0', 'Godoy Cruz', 13),
(2974, b'0', 'Cafayate', 4),
(2975, b'0', 'Figueroa', 22),
(2976, b'0', 'Saavedra', 1),
(2977, b'0', 'Monte Hermoso', 1),
(2978, b'0', 'Lobería', 1),
(2979, b'0', 'Berisso', 1),
(2980, b'0', 'Tordillo', 1),
(2981, b'0', 'Zárate', 1),
(2982, b'0', 'Ramallo', 1),
(2983, b'0', 'San Nicolás', 1),
(2984, b'0', 'Salavina', 22),
(2985, b'0', 'Pellegrini', 22),
(2986, b'0', 'Avellaneda', 22),
(2987, b'0', '2 de Abril', 5),
(2988, b'0', 'Guaymallén', 13),
(2989, b'0', 'Juárez Celman', 12),
(2990, b'0', 'Capital', 4),
(2991, b'0', 'Silípica', 22),
(2992, b'0', 'La Candelaria', 4),
(2993, b'0', 'Rancul', 20),
(2994, b'0', 'Maipú', 13),
(2995, b'0', 'Guachipas', 4),
(2996, b'0', 'Atreucó', 20),
(2997, b'0', 'San Martín', 13),
(2998, b'0', 'Guatraché', 20),
(2999, b'0', 'Sanagasta', 6),
(3000, b'0', 'Conhelo', 20),
(3001, b'0', 'Libertador General San Martín', 21),
(3002, b'0', 'Rosario Vera Peñaloza', 6),
(3003, b'0', 'San Miguel', 3),
(3004, b'0', 'General Juan Facundo Quiroga', 6),
(3005, b'0', 'Ángel Vicente Peñaloza', 6),
(3006, b'0', 'Empedrado', 3),
(3007, b'0', 'Chilecito', 6),
(3008, b'0', 'Toay', 20),
(3009, b'0', 'Colón', 12),
(3010, b'0', 'Ituzaingó', 3),
(3011, b'0', 'Famatina', 6),
(3012, b'0', 'General López', 19),
(3013, b'0', 'Constitución', 19),
(3014, b'0', 'Caseros', 19),
(3015, b'0', 'Rosario', 19),
(3016, b'0', 'San Lorenzo', 19),
(3017, b'0', 'Iriondo', 19),
(3018, b'0', 'Lanús', 1),
(3019, b'0', 'General San Martín', 6),
(3020, b'0', 'San Blas de Los Sauces', 6),
(3021, b'0', 'San Antonio', 15),
(3022, b'0', 'Rinconada', 15),
(3023, b'0', 'Ramón Lista', 14),
(3024, b'0', 'La Poma', 4),
(3025, b'0', 'Biedma', 7),
(3026, b'0', 'Capital', 3),
(3027, b'0', 'San Luis del Palmar', 3),
(3028, b'0', 'Formosa', 14),
(3029, b'0', 'Pilcomayo', 14),
(3030, b'0', 'Tehuelches', 7),
(3031, b'0', 'Escalante', 7),
(3032, b'0', 'Ischilín', 12),
(3033, b'0', 'Totoral', 12),
(3034, b'0', 'General San Martín', 12),
(3035, b'0', 'San Javier', 12),
(3036, b'0', 'Río Primero', 12),
(3037, b'0', 'Marcos Juárez', 12),
(3038, b'0', 'General Donovan', 5),
(3039, b'0', 'Leandro N. Alem', 1),
(3040, b'0', 'Libertador General San Martín', 5),
(3041, b'0', 'Gastre', 7),
(3042, b'0', 'General Arenales', 1),
(3043, b'0', 'Bermejo', 5),
(3044, b'0', 'Calamuchita', 12),
(3045, b'0', 'Cruz Alta', 18),
(3046, b'0', 'Lules', 18),
(3047, b'0', 'Yerba Buena', 18),
(3048, b'0', 'Tafí Viejo', 18),
(3049, b'0', 'Libertador General San Martín', 11),
(3050, b'0', 'Coronel Pringles', 11),
(3051, b'0', 'Chacabuco', 11),
(3052, b'0', 'Rivadavia', 1),
(3053, b'0', 'Patagones', 1),
(3054, b'0', 'Juan Martín de Pueyrredón', 11),
(3055, b'0', 'General Pedernera', 11),
(3056, b'0', 'Trancas', 18),
(3057, b'0', 'Tafí del Valle', 18),
(3058, b'0', 'Junín', 11),
(3059, b'0', 'Mitre', 22),
(3060, b'0', 'Atamisqui', 22),
(3061, b'0', 'Berón de Astrada', 3),
(3062, b'0', 'Tolhuin', 17),
(3063, b'0', 'Capital', 21),
(3064, b'0', 'Candelaria', 21),
(3065, b'0', 'Jiménez', 22),
(3066, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(3067, b'0', 'Baradero', 1),
(3068, b'0', 'San Pedro', 1),
(3069, b'0', 'Santa Victoria', 4),
(3070, b'0', 'General José de San Martín', 4),
(3071, b'0', 'Rivadavia', 4),
(3072, b'0', 'Rosario de Lerma', 4),
(3073, b'0', 'Ledesma', 15),
(3074, b'0', 'Humahuaca', 15),
(3075, b'0', 'Cochinoca', 15),
(3076, b'0', 'Tumbaya', 15),
(3077, b'0', 'Florentino Ameghino', 1),
(3078, b'0', 'Florentino Ameghino', 7),
(3079, b'0', 'La Cocha', 18),
(3080, b'0', 'Graneros', 18),
(3081, b'0', 'Juan Bautista Alberdi', 18),
(3082, b'0', 'Río Chico', 18),
(3083, b'0', 'Simoca', 18),
(3084, b'0', 'Chicligasta', 18),
(3085, b'0', 'Monteros', 18),
(3086, b'0', 'Leales', 18),
(3087, b'0', 'San Martín', 19),
(3088, b'0', 'La Capital', 19),
(3089, b'0', 'General Manuel Belgrano', 21),
(3090, b'0', 'Guaraní', 21),
(3091, b'0', 'Iguazú', 21),
(3092, b'0', '25 de Mayo', 21),
(3093, b'0', 'Oberá', 21),
(3094, b'0', 'Castellanos', 19),
(3095, b'0', 'Garay', 19),
(3096, b'0', 'Quemú Quemú', 20),
(3097, b'0', 'San Ignacio', 21),
(3098, b'0', 'Utracán', 20),
(3099, b'0', 'San Martín', 3),
(3100, b'0', 'Paso de los Libres', 3),
(3101, b'0', 'Goya', 3),
(3102, b'0', 'Lavalle', 3),
(3103, b'0', 'San Roque', 3),
(3104, b'0', 'General Alvear', 3),
(3105, b'0', 'Concepción', 3),
(3106, b'0', 'Bella Vista', 3),
(3107, b'0', 'Santo Tomé', 3),
(3108, b'0', 'Saladas', 3),
(3109, b'0', 'General Paz', 3),
(3110, b'0', 'Leandro N. Alem', 21),
(3111, b'0', 'San Javier', 21),
(3112, b'0', 'Mburucuyá', 3),
(3113, b'0', 'Concepción', 21),
(3114, b'0', 'Apóstoles', 21),
(3115, b'0', '1° de Mayo', 5),
(3116, b'0', 'San Fernando', 5),
(3117, b'0', 'San Lorenzo', 5),
(3118, b'0', 'Lomas de Zamora', 1),
(3119, b'0', 'Avellaneda', 1),
(3120, b'0', '25 de Mayo', 5),
(3121, b'0', 'General Belgrano', 5),
(3122, b'0', 'Libertad', 5),
(3123, b'0', 'Comandante Fernández', 5),
(3124, b'0', 'Chimbas', 24),
(3125, b'0', 'Capital', 24),
(3126, b'0', 'Rivadavia', 24),
(3127, b'0', '9 de Julio', 24),
(3128, b'0', 'Albardón', 24),
(3129, b'0', 'Angaco', 24),
(3130, b'0', 'Santa Lucía', 24),
(3131, b'0', 'Rawson', 24),
(3132, b'0', '25 de Mayo', 24),
(3133, b'0', 'San Martín', 24),
(3134, b'0', 'Pocito', 24),
(3135, b'0', 'Zonda', 24),
(3136, b'0', 'Ullum', 24),
(3137, b'0', 'Sarmiento', 24),
(3138, b'0', 'Calingasta', 24),
(3139, b'0', 'Iglesia', 24),
(3140, b'0', 'Jáchal', 24),
(3141, b'0', 'Valle Fértil', 24),
(3142, b'0', 'Caucete', 24),
(3143, b'0', 'La Plata', 1),
(3144, b'0', 'Mercedes', 3),
(3145, b'0', 'Adolfo Gonzales Chaves', 1),
(3146, b'0', 'Concordia', 23),
(3147, b'0', 'Federal', 23),
(3148, b'0', 'Gualeguaychú', 23),
(3149, b'0', 'Islas del Ibicuy', 23),
(3150, b'0', 'Victoria', 23),
(3151, b'0', 'Diamante', 23),
(3152, b'0', 'Uruguay', 23),
(3153, b'0', 'Paraná', 23),
(3154, b'0', 'Saladillo', 1),
(3155, b'0', 'Las Flores', 1),
(3156, b'0', 'Rojas', 1),
(3157, b'0', 'Escobar', 1),
(3158, b'0', 'José C. Paz', 1),
(3159, b'0', 'Bahía Blanca', 1),
(3160, b'0', 'San Antonio de Areco', 1),
(3161, b'0', 'Maipú', 1),
(3162, b'0', 'General Alvarado', 1),
(3163, b'0', 'General Pueyrredón', 1),
(3164, b'0', 'Mar Chiquita', 1),
(3165, b'0', 'Villa Gesell', 1),
(3166, b'0', 'Pinamar', 1),
(3167, b'0', 'General Lavalle', 1),
(3168, b'0', 'La Costa', 1),
(3169, b'0', 'Magdalena', 1),
(3170, b'0', 'Sauce', 3),
(3171, b'0', 'Vicente López', 1),
(3172, b'0', 'La Viña', 4),
(3173, b'0', 'Rauch', 1),
(3174, b'0', 'Metán', 4),
(3175, b'0', 'Molinos', 4),
(3176, b'0', 'O\'Higgins', 5),
(3177, b'0', 'Moreno', 1),
(3178, b'0', 'La Matanza', 1),
(3179, b'0', 'Tandil', 1),
(3180, b'0', 'Coronel Suárez', 1),
(3181, b'0', 'Chamical', 6),
(3182, b'0', 'Futaleufú', 7),
(3183, b'0', 'Río Chico', 8),
(3184, b'0', 'San Antonio', 9),
(3185, b'0', 'Alberdi', 22),
(3186, b'0', 'Juan Felipe Ibarra', 22),
(3187, b'0', 'General Taboada', 22),
(3188, b'0', 'Salliqueló', 1),
(3189, b'0', 'Berazategui', 1),
(3190, b'0', 'General Güemes', 4),
(3191, b'0', 'San Carlos', 4),
(3192, b'0', 'General Paz', 1),
(3193, b'0', 'General Guido', 1),
(3194, b'0', 'General Juan Madariaga', 1),
(3195, b'0', 'Lago Argentino', 8),
(3196, b'0', 'Rivadavia', 22),
(3197, b'0', 'Ojo de Agua', 22),
(3198, b'0', 'Choya', 22),
(3199, b'0', 'Gobernador Dupuy', 11),
(3200, b'0', 'Cachi', 4),
(3201, b'0', 'Chicoana', 4),
(3202, b'0', 'Gaiman', 7),
(3203, b'0', 'Rawson', 7),
(3204, b'0', 'General Lamadrid', 6),
(3205, b'0', 'Ayacucho', 11),
(3206, b'0', '12 de Octubre', 5),
(3207, b'0', 'Tulumba', 12),
(3208, b'0', 'Cruz del Eje', 12),
(3209, b'0', 'Punilla', 12),
(3210, b'0', 'Santa Rosa', 13),
(3211, b'0', 'General Güemes', 5),
(3212, b'0', 'General Ortiz de Ocampo', 6),
(3213, b'0', 'General Roca', 12),
(3214, b'0', 'Pilagás', 14),
(3215, b'0', 'Laishi', 14),
(3216, b'0', 'Rivadavia', 13),
(3217, b'0', 'Tornquist', 1),
(3218, b'0', 'La Paz', 13),
(3219, b'0', 'Coronel Pringles', 1),
(3220, b'0', 'Conesa', 9),
(3221, b'0', 'Villarino', 1),
(3222, b'0', 'Pirané', 14),
(3223, b'0', 'General Pinto', 1),
(3224, b'0', 'San Cayetano', 1),
(3225, b'0', 'Tres Arroyos', 1),
(3226, b'0', 'Coronel Dorrego', 1),
(3227, b'0', 'Necochea', 1),
(3228, b'0', 'Independencia', 6),
(3229, b'0', 'Chascomús', 1),
(3230, b'0', 'Punta Indio', 1),
(3231, b'0', 'El Carmen', 15),
(3232, b'0', 'Santa María', 12),
(3233, b'0', 'Valcheta', 9),
(3234, b'0', 'Arauco', 6),
(3235, b'0', 'Lezama', 1),
(3236, b'0', 'Campana', 1),
(3237, b'0', 'Magallanes', 8),
(3238, b'0', 'Corpen Aike', 8),
(3239, b'0', 'Minas', 12),
(3240, b'0', 'San Alberto', 12),
(3241, b'0', 'Río Segundo', 12),
(3242, b'0', 'San Justo', 12),
(3243, b'0', 'Unión', 12),
(3244, b'0', 'Tercero Arriba', 12),
(3245, b'0', 'Cerrillos', 4),
(3246, b'0', 'Río Cuarto', 12),
(3247, b'0', 'Tupungato', 13),
(3248, b'0', '9 de Julio', 9),
(3249, b'0', 'Ñorquinco', 9),
(3250, b'0', 'San Rafael', 13),
(3251, b'0', 'Anta', 4),
(3252, b'0', 'Picún Leufú', 16),
(3253, b'0', 'Zapala', 16),
(3254, b'0', '25 de Mayo', 9),
(3255, b'0', 'Telsen', 7),
(3256, b'0', 'Pilcaniyeu', 9),
(3257, b'0', 'Adolfo Alsina', 1),
(3258, b'0', 'General Alvear', 13),
(3259, b'0', 'La Caldera', 4),
(3260, b'0', 'Sargento Cabral', 5),
(3261, b'0', 'Pellegrini', 1),
(3262, b'0', 'Aluminé', 16),
(3263, b'0', 'Iruya', 4),
(3264, b'0', 'Lácar', 16),
(3265, b'0', 'Fray Mamerto Esquiú', 10),
(3266, b'0', 'Valle Viejo', 10),
(3267, b'0', 'San Cosme', 3),
(3268, b'0', 'Sarmiento', 7),
(3269, b'0', 'El Cuy', 9),
(3270, b'0', 'Las Heras', 13),
(3271, b'0', 'Tapenagá', 5),
(3272, b'0', 'Lavalle', 13),
(3273, b'0', 'Malargüe', 13),
(3274, b'0', 'Presidente Roque Sáenz Peña', 12),
(3275, b'0', 'Catán Lil', 16),
(3276, b'0', 'Presidencia de la Plaza', 5),
(3277, b'0', 'Esquina', 3),
(3278, b'0', 'Ushuaia', 17),
(3279, b'0', 'Antofagasta de la Sierra', 10),
(3280, b'0', 'Ensenada', 1),
(3281, b'0', 'Capital', 18),
(3282, b'0', 'Belgrano', 19),
(3283, b'0', 'Pergamino', 1),
(3284, b'0', 'Puán', 1),
(3285, b'0', 'General Villegas', 1),
(3286, b'0', 'General Obligado', 19),
(3287, b'0', 'Vera', 19),
(3288, b'0', '9 de Julio', 19),
(3289, b'0', 'Adolfo Alsina', 9),
(3290, b'0', 'Quitilipi', 5),
(3291, b'0', 'Güer Aike', 8),
(3292, b'0', 'Capayán', 10),
(3293, b'0', 'Burruyacú', 18),
(3294, b'0', 'San Jerónimo', 19),
(3295, b'0', 'Independencia', 5),
(3296, b'0', 'Curuzú Cuatiá', 3),
(3297, b'0', 'Luján de Cuyo', 13),
(3298, b'0', 'Tinogasta', 10),
(3299, b'0', 'Hucal', 20),
(3300, b'0', 'Itatí', 3),
(3301, b'0', 'Caleu Caleu', 20),
(3302, b'0', 'Lihuel Calel', 20),
(3303, b'0', 'Curacó', 20),
(3304, b'0', 'Confluencia', 16),
(3305, b'0', 'Picunches', 16),
(3306, b'0', 'Añelo', 16),
(3307, b'0', 'Loncopué', 16),
(3308, b'0', 'Ñorquín', 16),
(3309, b'0', 'Pehuenches', 16),
(3310, b'0', 'Montecarlo', 21),
(3311, b'0', 'Eldorado', 21),
(3312, b'0', 'San Pedro', 21),
(3313, b'0', 'Antártida Argentina', 17),
(3314, b'0', 'Minas', 16),
(3315, b'0', 'Chos Malal', 16),
(3316, b'0', 'Cushamen', 7),
(3317, b'0', 'Lago Buenos Aires', 8),
(3318, b'0', 'Pichi Mahuida', 9),
(3319, b'0', 'San Martín', 22),
(3320, b'0', 'Yavi', 15),
(3321, b'0', 'Santa Catalina', 15),
(3322, b'0', 'San Pedro', 15),
(3323, b'0', 'Valle Grande', 15),
(3324, b'0', 'Patiño', 14),
(3325, b'0', 'Bermejo', 14),
(3326, b'0', 'Susques', 15),
(3327, b'0', 'Matacos', 14),
(3328, b'0', 'Los Andes', 4),
(3329, b'0', 'Orán', 4),
(3330, b'0', 'Tilcara', 15),
(3331, b'0', 'Palpalá', 15),
(3332, b'0', 'Loventué', 20),
(3333, b'0', 'Río Senguer', 7),
(3334, b'0', 'Bariloche', 9),
(3335, b'0', 'Huiliches', 16),
(3336, b'0', 'Limay Mahuida', 20),
(3337, b'0', 'Puelén', 20),
(3338, b'0', 'Chalileo', 20),
(3339, b'0', 'Chical Co', 20),
(3340, b'0', 'Quebrachos', 22),
(3341, b'0', 'Monte Caseros', 3),
(3342, b'0', 'Mayor Luis J. Fontana', 5),
(3343, b'0', 'Fray Justo Santa María de Oro', 5),
(3344, b'0', 'General Belgrano', 6),
(3345, b'0', 'Las Colonias', 19),
(3346, b'0', 'San Justo', 19),
(3347, b'0', 'San Cristóbal', 19),
(3348, b'0', 'San Javier', 19),
(3349, b'0', 'Chapaleufú', 20),
(3350, b'0', 'Realicó', 20),
(3351, b'0', 'Maracó', 20),
(3352, b'0', 'Trenel', 20),
(3353, b'0', 'Copo', 22),
(3354, b'0', 'Capital', 20),
(3355, b'0', 'Santa Bárbara', 15),
(3356, b'0', 'Almirante Brown', 5),
(3357, b'0', 'Rosario de la Frontera', 4),
(3358, b'0', 'Collón Curá', 16),
(3359, b'0', 'San Fernando', 1),
(3360, b'0', 'Tigre', 1),
(3361, b'0', 'Santa María', 10),
(3362, b'0', 'Santa Rosa', 10),
(3363, b'0', 'La Paz', 10),
(3364, b'0', 'Río Hondo', 22),
(3365, b'0', 'Vinchina', 6),
(3366, b'0', 'Capital', 6),
(3367, b'0', 'Río Seco', 12),
(3368, b'0', 'Avellaneda', 9),
(3369, b'0', 'General Roca', 9),
(3370, b'0', 'Belgrano', 11),
(3371, b'0', 'Los Lagos', 16),
(3372, b'0', 'Capital', 10),
(3373, b'0', 'Ancasti', 10),
(3374, b'0', 'Pomán', 10),
(3375, b'0', '9 de Julio', 5),
(3376, b'0', 'Pocho', 12),
(3377, b'0', 'Ezeiza', 1),
(3378, b'0', 'Andalgalá', 10),
(3379, b'0', 'Ambato', 10),
(3380, b'0', 'Guasayán', 22),
(3381, b'0', 'Paclín', 10),
(3382, b'0', 'El Alto', 10),
(3383, b'0', 'Sobremonte', 12),
(3384, b'0', 'Río Grande', 17),
(3385, b'0', 'Banda', 22),
(3386, b'0', 'Paso de Indios', 7),
(3387, b'0', 'Capital', 12),
(3388, b'0', 'Mártires', 7),
(3389, b'0', 'Sarmiento', 22),
(3390, b'0', 'Deseado', 8),
(3391, b'0', 'Languiñeo', 7),
(3392, b'0', 'Belgrano', 22),
(3393, b'0', 'Aguirre', 22),
(3394, b'0', 'Maipú', 5),
(3395, b'0', 'San Carlos', 13),
(3396, b'0', 'Tunuyán', 13),
(3397, b'0', 'Robles', 22),
(3398, b'0', 'Loreto', 22),
(3399, b'0', 'Catriló', 20),
(3400, b'0', 'Capital', 22),
(3401, b'0', 'Colón', 23),
(3402, b'0', 'Villaguay', 23),
(3403, b'0', 'Castelli', 1),
(3404, b'0', 'San Salvador', 23),
(3405, b'0', 'Belén', 10),
(3406, b'0', 'Almirante Brown', 1),
(3407, b'0', 'Nogoyá', 23),
(3408, b'0', 'Tala', 23),
(3409, b'0', 'Gualeguay', 23),
(3410, b'0', 'Federación', 23),
(3411, b'0', 'La Paz', 23),
(3412, b'0', 'Feliciano', 23),
(3413, b'0', 'Presidente Perón', 1),
(3414, b'0', 'Junín', 1);
INSERT INTO `localidad` (`id`, `eliminado`, `nombre`, `provincia_id`) VALUES
(3415, b'0', 'Brandsen', 1),
(3416, b'0', 'Chivilcoy', 1),
(3417, b'0', 'Alberti', 1),
(3418, b'0', 'Bragado', 1),
(3419, b'0', 'General Las Heras', 1),
(3420, b'0', 'Carlos Casares', 1),
(3421, b'0', 'Marcos Paz', 1),
(3422, b'0', 'General Viamonte', 1),
(3423, b'0', 'Carlos Tejedor', 1),
(3424, b'0', '25 de Mayo', 1),
(3425, b'0', '9 de Julio', 1),
(3426, b'0', 'Pehuajó', 1),
(3427, b'0', 'Tapalqué', 1),
(3428, b'0', 'Trenque Lauquen', 1),
(3429, b'0', 'General Belgrano', 1),
(3430, b'0', 'Monte', 1),
(3431, b'0', 'Roque Pérez', 1),
(3432, b'0', 'Olavarría', 1),
(3433, b'0', 'Merlo', 1),
(3434, b'0', 'Cainguás', 21),
(3435, b'0', 'Islas del Atlántico Sur', 17),
(3436, b'0', 'Esteban Echeverría', 1),
(3437, b'0', 'Arrecifes', 1),
(3438, b'0', 'Capitán Sarmiento', 1),
(3439, b'0', 'Dr. Manuel Belgrano', 15),
(3440, b'0', 'Carmen de Areco', 1),
(3441, b'0', 'Salto', 1),
(3442, b'0', 'Exaltación de la Cruz', 1),
(3443, b'0', 'San Miguel', 1),
(3444, b'0', 'San Andrés de Giles', 1),
(3445, b'0', 'Mercedes', 1),
(3446, b'0', 'Pilar', 1),
(3447, b'0', 'Luján', 1),
(3448, b'0', 'Famaillá', 18),
(3449, b'0', 'Hurlingham', 1),
(3450, b'0', 'Morón', 1),
(3451, b'0', 'Chacabuco', 1),
(3452, b'0', 'Junín', 13),
(3453, b'0', 'Malvinas Argentinas', 1),
(3454, b'0', 'Tres Lomas', 1),
(3455, b'0', 'Ayacucho', 1),
(3456, b'0', 'Guaminí', 1),
(3457, b'0', 'General San Martín', 1),
(3458, b'0', 'Lincoln', 1),
(3459, b'0', 'Laprida', 1),
(3460, b'0', 'San Isidro', 1),
(3461, b'0', 'Benito Juárez', 1),
(3462, b'0', 'Colón', 1),
(3463, b'0', 'Ituzaingó', 1),
(3464, b'0', 'General Rodríguez', 1),
(3465, b'0', 'Suipacha', 1),
(3466, b'0', 'Tres de Febrero', 1),
(3467, b'0', 'General Felipe Varela', 6),
(3468, b'0', 'Florencio Varela', 1),
(3469, b'0', 'Navarro', 1),
(3470, b'0', 'Cañuelas', 1),
(3471, b'0', 'Moreno', 22),
(3472, b'0', 'Chacabuco', 5),
(3473, b'0', 'San Vicente', 1),
(3474, b'0', 'Lobos', 1),
(3475, b'0', 'General Alvear', 1),
(3476, b'0', 'Quilmes', 1),
(3477, b'0', 'Pila', 1),
(3478, b'0', 'General La Madrid', 1),
(3479, b'0', 'Bolívar', 1),
(3480, b'0', 'Castro Barros', 6),
(3481, b'0', 'Balcarce', 1),
(3482, b'0', 'Hipólito Yrigoyen', 1),
(3483, b'0', 'Capital', 13),
(3484, b'0', 'Dolores', 1),
(3485, b'0', 'Azul', 1),
(3486, b'0', 'Daireaux', 1),
(3487, b'0', 'Godoy Cruz', 13),
(3488, b'0', 'Cafayate', 4),
(3489, b'0', 'Figueroa', 22),
(3490, b'0', 'Saavedra', 1),
(3491, b'0', 'Monte Hermoso', 1),
(3492, b'0', 'Lobería', 1),
(3493, b'0', 'Berisso', 1),
(3494, b'0', 'Tordillo', 1),
(3495, b'0', 'Zárate', 1),
(3496, b'0', 'Ramallo', 1),
(3497, b'0', 'San Nicolás', 1),
(3498, b'0', 'Salavina', 22),
(3499, b'0', 'Pellegrini', 22),
(3500, b'0', 'Avellaneda', 22),
(3501, b'0', '2 de Abril', 5),
(3502, b'0', 'Guaymallén', 13),
(3503, b'0', 'Juárez Celman', 12),
(3504, b'0', 'Capital', 4),
(3505, b'0', 'Silípica', 22),
(3506, b'0', 'La Candelaria', 4),
(3507, b'0', 'Rancul', 20),
(3508, b'0', 'Maipú', 13),
(3509, b'0', 'Guachipas', 4),
(3510, b'0', 'Atreucó', 20),
(3511, b'0', 'San Martín', 13),
(3512, b'0', 'Guatraché', 20),
(3513, b'0', 'Sanagasta', 6),
(3514, b'0', 'Conhelo', 20),
(3515, b'0', 'Libertador General San Martín', 21),
(3516, b'0', 'Rosario Vera Peñaloza', 6),
(3517, b'0', 'San Miguel', 3),
(3518, b'0', 'General Juan Facundo Quiroga', 6),
(3519, b'0', 'Ángel Vicente Peñaloza', 6),
(3520, b'0', 'Empedrado', 3),
(3521, b'0', 'Chilecito', 6),
(3522, b'0', 'Toay', 20),
(3523, b'0', 'Colón', 12),
(3524, b'0', 'Ituzaingó', 3),
(3525, b'0', 'Famatina', 6),
(3526, b'0', 'General López', 19),
(3527, b'0', 'Constitución', 19),
(3528, b'0', 'Caseros', 19),
(3529, b'0', 'Rosario', 19),
(3530, b'0', 'San Lorenzo', 19),
(3531, b'0', 'Iriondo', 19),
(3532, b'0', 'Lanús', 1),
(3533, b'0', 'General San Martín', 6),
(3534, b'0', 'San Blas de Los Sauces', 6),
(3535, b'0', 'San Antonio', 15),
(3536, b'0', 'Rinconada', 15),
(3537, b'0', 'Ramón Lista', 14),
(3538, b'0', 'La Poma', 4),
(3539, b'0', 'Biedma', 7),
(3540, b'0', 'Capital', 3),
(3541, b'0', 'San Luis del Palmar', 3),
(3542, b'0', 'Formosa', 14),
(3543, b'0', 'Pilcomayo', 14),
(3544, b'0', 'Tehuelches', 7),
(3545, b'0', 'Escalante', 7),
(3546, b'0', 'Ischilín', 12),
(3547, b'0', 'Totoral', 12),
(3548, b'0', 'General San Martín', 12),
(3549, b'0', 'San Javier', 12),
(3550, b'0', 'Río Primero', 12),
(3551, b'0', 'Marcos Juárez', 12),
(3552, b'0', 'General Donovan', 5),
(3553, b'0', 'Leandro N. Alem', 1),
(3554, b'0', 'Libertador General San Martín', 5),
(3555, b'0', 'Gastre', 7),
(3556, b'0', 'General Arenales', 1),
(3557, b'0', 'Bermejo', 5),
(3558, b'0', 'Calamuchita', 12),
(3559, b'0', 'Cruz Alta', 18),
(3560, b'0', 'Lules', 18),
(3561, b'0', 'Yerba Buena', 18),
(3562, b'0', 'Tafí Viejo', 18),
(3563, b'0', 'Libertador General San Martín', 11),
(3564, b'0', 'Coronel Pringles', 11),
(3565, b'0', 'Chacabuco', 11),
(3566, b'0', 'Rivadavia', 1),
(3567, b'0', 'Patagones', 1),
(3568, b'0', 'Juan Martín de Pueyrredón', 11),
(3569, b'0', 'General Pedernera', 11),
(3570, b'0', 'Trancas', 18),
(3571, b'0', 'Tafí del Valle', 18),
(3572, b'0', 'Junín', 11),
(3573, b'0', 'Mitre', 22),
(3574, b'0', 'Atamisqui', 22),
(3575, b'0', 'Berón de Astrada', 3),
(3576, b'0', 'Tolhuin', 17),
(3577, b'0', 'Capital', 21),
(3578, b'0', 'Candelaria', 21),
(3579, b'0', 'Jiménez', 22),
(3580, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(3581, b'0', 'Baradero', 1),
(3582, b'0', 'San Pedro', 1),
(3583, b'0', 'Santa Victoria', 4),
(3584, b'0', 'General José de San Martín', 4),
(3585, b'0', 'Rivadavia', 4),
(3586, b'0', 'Rosario de Lerma', 4),
(3587, b'0', 'Ledesma', 15),
(3588, b'0', 'Humahuaca', 15),
(3589, b'0', 'Cochinoca', 15),
(3590, b'0', 'Tumbaya', 15),
(3591, b'0', 'Florentino Ameghino', 1),
(3592, b'0', 'Florentino Ameghino', 7),
(3593, b'0', 'La Cocha', 18),
(3594, b'0', 'Graneros', 18),
(3595, b'0', 'Juan Bautista Alberdi', 18),
(3596, b'0', 'Río Chico', 18),
(3597, b'0', 'Simoca', 18),
(3598, b'0', 'Chicligasta', 18),
(3599, b'0', 'Monteros', 18),
(3600, b'0', 'Leales', 18),
(3601, b'0', 'San Martín', 19),
(3602, b'0', 'La Capital', 19),
(3603, b'0', 'General Manuel Belgrano', 21),
(3604, b'0', 'Guaraní', 21),
(3605, b'0', 'Iguazú', 21),
(3606, b'0', '25 de Mayo', 21),
(3607, b'0', 'Oberá', 21),
(3608, b'0', 'Castellanos', 19),
(3609, b'0', 'Garay', 19),
(3610, b'0', 'Quemú Quemú', 20),
(3611, b'0', 'San Ignacio', 21),
(3612, b'0', 'Utracán', 20),
(3613, b'0', 'San Martín', 3),
(3614, b'0', 'Paso de los Libres', 3),
(3615, b'0', 'Goya', 3),
(3616, b'0', 'Lavalle', 3),
(3617, b'0', 'San Roque', 3),
(3618, b'0', 'General Alvear', 3),
(3619, b'0', 'Concepción', 3),
(3620, b'0', 'Bella Vista', 3),
(3621, b'0', 'Santo Tomé', 3),
(3622, b'0', 'Saladas', 3),
(3623, b'0', 'General Paz', 3),
(3624, b'0', 'Leandro N. Alem', 21),
(3625, b'0', 'San Javier', 21),
(3626, b'0', 'Mburucuyá', 3),
(3627, b'0', 'Concepción', 21),
(3628, b'0', 'Apóstoles', 21),
(3629, b'0', '1° de Mayo', 5),
(3630, b'0', 'San Fernando', 5),
(3631, b'0', 'San Lorenzo', 5),
(3632, b'0', 'Lomas de Zamora', 1),
(3633, b'0', 'Avellaneda', 1),
(3634, b'0', '25 de Mayo', 5),
(3635, b'0', 'General Belgrano', 5),
(3636, b'0', 'Libertad', 5),
(3637, b'0', 'Comandante Fernández', 5),
(3638, b'0', 'Chimbas', 24),
(3639, b'0', 'Capital', 24),
(3640, b'0', 'Rivadavia', 24),
(3641, b'0', '9 de Julio', 24),
(3642, b'0', 'Albardón', 24),
(3643, b'0', 'Angaco', 24),
(3644, b'0', 'Santa Lucía', 24),
(3645, b'0', 'Rawson', 24),
(3646, b'0', '25 de Mayo', 24),
(3647, b'0', 'San Martín', 24),
(3648, b'0', 'Pocito', 24),
(3649, b'0', 'Zonda', 24),
(3650, b'0', 'Ullum', 24),
(3651, b'0', 'Sarmiento', 24),
(3652, b'0', 'Calingasta', 24),
(3653, b'0', 'Iglesia', 24),
(3654, b'0', 'Jáchal', 24),
(3655, b'0', 'Valle Fértil', 24),
(3656, b'0', 'Caucete', 24),
(3657, b'0', 'La Plata', 1),
(3658, b'0', 'Mercedes', 3),
(3659, b'0', 'Adolfo Gonzales Chaves', 1),
(3660, b'0', 'Concordia', 23),
(3661, b'0', 'Federal', 23),
(3662, b'0', 'Gualeguaychú', 23),
(3663, b'0', 'Islas del Ibicuy', 23),
(3664, b'0', 'Victoria', 23),
(3665, b'0', 'Diamante', 23),
(3666, b'0', 'Uruguay', 23),
(3667, b'0', 'Paraná', 23),
(3668, b'0', 'Saladillo', 1),
(3669, b'0', 'Las Flores', 1),
(3670, b'0', 'Rojas', 1),
(3671, b'0', 'Escobar', 1),
(3672, b'0', 'José C. Paz', 1),
(3673, b'0', 'Bahía Blanca', 1),
(3674, b'0', 'San Antonio de Areco', 1),
(3675, b'0', 'Maipú', 1),
(3676, b'0', 'General Alvarado', 1),
(3677, b'0', 'General Pueyrredón', 1),
(3678, b'0', 'Mar Chiquita', 1),
(3679, b'0', 'Villa Gesell', 1),
(3680, b'0', 'Pinamar', 1),
(3681, b'0', 'General Lavalle', 1),
(3682, b'0', 'La Costa', 1),
(3683, b'0', 'Magdalena', 1),
(3684, b'0', 'Sauce', 3),
(3685, b'0', 'Vicente López', 1),
(3686, b'0', 'La Viña', 4),
(3687, b'0', 'Rauch', 1),
(3688, b'0', 'Metán', 4),
(3689, b'0', 'Molinos', 4),
(3690, b'0', 'O\'Higgins', 5),
(3691, b'0', 'Moreno', 1),
(3692, b'0', 'La Matanza', 1),
(3693, b'0', 'Tandil', 1),
(3694, b'0', 'Coronel Suárez', 1),
(3695, b'0', 'Chamical', 6),
(3696, b'0', 'Futaleufú', 7),
(3697, b'0', 'Río Chico', 8),
(3698, b'0', 'San Antonio', 9),
(3699, b'0', 'Alberdi', 22),
(3700, b'0', 'Juan Felipe Ibarra', 22),
(3701, b'0', 'General Taboada', 22),
(3702, b'0', 'Salliqueló', 1),
(3703, b'0', 'Berazategui', 1),
(3704, b'0', 'General Güemes', 4),
(3705, b'0', 'San Carlos', 4),
(3706, b'0', 'General Paz', 1),
(3707, b'0', 'General Guido', 1),
(3708, b'0', 'General Juan Madariaga', 1),
(3709, b'0', 'Lago Argentino', 8),
(3710, b'0', 'Rivadavia', 22),
(3711, b'0', 'Ojo de Agua', 22),
(3712, b'0', 'Choya', 22),
(3713, b'0', 'Gobernador Dupuy', 11),
(3714, b'0', 'Cachi', 4),
(3715, b'0', 'Chicoana', 4),
(3716, b'0', 'Gaiman', 7),
(3717, b'0', 'Rawson', 7),
(3718, b'0', 'General Lamadrid', 6),
(3719, b'0', 'Ayacucho', 11),
(3720, b'0', '12 de Octubre', 5),
(3721, b'0', 'Tulumba', 12),
(3722, b'0', 'Cruz del Eje', 12),
(3723, b'0', 'Punilla', 12),
(3724, b'0', 'Santa Rosa', 13),
(3725, b'0', 'General Güemes', 5),
(3726, b'0', 'General Ortiz de Ocampo', 6),
(3727, b'0', 'General Roca', 12),
(3728, b'0', 'Pilagás', 14),
(3729, b'0', 'Laishi', 14),
(3730, b'0', 'Rivadavia', 13),
(3731, b'0', 'Tornquist', 1),
(3732, b'0', 'La Paz', 13),
(3733, b'0', 'Coronel Pringles', 1),
(3734, b'0', 'Conesa', 9),
(3735, b'0', 'Villarino', 1),
(3736, b'0', 'Pirané', 14),
(3737, b'0', 'General Pinto', 1),
(3738, b'0', 'San Cayetano', 1),
(3739, b'0', 'Tres Arroyos', 1),
(3740, b'0', 'Coronel Dorrego', 1),
(3741, b'0', 'Necochea', 1),
(3742, b'0', 'Independencia', 6),
(3743, b'0', 'Chascomús', 1),
(3744, b'0', 'Punta Indio', 1),
(3745, b'0', 'El Carmen', 15),
(3746, b'0', 'Santa María', 12),
(3747, b'0', 'Valcheta', 9),
(3748, b'0', 'Arauco', 6),
(3749, b'0', 'Lezama', 1),
(3750, b'0', 'Campana', 1),
(3751, b'0', 'Magallanes', 8),
(3752, b'0', 'Corpen Aike', 8),
(3753, b'0', 'Minas', 12),
(3754, b'0', 'San Alberto', 12),
(3755, b'0', 'Río Segundo', 12),
(3756, b'0', 'San Justo', 12),
(3757, b'0', 'Unión', 12),
(3758, b'0', 'Tercero Arriba', 12),
(3759, b'0', 'Cerrillos', 4),
(3760, b'0', 'Río Cuarto', 12),
(3761, b'0', 'Tupungato', 13),
(3762, b'0', '9 de Julio', 9),
(3763, b'0', 'Ñorquinco', 9),
(3764, b'0', 'San Rafael', 13),
(3765, b'0', 'Anta', 4),
(3766, b'0', 'Picún Leufú', 16),
(3767, b'0', 'Zapala', 16),
(3768, b'0', '25 de Mayo', 9),
(3769, b'0', 'Telsen', 7),
(3770, b'0', 'Pilcaniyeu', 9),
(3771, b'0', 'Adolfo Alsina', 1),
(3772, b'0', 'General Alvear', 13),
(3773, b'0', 'La Caldera', 4),
(3774, b'0', 'Sargento Cabral', 5),
(3775, b'0', 'Pellegrini', 1),
(3776, b'0', 'Aluminé', 16),
(3777, b'0', 'Iruya', 4),
(3778, b'0', 'Lácar', 16),
(3779, b'0', 'Fray Mamerto Esquiú', 10),
(3780, b'0', 'Valle Viejo', 10),
(3781, b'0', 'San Cosme', 3),
(3782, b'0', 'Sarmiento', 7),
(3783, b'0', 'El Cuy', 9),
(3784, b'0', 'Las Heras', 13),
(3785, b'0', 'Tapenagá', 5),
(3786, b'0', 'Lavalle', 13),
(3787, b'0', 'Malargüe', 13),
(3788, b'0', 'Presidente Roque Sáenz Peña', 12),
(3789, b'0', 'Catán Lil', 16),
(3790, b'0', 'Presidencia de la Plaza', 5),
(3791, b'0', 'Esquina', 3),
(3792, b'0', 'Ushuaia', 17),
(3793, b'0', 'Antofagasta de la Sierra', 10),
(3794, b'0', 'Ensenada', 1),
(3795, b'0', 'Capital', 18),
(3796, b'0', 'Belgrano', 19),
(3797, b'0', 'Pergamino', 1),
(3798, b'0', 'Puán', 1),
(3799, b'0', 'General Villegas', 1),
(3800, b'0', 'General Obligado', 19),
(3801, b'0', 'Vera', 19),
(3802, b'0', '9 de Julio', 19),
(3803, b'0', 'Adolfo Alsina', 9),
(3804, b'0', 'Quitilipi', 5),
(3805, b'0', 'Güer Aike', 8),
(3806, b'0', 'Capayán', 10),
(3807, b'0', 'Burruyacú', 18),
(3808, b'0', 'San Jerónimo', 19),
(3809, b'0', 'Independencia', 5),
(3810, b'0', 'Curuzú Cuatiá', 3),
(3811, b'0', 'Luján de Cuyo', 13),
(3812, b'0', 'Tinogasta', 10),
(3813, b'0', 'Hucal', 20),
(3814, b'0', 'Itatí', 3),
(3815, b'0', 'Caleu Caleu', 20),
(3816, b'0', 'Lihuel Calel', 20),
(3817, b'0', 'Curacó', 20),
(3818, b'0', 'Confluencia', 16),
(3819, b'0', 'Picunches', 16),
(3820, b'0', 'Añelo', 16),
(3821, b'0', 'Loncopué', 16),
(3822, b'0', 'Ñorquín', 16),
(3823, b'0', 'Pehuenches', 16),
(3824, b'0', 'Montecarlo', 21),
(3825, b'0', 'Eldorado', 21),
(3826, b'0', 'San Pedro', 21),
(3827, b'0', 'Antártida Argentina', 17),
(3828, b'0', 'Minas', 16),
(3829, b'0', 'Chos Malal', 16),
(3830, b'0', 'Cushamen', 7),
(3831, b'0', 'Lago Buenos Aires', 8),
(3832, b'0', 'Pichi Mahuida', 9),
(3833, b'0', 'San Martín', 22),
(3834, b'0', 'Yavi', 15),
(3835, b'0', 'Santa Catalina', 15),
(3836, b'0', 'San Pedro', 15),
(3837, b'0', 'Valle Grande', 15),
(3838, b'0', 'Patiño', 14),
(3839, b'0', 'Bermejo', 14),
(3840, b'0', 'Susques', 15),
(3841, b'0', 'Matacos', 14),
(3842, b'0', 'Los Andes', 4),
(3843, b'0', 'Orán', 4),
(3844, b'0', 'Tilcara', 15),
(3845, b'0', 'Palpalá', 15),
(3846, b'0', 'Loventué', 20),
(3847, b'0', 'Río Senguer', 7),
(3848, b'0', 'Bariloche', 9),
(3849, b'0', 'Huiliches', 16),
(3850, b'0', 'Limay Mahuida', 20),
(3851, b'0', 'Puelén', 20),
(3852, b'0', 'Chalileo', 20),
(3853, b'0', 'Chical Co', 20),
(3854, b'0', 'Quebrachos', 22),
(3855, b'0', 'Monte Caseros', 3),
(3856, b'0', 'Mayor Luis J. Fontana', 5),
(3857, b'0', 'Fray Justo Santa María de Oro', 5),
(3858, b'0', 'General Belgrano', 6),
(3859, b'0', 'Las Colonias', 19),
(3860, b'0', 'San Justo', 19),
(3861, b'0', 'San Cristóbal', 19),
(3862, b'0', 'San Javier', 19),
(3863, b'0', 'Chapaleufú', 20),
(3864, b'0', 'Realicó', 20),
(3865, b'0', 'Maracó', 20),
(3866, b'0', 'Trenel', 20),
(3867, b'0', 'Copo', 22),
(3868, b'0', 'Capital', 20),
(3869, b'0', 'Santa Bárbara', 15),
(3870, b'0', 'Almirante Brown', 5),
(3871, b'0', 'Rosario de la Frontera', 4),
(3872, b'0', 'Collón Curá', 16),
(3873, b'0', 'San Fernando', 1),
(3874, b'0', 'Tigre', 1),
(3875, b'0', 'Santa María', 10),
(3876, b'0', 'Santa Rosa', 10),
(3877, b'0', 'La Paz', 10),
(3878, b'0', 'Río Hondo', 22),
(3879, b'0', 'Vinchina', 6),
(3880, b'0', 'Capital', 6),
(3881, b'0', 'Río Seco', 12),
(3882, b'0', 'Avellaneda', 9),
(3883, b'0', 'General Roca', 9),
(3884, b'0', 'Belgrano', 11),
(3885, b'0', 'Los Lagos', 16),
(3886, b'0', 'Capital', 10),
(3887, b'0', 'Ancasti', 10),
(3888, b'0', 'Pomán', 10),
(3889, b'0', '9 de Julio', 5),
(3890, b'0', 'Pocho', 12),
(3891, b'0', 'Ezeiza', 1),
(3892, b'0', 'Andalgalá', 10),
(3893, b'0', 'Ambato', 10),
(3894, b'0', 'Guasayán', 22),
(3895, b'0', 'Paclín', 10),
(3896, b'0', 'El Alto', 10),
(3897, b'0', 'Sobremonte', 12),
(3898, b'0', 'Río Grande', 17),
(3899, b'0', 'Banda', 22),
(3900, b'0', 'Paso de Indios', 7),
(3901, b'0', 'Capital', 12),
(3902, b'0', 'Mártires', 7),
(3903, b'0', 'Sarmiento', 22),
(3904, b'0', 'Deseado', 8),
(3905, b'0', 'Languiñeo', 7),
(3906, b'0', 'Belgrano', 22),
(3907, b'0', 'Aguirre', 22),
(3908, b'0', 'Maipú', 5),
(3909, b'0', 'San Carlos', 13),
(3910, b'0', 'Tunuyán', 13),
(3911, b'0', 'Robles', 22),
(3912, b'0', 'Loreto', 22),
(3913, b'0', 'Catriló', 20),
(3914, b'0', 'Capital', 22),
(3915, b'0', 'Colón', 23),
(3916, b'0', 'Villaguay', 23),
(3917, b'0', 'Castelli', 1),
(3918, b'0', 'San Salvador', 23),
(3919, b'0', 'Belén', 10),
(3920, b'0', 'Almirante Brown', 1),
(3921, b'0', 'Nogoyá', 23),
(3922, b'0', 'Tala', 23),
(3923, b'0', 'Gualeguay', 23),
(3924, b'0', 'Federación', 23),
(3925, b'0', 'La Paz', 23),
(3926, b'0', 'Feliciano', 23),
(3927, b'0', 'Presidente Perón', 1),
(3928, b'0', 'Junín', 1),
(3929, b'0', 'Brandsen', 1),
(3930, b'0', 'Chivilcoy', 1),
(3931, b'0', 'Alberti', 1),
(3932, b'0', 'Bragado', 1),
(3933, b'0', 'General Las Heras', 1),
(3934, b'0', 'Carlos Casares', 1),
(3935, b'0', 'Marcos Paz', 1),
(3936, b'0', 'General Viamonte', 1),
(3937, b'0', 'Carlos Tejedor', 1),
(3938, b'0', '25 de Mayo', 1),
(3939, b'0', '9 de Julio', 1),
(3940, b'0', 'Pehuajó', 1),
(3941, b'0', 'Tapalqué', 1),
(3942, b'0', 'Trenque Lauquen', 1),
(3943, b'0', 'General Belgrano', 1),
(3944, b'0', 'Monte', 1),
(3945, b'0', 'Roque Pérez', 1),
(3946, b'0', 'Olavarría', 1),
(3947, b'0', 'Merlo', 1),
(3948, b'0', 'Cainguás', 21),
(3949, b'0', 'Islas del Atlántico Sur', 17),
(3950, b'0', 'Esteban Echeverría', 1),
(3951, b'0', 'Arrecifes', 1),
(3952, b'0', 'Capitán Sarmiento', 1),
(3953, b'0', 'Dr. Manuel Belgrano', 15),
(3954, b'0', 'Carmen de Areco', 1),
(3955, b'0', 'Salto', 1),
(3956, b'0', 'Exaltación de la Cruz', 1),
(3957, b'0', 'San Miguel', 1),
(3958, b'0', 'San Andrés de Giles', 1),
(3959, b'0', 'Mercedes', 1),
(3960, b'0', 'Pilar', 1),
(3961, b'0', 'Luján', 1),
(3962, b'0', 'Famaillá', 18),
(3963, b'0', 'Hurlingham', 1),
(3964, b'0', 'Morón', 1),
(3965, b'0', 'Chacabuco', 1),
(3966, b'0', 'Junín', 13),
(3967, b'0', 'Malvinas Argentinas', 1),
(3968, b'0', 'Tres Lomas', 1),
(3969, b'0', 'Ayacucho', 1),
(3970, b'0', 'Guaminí', 1),
(3971, b'0', 'General San Martín', 1),
(3972, b'0', 'Lincoln', 1),
(3973, b'0', 'Laprida', 1),
(3974, b'0', 'San Isidro', 1),
(3975, b'0', 'Benito Juárez', 1),
(3976, b'0', 'Colón', 1),
(3977, b'0', 'Ituzaingó', 1),
(3978, b'0', 'General Rodríguez', 1),
(3979, b'0', 'Suipacha', 1),
(3980, b'0', 'Tres de Febrero', 1),
(3981, b'0', 'General Felipe Varela', 6),
(3982, b'0', 'Florencio Varela', 1),
(3983, b'0', 'Navarro', 1),
(3984, b'0', 'Cañuelas', 1),
(3985, b'0', 'Moreno', 22),
(3986, b'0', 'Chacabuco', 5),
(3987, b'0', 'San Vicente', 1),
(3988, b'0', 'Lobos', 1),
(3989, b'0', 'General Alvear', 1),
(3990, b'0', 'Quilmes', 1),
(3991, b'0', 'Pila', 1),
(3992, b'0', 'General La Madrid', 1),
(3993, b'0', 'Bolívar', 1),
(3994, b'0', 'Castro Barros', 6),
(3995, b'0', 'Balcarce', 1),
(3996, b'0', 'Hipólito Yrigoyen', 1),
(3997, b'0', 'Capital', 13),
(3998, b'0', 'Dolores', 1),
(3999, b'0', 'Azul', 1),
(4000, b'0', 'Daireaux', 1),
(4001, b'0', 'Godoy Cruz', 13),
(4002, b'0', 'Cafayate', 4),
(4003, b'0', 'Figueroa', 22),
(4004, b'0', 'Saavedra', 1),
(4005, b'0', 'Monte Hermoso', 1),
(4006, b'0', 'Lobería', 1),
(4007, b'0', 'Berisso', 1),
(4008, b'0', 'Tordillo', 1),
(4009, b'0', 'Zárate', 1),
(4010, b'0', 'Ramallo', 1),
(4011, b'0', 'San Nicolás', 1),
(4012, b'0', 'Salavina', 22),
(4013, b'0', 'Pellegrini', 22),
(4014, b'0', 'Avellaneda', 22),
(4015, b'0', '2 de Abril', 5),
(4016, b'0', 'Guaymallén', 13),
(4017, b'0', 'Juárez Celman', 12),
(4018, b'0', 'Capital', 4),
(4019, b'0', 'Silípica', 22),
(4020, b'0', 'La Candelaria', 4),
(4021, b'0', 'Rancul', 20),
(4022, b'0', 'Maipú', 13),
(4023, b'0', 'Guachipas', 4),
(4024, b'0', 'Atreucó', 20),
(4025, b'0', 'San Martín', 13),
(4026, b'0', 'Guatraché', 20),
(4027, b'0', 'Sanagasta', 6),
(4028, b'0', 'Conhelo', 20),
(4029, b'0', 'Libertador General San Martín', 21),
(4030, b'0', 'Rosario Vera Peñaloza', 6),
(4031, b'0', 'San Miguel', 3),
(4032, b'0', 'General Juan Facundo Quiroga', 6),
(4033, b'0', 'Ángel Vicente Peñaloza', 6),
(4034, b'0', 'Empedrado', 3),
(4035, b'0', 'Chilecito', 6),
(4036, b'0', 'Toay', 20),
(4037, b'0', 'Colón', 12),
(4038, b'0', 'Ituzaingó', 3),
(4039, b'0', 'Famatina', 6),
(4040, b'0', 'General López', 19),
(4041, b'0', 'Constitución', 19),
(4042, b'0', 'Caseros', 19),
(4043, b'0', 'Rosario', 19),
(4044, b'0', 'San Lorenzo', 19),
(4045, b'0', 'Iriondo', 19),
(4046, b'0', 'Lanús', 1),
(4047, b'0', 'General San Martín', 6),
(4048, b'0', 'San Blas de Los Sauces', 6),
(4049, b'0', 'San Antonio', 15),
(4050, b'0', 'Rinconada', 15),
(4051, b'0', 'Ramón Lista', 14),
(4052, b'0', 'La Poma', 4),
(4053, b'0', 'Biedma', 7),
(4054, b'0', 'Capital', 3),
(4055, b'0', 'San Luis del Palmar', 3),
(4056, b'0', 'Formosa', 14),
(4057, b'0', 'Pilcomayo', 14),
(4058, b'0', 'Tehuelches', 7),
(4059, b'0', 'Escalante', 7),
(4060, b'0', 'Ischilín', 12),
(4061, b'0', 'Totoral', 12),
(4062, b'0', 'General San Martín', 12),
(4063, b'0', 'San Javier', 12),
(4064, b'0', 'Río Primero', 12),
(4065, b'0', 'Marcos Juárez', 12),
(4066, b'0', 'General Donovan', 5),
(4067, b'0', 'Leandro N. Alem', 1),
(4068, b'0', 'Libertador General San Martín', 5),
(4069, b'0', 'Gastre', 7),
(4070, b'0', 'General Arenales', 1),
(4071, b'0', 'Bermejo', 5),
(4072, b'0', 'Calamuchita', 12),
(4073, b'0', 'Cruz Alta', 18),
(4074, b'0', 'Lules', 18),
(4075, b'0', 'Yerba Buena', 18),
(4076, b'0', 'Tafí Viejo', 18),
(4077, b'0', 'Libertador General San Martín', 11),
(4078, b'0', 'Coronel Pringles', 11),
(4079, b'0', 'Chacabuco', 11),
(4080, b'0', 'Rivadavia', 1),
(4081, b'0', 'Patagones', 1),
(4082, b'0', 'Juan Martín de Pueyrredón', 11),
(4083, b'0', 'General Pedernera', 11),
(4084, b'0', 'Trancas', 18),
(4085, b'0', 'Tafí del Valle', 18),
(4086, b'0', 'Junín', 11),
(4087, b'0', 'Mitre', 22),
(4088, b'0', 'Atamisqui', 22),
(4089, b'0', 'Berón de Astrada', 3),
(4090, b'0', 'Tolhuin', 17),
(4091, b'0', 'Capital', 21),
(4092, b'0', 'Candelaria', 21),
(4093, b'0', 'Jiménez', 22),
(4094, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(4095, b'0', 'Baradero', 1),
(4096, b'0', 'San Pedro', 1),
(4097, b'0', 'Santa Victoria', 4),
(4098, b'0', 'General José de San Martín', 4),
(4099, b'0', 'Rivadavia', 4),
(4100, b'0', 'Rosario de Lerma', 4),
(4101, b'0', 'Ledesma', 15),
(4102, b'0', 'Humahuaca', 15),
(4103, b'0', 'Cochinoca', 15),
(4104, b'0', 'Tumbaya', 15),
(4105, b'0', 'Florentino Ameghino', 1),
(4106, b'0', 'Florentino Ameghino', 7),
(4107, b'0', 'La Cocha', 18),
(4108, b'0', 'Graneros', 18),
(4109, b'0', 'Juan Bautista Alberdi', 18),
(4110, b'0', 'Río Chico', 18),
(4111, b'0', 'Simoca', 18),
(4112, b'0', 'Chicligasta', 18),
(4113, b'0', 'Monteros', 18),
(4114, b'0', 'Leales', 18),
(4115, b'0', 'San Martín', 19),
(4116, b'0', 'La Capital', 19),
(4117, b'0', 'General Manuel Belgrano', 21),
(4118, b'0', 'Guaraní', 21),
(4119, b'0', 'Iguazú', 21),
(4120, b'0', '25 de Mayo', 21),
(4121, b'0', 'Oberá', 21),
(4122, b'0', 'Castellanos', 19),
(4123, b'0', 'Garay', 19),
(4124, b'0', 'Quemú Quemú', 20),
(4125, b'0', 'San Ignacio', 21),
(4126, b'0', 'Utracán', 20),
(4127, b'0', 'San Martín', 3),
(4128, b'0', 'Paso de los Libres', 3),
(4129, b'0', 'Goya', 3),
(4130, b'0', 'Lavalle', 3),
(4131, b'0', 'San Roque', 3),
(4132, b'0', 'General Alvear', 3),
(4133, b'0', 'Concepción', 3),
(4134, b'0', 'Bella Vista', 3),
(4135, b'0', 'Santo Tomé', 3),
(4136, b'0', 'Saladas', 3),
(4137, b'0', 'General Paz', 3),
(4138, b'0', 'Leandro N. Alem', 21),
(4139, b'0', 'San Javier', 21),
(4140, b'0', 'Mburucuyá', 3),
(4141, b'0', 'Concepción', 21),
(4142, b'0', 'Apóstoles', 21),
(4143, b'0', '1° de Mayo', 5),
(4144, b'0', 'San Fernando', 5),
(4145, b'0', 'San Lorenzo', 5),
(4146, b'0', 'Lomas de Zamora', 1),
(4147, b'0', 'Avellaneda', 1),
(4148, b'0', '25 de Mayo', 5),
(4149, b'0', 'General Belgrano', 5),
(4150, b'0', 'Libertad', 5),
(4151, b'0', 'Comandante Fernández', 5),
(4152, b'0', 'Chimbas', 24),
(4153, b'0', 'Capital', 24),
(4154, b'0', 'Rivadavia', 24),
(4155, b'0', '9 de Julio', 24),
(4156, b'0', 'Albardón', 24),
(4157, b'0', 'Angaco', 24),
(4158, b'0', 'Santa Lucía', 24),
(4159, b'0', 'Rawson', 24),
(4160, b'0', '25 de Mayo', 24),
(4161, b'0', 'San Martín', 24),
(4162, b'0', 'Pocito', 24),
(4163, b'0', 'Zonda', 24),
(4164, b'0', 'Ullum', 24),
(4165, b'0', 'Sarmiento', 24),
(4166, b'0', 'Calingasta', 24),
(4167, b'0', 'Iglesia', 24),
(4168, b'0', 'Jáchal', 24),
(4169, b'0', 'Valle Fértil', 24),
(4170, b'0', 'Caucete', 24),
(4171, b'0', 'La Plata', 1),
(4172, b'0', 'Mercedes', 3),
(4173, b'0', 'Adolfo Gonzales Chaves', 1),
(4174, b'0', 'Concordia', 23),
(4175, b'0', 'Federal', 23),
(4176, b'0', 'Gualeguaychú', 23),
(4177, b'0', 'Islas del Ibicuy', 23),
(4178, b'0', 'Victoria', 23),
(4179, b'0', 'Diamante', 23),
(4180, b'0', 'Uruguay', 23),
(4181, b'0', 'Paraná', 23),
(4182, b'0', 'Saladillo', 1),
(4183, b'0', 'Las Flores', 1),
(4184, b'0', 'Rojas', 1),
(4185, b'0', 'Escobar', 1),
(4186, b'0', 'José C. Paz', 1),
(4187, b'0', 'Bahía Blanca', 1),
(4188, b'0', 'San Antonio de Areco', 1),
(4189, b'0', 'Maipú', 1),
(4190, b'0', 'General Alvarado', 1),
(4191, b'0', 'General Pueyrredón', 1),
(4192, b'0', 'Mar Chiquita', 1),
(4193, b'0', 'Villa Gesell', 1),
(4194, b'0', 'Pinamar', 1),
(4195, b'0', 'General Lavalle', 1),
(4196, b'0', 'La Costa', 1),
(4197, b'0', 'Magdalena', 1),
(4198, b'0', 'Sauce', 3),
(4199, b'0', 'Vicente López', 1),
(4200, b'0', 'La Viña', 4),
(4201, b'0', 'Rauch', 1),
(4202, b'0', 'Metán', 4),
(4203, b'0', 'Molinos', 4),
(4204, b'0', 'O\'Higgins', 5),
(4205, b'0', 'Moreno', 1),
(4206, b'0', 'La Matanza', 1),
(4207, b'0', 'Tandil', 1),
(4208, b'0', 'Coronel Suárez', 1),
(4209, b'0', 'Chamical', 6),
(4210, b'0', 'Futaleufú', 7),
(4211, b'0', 'Río Chico', 8),
(4212, b'0', 'San Antonio', 9),
(4213, b'0', 'Alberdi', 22),
(4214, b'0', 'Juan Felipe Ibarra', 22),
(4215, b'0', 'General Taboada', 22),
(4216, b'0', 'Salliqueló', 1),
(4217, b'0', 'Berazategui', 1),
(4218, b'0', 'General Güemes', 4),
(4219, b'0', 'San Carlos', 4),
(4220, b'0', 'General Paz', 1),
(4221, b'0', 'General Guido', 1),
(4222, b'0', 'General Juan Madariaga', 1),
(4223, b'0', 'Lago Argentino', 8),
(4224, b'0', 'Rivadavia', 22),
(4225, b'0', 'Ojo de Agua', 22),
(4226, b'0', 'Choya', 22),
(4227, b'0', 'Gobernador Dupuy', 11),
(4228, b'0', 'Cachi', 4),
(4229, b'0', 'Chicoana', 4),
(4230, b'0', 'Gaiman', 7),
(4231, b'0', 'Rawson', 7),
(4232, b'0', 'General Lamadrid', 6),
(4233, b'0', 'Ayacucho', 11),
(4234, b'0', '12 de Octubre', 5),
(4235, b'0', 'Tulumba', 12),
(4236, b'0', 'Cruz del Eje', 12),
(4237, b'0', 'Punilla', 12),
(4238, b'0', 'Santa Rosa', 13),
(4239, b'0', 'General Güemes', 5),
(4240, b'0', 'General Ortiz de Ocampo', 6),
(4241, b'0', 'General Roca', 12),
(4242, b'0', 'Pilagás', 14),
(4243, b'0', 'Laishi', 14),
(4244, b'0', 'Rivadavia', 13),
(4245, b'0', 'Tornquist', 1),
(4246, b'0', 'La Paz', 13),
(4247, b'0', 'Coronel Pringles', 1),
(4248, b'0', 'Conesa', 9),
(4249, b'0', 'Villarino', 1),
(4250, b'0', 'Pirané', 14),
(4251, b'0', 'General Pinto', 1),
(4252, b'0', 'San Cayetano', 1),
(4253, b'0', 'Tres Arroyos', 1),
(4254, b'0', 'Coronel Dorrego', 1),
(4255, b'0', 'Necochea', 1),
(4256, b'0', 'Independencia', 6),
(4257, b'0', 'Chascomús', 1),
(4258, b'0', 'Punta Indio', 1),
(4259, b'0', 'El Carmen', 15),
(4260, b'0', 'Santa María', 12),
(4261, b'0', 'Valcheta', 9),
(4262, b'0', 'Arauco', 6),
(4263, b'0', 'Lezama', 1),
(4264, b'0', 'Campana', 1),
(4265, b'0', 'Magallanes', 8),
(4266, b'0', 'Corpen Aike', 8),
(4267, b'0', 'Minas', 12),
(4268, b'0', 'San Alberto', 12),
(4269, b'0', 'Río Segundo', 12),
(4270, b'0', 'San Justo', 12),
(4271, b'0', 'Unión', 12),
(4272, b'0', 'Tercero Arriba', 12),
(4273, b'0', 'Cerrillos', 4),
(4274, b'0', 'Río Cuarto', 12),
(4275, b'0', 'Tupungato', 13),
(4276, b'0', '9 de Julio', 9),
(4277, b'0', 'Ñorquinco', 9),
(4278, b'0', 'San Rafael', 13),
(4279, b'0', 'Anta', 4),
(4280, b'0', 'Picún Leufú', 16),
(4281, b'0', 'Zapala', 16),
(4282, b'0', '25 de Mayo', 9),
(4283, b'0', 'Telsen', 7),
(4284, b'0', 'Pilcaniyeu', 9),
(4285, b'0', 'Adolfo Alsina', 1),
(4286, b'0', 'General Alvear', 13),
(4287, b'0', 'La Caldera', 4),
(4288, b'0', 'Sargento Cabral', 5),
(4289, b'0', 'Pellegrini', 1),
(4290, b'0', 'Aluminé', 16),
(4291, b'0', 'Iruya', 4),
(4292, b'0', 'Lácar', 16),
(4293, b'0', 'Fray Mamerto Esquiú', 10),
(4294, b'0', 'Valle Viejo', 10),
(4295, b'0', 'San Cosme', 3),
(4296, b'0', 'Sarmiento', 7),
(4297, b'0', 'El Cuy', 9),
(4298, b'0', 'Las Heras', 13),
(4299, b'0', 'Tapenagá', 5),
(4300, b'0', 'Lavalle', 13),
(4301, b'0', 'Malargüe', 13),
(4302, b'0', 'Presidente Roque Sáenz Peña', 12),
(4303, b'0', 'Catán Lil', 16),
(4304, b'0', 'Presidencia de la Plaza', 5),
(4305, b'0', 'Esquina', 3),
(4306, b'0', 'Ushuaia', 17),
(4307, b'0', 'Antofagasta de la Sierra', 10),
(4308, b'0', 'Ensenada', 1),
(4309, b'0', 'Capital', 18),
(4310, b'0', 'Belgrano', 19),
(4311, b'0', 'Pergamino', 1),
(4312, b'0', 'Puán', 1),
(4313, b'0', 'General Villegas', 1),
(4314, b'0', 'General Obligado', 19),
(4315, b'0', 'Vera', 19),
(4316, b'0', '9 de Julio', 19),
(4317, b'0', 'Adolfo Alsina', 9),
(4318, b'0', 'Quitilipi', 5),
(4319, b'0', 'Güer Aike', 8),
(4320, b'0', 'Capayán', 10),
(4321, b'0', 'Burruyacú', 18),
(4322, b'0', 'San Jerónimo', 19),
(4323, b'0', 'Independencia', 5),
(4324, b'0', 'Curuzú Cuatiá', 3),
(4325, b'0', 'Luján de Cuyo', 13),
(4326, b'0', 'Tinogasta', 10),
(4327, b'0', 'Hucal', 20),
(4328, b'0', 'Itatí', 3),
(4329, b'0', 'Caleu Caleu', 20),
(4330, b'0', 'Lihuel Calel', 20),
(4331, b'0', 'Curacó', 20),
(4332, b'0', 'Confluencia', 16),
(4333, b'0', 'Picunches', 16),
(4334, b'0', 'Añelo', 16),
(4335, b'0', 'Loncopué', 16),
(4336, b'0', 'Ñorquín', 16),
(4337, b'0', 'Pehuenches', 16),
(4338, b'0', 'Montecarlo', 21),
(4339, b'0', 'Eldorado', 21),
(4340, b'0', 'San Pedro', 21),
(4341, b'0', 'Antártida Argentina', 17),
(4342, b'0', 'Minas', 16),
(4343, b'0', 'Chos Malal', 16),
(4344, b'0', 'Cushamen', 7),
(4345, b'0', 'Lago Buenos Aires', 8),
(4346, b'0', 'Pichi Mahuida', 9),
(4347, b'0', 'San Martín', 22),
(4348, b'0', 'Yavi', 15),
(4349, b'0', 'Santa Catalina', 15),
(4350, b'0', 'San Pedro', 15),
(4351, b'0', 'Valle Grande', 15),
(4352, b'0', 'Patiño', 14),
(4353, b'0', 'Bermejo', 14),
(4354, b'0', 'Susques', 15),
(4355, b'0', 'Matacos', 14),
(4356, b'0', 'Los Andes', 4),
(4357, b'0', 'Orán', 4),
(4358, b'0', 'Tilcara', 15),
(4359, b'0', 'Palpalá', 15),
(4360, b'0', 'Loventué', 20),
(4361, b'0', 'Río Senguer', 7),
(4362, b'0', 'Bariloche', 9),
(4363, b'0', 'Huiliches', 16),
(4364, b'0', 'Limay Mahuida', 20),
(4365, b'0', 'Puelén', 20),
(4366, b'0', 'Chalileo', 20),
(4367, b'0', 'Chical Co', 20),
(4368, b'0', 'Quebrachos', 22),
(4369, b'0', 'Monte Caseros', 3),
(4370, b'0', 'Mayor Luis J. Fontana', 5),
(4371, b'0', 'Fray Justo Santa María de Oro', 5),
(4372, b'0', 'General Belgrano', 6),
(4373, b'0', 'Las Colonias', 19),
(4374, b'0', 'San Justo', 19),
(4375, b'0', 'San Cristóbal', 19),
(4376, b'0', 'San Javier', 19),
(4377, b'0', 'Chapaleufú', 20),
(4378, b'0', 'Realicó', 20),
(4379, b'0', 'Maracó', 20),
(4380, b'0', 'Trenel', 20),
(4381, b'0', 'Copo', 22),
(4382, b'0', 'Capital', 20),
(4383, b'0', 'Santa Bárbara', 15),
(4384, b'0', 'Almirante Brown', 5),
(4385, b'0', 'Rosario de la Frontera', 4),
(4386, b'0', 'Collón Curá', 16),
(4387, b'0', 'San Fernando', 1),
(4388, b'0', 'Tigre', 1),
(4389, b'0', 'Santa María', 10),
(4390, b'0', 'Santa Rosa', 10),
(4391, b'0', 'La Paz', 10),
(4392, b'0', 'Río Hondo', 22),
(4393, b'0', 'Vinchina', 6),
(4394, b'0', 'Capital', 6),
(4395, b'0', 'Río Seco', 12),
(4396, b'0', 'Avellaneda', 9),
(4397, b'0', 'General Roca', 9),
(4398, b'0', 'Belgrano', 11),
(4399, b'0', 'Los Lagos', 16),
(4400, b'0', 'Capital', 10),
(4401, b'0', 'Ancasti', 10),
(4402, b'0', 'Pomán', 10),
(4403, b'0', '9 de Julio', 5),
(4404, b'0', 'Pocho', 12),
(4405, b'0', 'Ezeiza', 1),
(4406, b'0', 'Andalgalá', 10),
(4407, b'0', 'Ambato', 10),
(4408, b'0', 'Guasayán', 22),
(4409, b'0', 'Paclín', 10),
(4410, b'0', 'El Alto', 10),
(4411, b'0', 'Sobremonte', 12),
(4412, b'0', 'Río Grande', 17),
(4413, b'0', 'Banda', 22),
(4414, b'0', 'Paso de Indios', 7),
(4415, b'0', 'Capital', 12),
(4416, b'0', 'Mártires', 7),
(4417, b'0', 'Sarmiento', 22),
(4418, b'0', 'Deseado', 8),
(4419, b'0', 'Languiñeo', 7),
(4420, b'0', 'Belgrano', 22),
(4421, b'0', 'Aguirre', 22),
(4422, b'0', 'Maipú', 5),
(4423, b'0', 'San Carlos', 13),
(4424, b'0', 'Tunuyán', 13),
(4425, b'0', 'Robles', 22),
(4426, b'0', 'Loreto', 22),
(4427, b'0', 'Catriló', 20),
(4428, b'0', 'Capital', 22),
(4429, b'0', 'Colón', 23),
(4430, b'0', 'Villaguay', 23),
(4431, b'0', 'Castelli', 1),
(4432, b'0', 'San Salvador', 23),
(4433, b'0', 'Belén', 10),
(4434, b'0', 'Almirante Brown', 1),
(4435, b'0', 'Nogoyá', 23),
(4436, b'0', 'Tala', 23),
(4437, b'0', 'Gualeguay', 23),
(4438, b'0', 'Federación', 23),
(4439, b'0', 'La Paz', 23),
(4440, b'0', 'Feliciano', 23),
(4441, b'0', 'Presidente Perón', 1),
(4442, b'0', 'Junín', 1),
(4443, b'0', 'Brandsen', 1),
(4444, b'0', 'Chivilcoy', 1),
(4445, b'0', 'Alberti', 1),
(4446, b'0', 'Bragado', 1),
(4447, b'0', 'General Las Heras', 1),
(4448, b'0', 'Carlos Casares', 1),
(4449, b'0', 'Marcos Paz', 1),
(4450, b'0', 'General Viamonte', 1),
(4451, b'0', 'Carlos Tejedor', 1),
(4452, b'0', '25 de Mayo', 1),
(4453, b'0', '9 de Julio', 1),
(4454, b'0', 'Pehuajó', 1),
(4455, b'0', 'Tapalqué', 1),
(4456, b'0', 'Trenque Lauquen', 1),
(4457, b'0', 'General Belgrano', 1),
(4458, b'0', 'Monte', 1),
(4459, b'0', 'Roque Pérez', 1),
(4460, b'0', 'Olavarría', 1),
(4461, b'0', 'Merlo', 1),
(4462, b'0', 'Cainguás', 21),
(4463, b'0', 'Islas del Atlántico Sur', 17),
(4464, b'0', 'Esteban Echeverría', 1),
(4465, b'0', 'Arrecifes', 1),
(4466, b'0', 'Capitán Sarmiento', 1),
(4467, b'0', 'Dr. Manuel Belgrano', 15),
(4468, b'0', 'Carmen de Areco', 1),
(4469, b'0', 'Salto', 1),
(4470, b'0', 'Exaltación de la Cruz', 1),
(4471, b'0', 'San Miguel', 1),
(4472, b'0', 'San Andrés de Giles', 1),
(4473, b'0', 'Mercedes', 1),
(4474, b'0', 'Pilar', 1),
(4475, b'0', 'Luján', 1),
(4476, b'0', 'Famaillá', 18),
(4477, b'0', 'Hurlingham', 1),
(4478, b'0', 'Morón', 1),
(4479, b'0', 'Chacabuco', 1),
(4480, b'0', 'Junín', 13),
(4481, b'0', 'Malvinas Argentinas', 1),
(4482, b'0', 'Tres Lomas', 1),
(4483, b'0', 'Ayacucho', 1),
(4484, b'0', 'Guaminí', 1),
(4485, b'0', 'General San Martín', 1),
(4486, b'0', 'Lincoln', 1),
(4487, b'0', 'Laprida', 1),
(4488, b'0', 'San Isidro', 1),
(4489, b'0', 'Benito Juárez', 1),
(4490, b'0', 'Colón', 1),
(4491, b'0', 'Ituzaingó', 1),
(4492, b'0', 'General Rodríguez', 1),
(4493, b'0', 'Suipacha', 1),
(4494, b'0', 'Tres de Febrero', 1),
(4495, b'0', 'General Felipe Varela', 6),
(4496, b'0', 'Florencio Varela', 1),
(4497, b'0', 'Navarro', 1),
(4498, b'0', 'Cañuelas', 1),
(4499, b'0', 'Moreno', 22),
(4500, b'0', 'Chacabuco', 5),
(4501, b'0', 'San Vicente', 1),
(4502, b'0', 'Lobos', 1),
(4503, b'0', 'General Alvear', 1),
(4504, b'0', 'Quilmes', 1),
(4505, b'0', 'Pila', 1),
(4506, b'0', 'General La Madrid', 1),
(4507, b'0', 'Bolívar', 1),
(4508, b'0', 'Castro Barros', 6),
(4509, b'0', 'Balcarce', 1),
(4510, b'0', 'Hipólito Yrigoyen', 1),
(4511, b'0', 'Capital', 13),
(4512, b'0', 'Dolores', 1),
(4513, b'0', 'Azul', 1),
(4514, b'0', 'Daireaux', 1),
(4515, b'0', 'Godoy Cruz', 13),
(4516, b'0', 'Cafayate', 4),
(4517, b'0', 'Figueroa', 22),
(4518, b'0', 'Saavedra', 1),
(4519, b'0', 'Monte Hermoso', 1),
(4520, b'0', 'Lobería', 1),
(4521, b'0', 'Berisso', 1),
(4522, b'0', 'Tordillo', 1),
(4523, b'0', 'Zárate', 1),
(4524, b'0', 'Ramallo', 1),
(4525, b'0', 'San Nicolás', 1),
(4526, b'0', 'Salavina', 22),
(4527, b'0', 'Pellegrini', 22),
(4528, b'0', 'Avellaneda', 22),
(4529, b'0', '2 de Abril', 5),
(4530, b'0', 'Guaymallén', 13),
(4531, b'0', 'Juárez Celman', 12),
(4532, b'0', 'Capital', 4),
(4533, b'0', 'Silípica', 22),
(4534, b'0', 'La Candelaria', 4),
(4535, b'0', 'Rancul', 20),
(4536, b'0', 'Maipú', 13),
(4537, b'0', 'Guachipas', 4),
(4538, b'0', 'Atreucó', 20),
(4539, b'0', 'San Martín', 13),
(4540, b'0', 'Guatraché', 20),
(4541, b'0', 'Sanagasta', 6),
(4542, b'0', 'Conhelo', 20),
(4543, b'0', 'Libertador General San Martín', 21),
(4544, b'0', 'Rosario Vera Peñaloza', 6),
(4545, b'0', 'San Miguel', 3),
(4546, b'0', 'General Juan Facundo Quiroga', 6),
(4547, b'0', 'Ángel Vicente Peñaloza', 6),
(4548, b'0', 'Empedrado', 3),
(4549, b'0', 'Chilecito', 6),
(4550, b'0', 'Toay', 20),
(4551, b'0', 'Colón', 12),
(4552, b'0', 'Ituzaingó', 3),
(4553, b'0', 'Famatina', 6),
(4554, b'0', 'General López', 19),
(4555, b'0', 'Constitución', 19),
(4556, b'0', 'Caseros', 19),
(4557, b'0', 'Rosario', 19),
(4558, b'0', 'San Lorenzo', 19),
(4559, b'0', 'Iriondo', 19),
(4560, b'0', 'Lanús', 1),
(4561, b'0', 'General San Martín', 6),
(4562, b'0', 'San Blas de Los Sauces', 6),
(4563, b'0', 'San Antonio', 15),
(4564, b'0', 'Rinconada', 15),
(4565, b'0', 'Ramón Lista', 14),
(4566, b'0', 'La Poma', 4),
(4567, b'0', 'Biedma', 7),
(4568, b'0', 'Capital', 3),
(4569, b'0', 'San Luis del Palmar', 3),
(4570, b'0', 'Formosa', 14),
(4571, b'0', 'Pilcomayo', 14),
(4572, b'0', 'Tehuelches', 7),
(4573, b'0', 'Escalante', 7),
(4574, b'0', 'Ischilín', 12),
(4575, b'0', 'Totoral', 12),
(4576, b'0', 'General San Martín', 12),
(4577, b'0', 'San Javier', 12),
(4578, b'0', 'Río Primero', 12),
(4579, b'0', 'Marcos Juárez', 12),
(4580, b'0', 'General Donovan', 5),
(4581, b'0', 'Leandro N. Alem', 1),
(4582, b'0', 'Libertador General San Martín', 5),
(4583, b'0', 'Gastre', 7),
(4584, b'0', 'General Arenales', 1),
(4585, b'0', 'Bermejo', 5),
(4586, b'0', 'Calamuchita', 12),
(4587, b'0', 'Cruz Alta', 18),
(4588, b'0', 'Lules', 18),
(4589, b'0', 'Yerba Buena', 18),
(4590, b'0', 'Tafí Viejo', 18),
(4591, b'0', 'Libertador General San Martín', 11),
(4592, b'0', 'Coronel Pringles', 11),
(4593, b'0', 'Chacabuco', 11),
(4594, b'0', 'Rivadavia', 1),
(4595, b'0', 'Patagones', 1),
(4596, b'0', 'Juan Martín de Pueyrredón', 11),
(4597, b'0', 'General Pedernera', 11),
(4598, b'0', 'Trancas', 18),
(4599, b'0', 'Tafí del Valle', 18),
(4600, b'0', 'Junín', 11),
(4601, b'0', 'Mitre', 22),
(4602, b'0', 'Atamisqui', 22),
(4603, b'0', 'Berón de Astrada', 3),
(4604, b'0', 'Tolhuin', 17),
(4605, b'0', 'Capital', 21),
(4606, b'0', 'Candelaria', 21),
(4607, b'0', 'Jiménez', 22),
(4608, b'0', 'Coronel de Marina Leonardo Rosales', 1),
(4609, b'0', 'Baradero', 1),
(4610, b'0', 'San Pedro', 1),
(4611, b'0', 'Santa Victoria', 4),
(4612, b'0', 'General José de San Martín', 4),
(4613, b'0', 'Rivadavia', 4),
(4614, b'0', 'Rosario de Lerma', 4),
(4615, b'0', 'Ledesma', 15),
(4616, b'0', 'Humahuaca', 15),
(4617, b'0', 'Cochinoca', 15),
(4618, b'0', 'Tumbaya', 15),
(4619, b'0', 'Florentino Ameghino', 1),
(4620, b'0', 'Florentino Ameghino', 7),
(4621, b'0', 'La Cocha', 18),
(4622, b'0', 'Graneros', 18),
(4623, b'0', 'Juan Bautista Alberdi', 18),
(4624, b'0', 'Río Chico', 18),
(4625, b'0', 'Simoca', 18),
(4626, b'0', 'Chicligasta', 18),
(4627, b'0', 'Monteros', 18),
(4628, b'0', 'Leales', 18),
(4629, b'0', 'San Martín', 19),
(4630, b'0', 'La Capital', 19),
(4631, b'0', 'General Manuel Belgrano', 21),
(4632, b'0', 'Guaraní', 21),
(4633, b'0', 'Iguazú', 21),
(4634, b'0', '25 de Mayo', 21),
(4635, b'0', 'Oberá', 21),
(4636, b'0', 'Castellanos', 19),
(4637, b'0', 'Garay', 19),
(4638, b'0', 'Quemú Quemú', 20),
(4639, b'0', 'San Ignacio', 21),
(4640, b'0', 'Utracán', 20),
(4641, b'0', 'San Martín', 3),
(4642, b'0', 'Paso de los Libres', 3),
(4643, b'0', 'Goya', 3),
(4644, b'0', 'Lavalle', 3),
(4645, b'0', 'San Roque', 3),
(4646, b'0', 'General Alvear', 3),
(4647, b'0', 'Concepción', 3),
(4648, b'0', 'Bella Vista', 3),
(4649, b'0', 'Santo Tomé', 3),
(4650, b'0', 'Saladas', 3),
(4651, b'0', 'General Paz', 3),
(4652, b'0', 'Leandro N. Alem', 21),
(4653, b'0', 'San Javier', 21),
(4654, b'0', 'Mburucuyá', 3),
(4655, b'0', 'Concepción', 21),
(4656, b'0', 'Apóstoles', 21),
(4657, b'0', '1° de Mayo', 5),
(4658, b'0', 'San Fernando', 5),
(4659, b'0', 'San Lorenzo', 5),
(4660, b'0', 'Lomas de Zamora', 1),
(4661, b'0', 'Avellaneda', 1),
(4662, b'0', '25 de Mayo', 5),
(4663, b'0', 'General Belgrano', 5),
(4664, b'0', 'Libertad', 5),
(4665, b'0', 'Comandante Fernández', 5),
(4666, b'0', 'Chimbas', 24),
(4667, b'0', 'Capital', 24),
(4668, b'0', 'Rivadavia', 24),
(4669, b'0', '9 de Julio', 24),
(4670, b'0', 'Albardón', 24),
(4671, b'0', 'Angaco', 24),
(4672, b'0', 'Santa Lucía', 24),
(4673, b'0', 'Rawson', 24),
(4674, b'0', '25 de Mayo', 24),
(4675, b'0', 'San Martín', 24),
(4676, b'0', 'Pocito', 24),
(4677, b'0', 'Zonda', 24),
(4678, b'0', 'Ullum', 24),
(4679, b'0', 'Sarmiento', 24),
(4680, b'0', 'Calingasta', 24),
(4681, b'0', 'Iglesia', 24),
(4682, b'0', 'Jáchal', 24),
(4683, b'0', 'Valle Fértil', 24),
(4684, b'0', 'Caucete', 24),
(4685, b'0', 'La Plata', 1),
(4686, b'0', 'Mercedes', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `eliminado`, `nombre`) VALUES
(1, b'0', 'Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `forma_pago` tinyint(4) DEFAULT NULL,
  `hora_estimada_finalizacion` time(6) DEFAULT NULL,
  `tipo_envio` tinyint(4) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total_costo` double DEFAULT NULL,
  `empleado_id` bigint(20) DEFAULT NULL,
  `factura_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `eliminado`, `domicilio`, `estado`, `fecha_pedido`, `forma_pago`, `hora_estimada_finalizacion`, `tipo_envio`, `total`, `total_costo`, `empleado_id`, `factura_id`, `user_id`) VALUES
(1, b'0', NULL, 5, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(2, b'0', NULL, 5, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(3, b'0', NULL, 5, '2024-06-14', 0, '10:57:49.000000', 1, 5850, 5850, NULL, 3, 1),
(4, b'0', NULL, 5, '2024-06-14', 0, '11:00:12.000000', 1, 3060, 3060, NULL, 4, 1),
(5, b'0', NULL, 5, '2024-06-14', 0, '11:02:04.000000', 1, 1890, 1890, NULL, 5, 1),
(6, b'0', NULL, 5, '2024-06-14', 0, '11:06:28.000000', 1, 6120, 6120, NULL, 6, 1),
(7, b'0', 'mi casa', 3, '2024-06-14', 1, '11:08:40.000000', 0, 11500, 12500, NULL, 7, 1),
(8, b'0', NULL, 5, '2024-06-14', 0, '11:10:10.000000', 1, 8910, 8910, NULL, 8, 2),
(9, b'0', 'Al domicilio porfavor', 3, '2024-06-14', 1, '11:10:36.000000', 0, 14500, 15500, NULL, 9, 2),
(10, b'0', NULL, 2, '2024-06-14', 0, '12:55:16.000000', 1, 23400, 23400, NULL, 10, 1),
(11, b'0', NULL, 2, '2024-06-14', 0, '12:56:24.000000', 1, 5850, 5850, NULL, 11, 1),
(12, b'0', NULL, 2, '2024-06-14', 0, '12:59:04.000000', 1, 5850, 5850, NULL, 12, 1),
(13, b'0', NULL, 3, '2024-06-14', 0, '13:01:19.000000', 1, 3060, 3060, NULL, 13, 1),
(14, b'0', NULL, 5, '2024-06-14', 0, '13:10:41.000000', 1, 16650, 16650, NULL, 14, 1),
(15, b'0', 'mi casa', 3, '2024-06-14', 1, '13:12:32.000000', 0, 22000, 23000, NULL, 15, 1),
(16, b'0', NULL, 3, '2024-06-14', 0, '13:13:45.000000', 1, 9180, 9180, NULL, 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_aud`
--

CREATE TABLE `pedido_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `forma_pago` tinyint(4) DEFAULT NULL,
  `hora_estimada_finalizacion` time(6) DEFAULT NULL,
  `tipo_envio` tinyint(4) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total_costo` double DEFAULT NULL,
  `empleado_id` bigint(20) DEFAULT NULL,
  `factura_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido_aud`
--

INSERT INTO `pedido_aud` (`id`, `rev`, `revtype`, `domicilio`, `estado`, `fecha_pedido`, `forma_pago`, `hora_estimada_finalizacion`, `tipo_envio`, `total`, `total_costo`, `empleado_id`, `factura_id`, `user_id`) VALUES
(1, 55, 0, NULL, 2, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(1, 56, 1, NULL, 0, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(1, 57, 1, NULL, 6, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(1, 58, 1, NULL, 5, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(2, 59, 0, NULL, 2, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(2, 60, 1, NULL, 0, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(2, 61, 1, NULL, 6, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(1, 62, 1, NULL, 6, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(1, 63, 1, NULL, 5, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(3, 64, 0, NULL, 2, '2024-06-14', 0, '10:57:49.000000', 1, 5850, 5850, NULL, 3, 1),
(3, 65, 1, NULL, 5, '2024-06-14', 0, '10:57:49.000000', 1, 5850, 5850, NULL, 3, 1),
(4, 66, 0, NULL, 2, '2024-06-14', 0, '11:00:12.000000', 1, 3060, 3060, NULL, 4, 1),
(4, 67, 1, NULL, 5, '2024-06-14', 0, '11:00:12.000000', 1, 3060, 3060, NULL, 4, 1),
(1, 68, 1, NULL, 3, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(1, 69, 1, NULL, 5, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(1, 70, 1, NULL, 2, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(1, 71, 1, NULL, 5, '2024-06-14', 0, '10:45:17.000000', 1, 13230, 13230, NULL, 1, 1),
(2, 72, 1, NULL, 5, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(2, 73, 1, NULL, 3, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(2, 74, 1, NULL, 5, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(5, 75, 0, NULL, 2, '2024-06-14', 0, '11:02:04.000000', 1, 1890, 1890, NULL, 5, 1),
(5, 76, 1, NULL, 6, '2024-06-14', 0, '11:02:04.000000', 1, 1890, 1890, NULL, 5, 1),
(5, 77, 1, NULL, 5, '2024-06-14', 0, '11:02:04.000000', 1, 1890, 1890, NULL, 5, 1),
(5, 78, 1, NULL, 2, '2024-06-14', 0, '11:02:04.000000', 1, 1890, 1890, NULL, 5, 1),
(5, 79, 1, NULL, 5, '2024-06-14', 0, '11:02:04.000000', 1, 1890, 1890, NULL, 5, 1),
(6, 80, 0, NULL, 2, '2024-06-14', 0, '11:06:28.000000', 1, 6120, 6120, NULL, 6, 1),
(6, 81, 1, NULL, 0, '2024-06-14', 0, '11:06:28.000000', 1, 6120, 6120, NULL, 6, 1),
(6, 82, 1, NULL, 6, '2024-06-14', 0, '11:06:28.000000', 1, 6120, 6120, NULL, 6, 1),
(6, 83, 1, NULL, 5, '2024-06-14', 0, '11:06:28.000000', 1, 6120, 6120, NULL, 6, 1),
(2, 84, 1, NULL, 1, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(2, 85, 1, NULL, 5, '2024-06-14', 0, '10:55:42.000000', 1, 5850, 5850, NULL, 2, 1),
(7, 86, 0, 'mi casa', 1, '2024-06-14', 1, '11:08:40.000000', 0, 11500, 12500, NULL, 7, 1),
(8, 88, 0, NULL, 2, '2024-06-14', 0, '11:10:10.000000', 1, 8910, 8910, NULL, 8, 2),
(9, 89, 0, 'Al domicilio porfavor', 1, '2024-06-14', 1, '11:10:36.000000', 0, 14500, 15500, NULL, 9, 2),
(8, 92, 1, NULL, 6, '2024-06-14', 0, '11:10:10.000000', 1, 8910, 8910, NULL, 8, 2),
(8, 93, 1, NULL, 5, '2024-06-14', 0, '11:10:10.000000', 1, 8910, 8910, NULL, 8, 2),
(7, 94, 1, 'mi casa', 0, '2024-06-14', 1, '11:08:40.000000', 0, 11500, 12500, NULL, 7, 1),
(7, 95, 1, 'mi casa', 6, '2024-06-14', 1, '11:08:40.000000', 0, 11500, 12500, NULL, 7, 1),
(7, 96, 1, 'mi casa', 3, '2024-06-14', 1, '11:08:40.000000', 0, 11500, 12500, NULL, 7, 1),
(7, 97, 1, 'mi casa', 1, '2024-06-14', 1, '11:08:40.000000', 0, 11500, 12500, NULL, 7, 1),
(9, 98, 1, 'Al domicilio porfavor', 0, '2024-06-14', 1, '11:10:36.000000', 0, 14500, 15500, NULL, 9, 2),
(9, 99, 1, 'Al domicilio porfavor', 6, '2024-06-14', 1, '11:10:36.000000', 0, 14500, 15500, NULL, 9, 2),
(9, 100, 1, 'Al domicilio porfavor', 3, '2024-06-14', 1, '11:10:36.000000', 0, 14500, 15500, NULL, 9, 2),
(10, 101, 0, NULL, 2, '2024-06-14', 0, '12:55:16.000000', 1, 23400, 23400, NULL, 10, 1),
(7, 102, 1, 'mi casa', 3, '2024-06-14', 1, '11:08:40.000000', 0, 11500, 12500, NULL, 7, 1),
(11, 103, 0, NULL, 2, '2024-06-14', 0, '12:56:24.000000', 1, 5850, 5850, NULL, 11, 1),
(12, 104, 0, NULL, 2, '2024-06-14', 0, '12:59:04.000000', 1, 5850, 5850, NULL, 12, 1),
(13, 105, 0, NULL, 2, '2024-06-14', 0, '13:01:19.000000', 1, 3060, 3060, NULL, 13, 1),
(13, 106, 1, NULL, 3, '2024-06-14', 0, '13:01:19.000000', 1, 3060, 3060, NULL, 13, 1),
(14, 107, 0, NULL, 2, '2024-06-14', 0, '13:10:41.000000', 1, 16650, 16650, NULL, 14, 1),
(14, 108, 1, NULL, 0, '2024-06-14', 0, '13:10:41.000000', 1, 16650, 16650, NULL, 14, 1),
(14, 109, 1, NULL, 6, '2024-06-14', 0, '13:10:41.000000', 1, 16650, 16650, NULL, 14, 1),
(14, 110, 1, NULL, 5, '2024-06-14', 0, '13:10:41.000000', 1, 16650, 16650, NULL, 14, 1),
(15, 111, 0, 'mi casa', 1, '2024-06-14', 1, '13:12:32.000000', 0, 22000, 23000, NULL, 15, 1),
(16, 112, 0, NULL, 2, '2024-06-14', 0, '13:13:45.000000', 1, 9180, 9180, NULL, 16, 1),
(15, 113, 1, 'mi casa', 3, '2024-06-14', 1, '13:12:32.000000', 0, 22000, 23000, NULL, 15, 1),
(16, 115, 1, NULL, 3, '2024-06-14', 0, '13:13:45.000000', 1, 9180, 9180, NULL, 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `imagen_persona_id` bigint(20) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_aud`
--

CREATE TABLE `persona_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `descripcion_descuento` varchar(255) DEFAULT NULL,
  `fecha_desde` date DEFAULT NULL,
  `fecha_hasta` date DEFAULT NULL,
  `hora_desde` time(6) DEFAULT NULL,
  `hora_hasta` time(6) DEFAULT NULL,
  `precio_promocional` double DEFAULT NULL,
  `tipo_promocion` tinyint(4) DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`id`, `eliminado`, `denominacion`, `descripcion_descuento`, `fecha_desde`, `fecha_hasta`, `hora_desde`, `hora_hasta`, `precio_promocional`, `tipo_promocion`, `image_id`) VALUES
(1, b'0', 'Burger 2x1', 'Aprovecha a llevarte dos hamburguesas americanas al precio de una sola. Valido por tiempo limitado', '2024-06-01', '2024-06-30', '09:00:00.000000', '12:00:00.000000', 7000, 1, NULL),
(2, b'0', 'Italianiando', 'Combina lo mejor de la pasta italiana con la pizza napolitana', '2024-06-01', '2024-06-27', '09:00:00.000000', '23:03:00.000000', 9000, 1, NULL),
(3, b'0', 'Pizza para todos', 'Aprovecha obteniendo un 20% de descuento en las compras de tu pizza napolitana', '2024-05-31', '2024-06-28', '09:04:00.000000', '22:09:00.000000', 5500, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_articulo`
--

CREATE TABLE `promocion_articulo` (
  `cantidad` int(11) NOT NULL,
  `articulo_id` bigint(20) NOT NULL,
  `promocion_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_articulo_aud`
--

CREATE TABLE `promocion_articulo_aud` (
  `articulo_id` bigint(20) NOT NULL,
  `promocion_id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_aud`
--

CREATE TABLE `promocion_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `descripcion_descuento` varchar(255) DEFAULT NULL,
  `fecha_desde` date DEFAULT NULL,
  `fecha_hasta` date DEFAULT NULL,
  `hora_desde` time(6) DEFAULT NULL,
  `hora_hasta` time(6) DEFAULT NULL,
  `precio_promocional` double DEFAULT NULL,
  `tipo_promocion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promocion_aud`
--

INSERT INTO `promocion_aud` (`id`, `rev`, `revtype`, `denominacion`, `descripcion_descuento`, `fecha_desde`, `fecha_hasta`, `hora_desde`, `hora_hasta`, `precio_promocional`, `tipo_promocion`) VALUES
(1, 36, 0, 'Burger 2x1', 'Aprovecha a llevarte dos hamburguesas americanas al precio de una sola. Valido por tiempo limitado', '2024-06-01', '2024-06-30', '09:00:00.000000', '12:00:00.000000', 7000, 1),
(2, 37, 0, 'Italianiando', 'Combina lo mejor de la pasta italiana con la pizza napolitana', '2024-06-01', '2024-06-27', '09:00:00.000000', '23:03:00.000000', 9000, 1),
(3, 38, 0, 'Pizza para todos', 'Aprovecha obteniendo un 20% de descuento en las compras de tu pizza napolitana', '2024-05-31', '2024-06-28', '09:04:00.000000', '22:09:00.000000', 5500, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_detalle`
--

CREATE TABLE `promocion_detalle` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `articulo_id` bigint(20) DEFAULT NULL,
  `promocion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promocion_detalle`
--

INSERT INTO `promocion_detalle` (`id`, `eliminado`, `cantidad`, `articulo_id`, `promocion_id`) VALUES
(1, b'0', '2', 14, 1),
(2, b'0', '1', 13, 2),
(3, b'0', '1', 12, 2),
(4, b'0', '1', 12, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_detalle_aud`
--

CREATE TABLE `promocion_detalle_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `articulo_id` bigint(20) DEFAULT NULL,
  `promocion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promocion_detalle_aud`
--

INSERT INTO `promocion_detalle_aud` (`id`, `rev`, `revtype`, `cantidad`, `articulo_id`, `promocion_id`) VALUES
(1, 36, 0, '2', 14, 1),
(2, 37, 0, '1', 13, 2),
(3, 37, 0, '1', 12, 2),
(4, 38, 0, '1', 12, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_promocion_detalle_aud`
--

CREATE TABLE `promocion_promocion_detalle_aud` (
  `rev` int(11) NOT NULL,
  `promocion_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pais_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id`, `eliminado`, `nombre`, `pais_id`) VALUES
(1, b'0', 'Buenos Aires', 1),
(2, b'0', 'Ciudad Autónoma de Buenos Aires', 1),
(3, b'0', 'Corrientes', 1),
(4, b'0', 'Salta', 1),
(5, b'0', 'Chaco', 1),
(6, b'0', 'La Rioja', 1),
(7, b'0', 'Chubut', 1),
(8, b'0', 'Santa Cruz', 1),
(9, b'0', 'Río Negro', 1),
(10, b'0', 'Catamarca', 1),
(11, b'0', 'San Luis', 1),
(12, b'0', 'Córdoba', 1),
(13, b'0', 'Mendoza', 1),
(14, b'0', 'Formosa', 1),
(15, b'0', 'Jujuy', 1),
(16, b'0', 'Neuquén', 1),
(17, b'0', 'Tierra del Fuego, Antártida e Islas del Atlántico Sur', 1),
(18, b'0', 'Tucumán', 1),
(19, b'0', 'Santa Fe', 1),
(20, b'0', 'La Pampa', 1),
(21, b'0', 'Misiones', 1),
(22, b'0', 'Santiago del Estero', 1),
(23, b'0', 'Entre Ríos', 1),
(24, b'0', 'San Juan', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revinfo`
--

CREATE TABLE `revinfo` (
  `rev` int(11) NOT NULL,
  `revtstmp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `revinfo`
--

INSERT INTO `revinfo` (`rev`, `revtstmp`) VALUES
(1, 1718364287343),
(2, 1718364630968),
(3, 1718364645129),
(4, 1718364655081),
(5, 1718364664718),
(6, 1718364681310),
(7, 1718364694855),
(8, 1718364701020),
(9, 1718364709812),
(10, 1718364715840),
(11, 1718364721292),
(12, 1718364727185),
(13, 1718364736143),
(14, 1718364813864),
(15, 1718364814773),
(16, 1718364862093),
(17, 1718364924663),
(18, 1718364945045),
(19, 1718364978322),
(20, 1718365106202),
(21, 1718365181082),
(22, 1718365185390),
(23, 1718365220798),
(24, 1718365827214),
(25, 1718365859425),
(26, 1718365881322),
(27, 1718365900991),
(28, 1718366025213),
(29, 1718366083044),
(30, 1718366186260),
(31, 1718366231528),
(32, 1718366278787),
(33, 1718366430103),
(34, 1718366486955),
(35, 1718366515178),
(36, 1718366602644),
(37, 1718366667290),
(38, 1718366741956),
(39, 1718367342645),
(40, 1718367517213),
(41, 1718367665083),
(42, 1718367877623),
(43, 1718368076942),
(44, 1718368090551),
(45, 1718368349078),
(46, 1718368376655),
(47, 1718368738489),
(48, 1718368890182),
(49, 1718368960189),
(50, 1718369297519),
(51, 1718369351846),
(52, 1718369844989),
(53, 1718370005197),
(54, 1718370201738),
(55, 1718370618219),
(56, 1718370693168),
(57, 1718371145046),
(58, 1718371179569),
(59, 1718371243059),
(60, 1718371255896),
(61, 1718371261751),
(62, 1718371336992),
(63, 1718371343713),
(64, 1718371369646),
(65, 1718371381300),
(66, 1718371512837),
(67, 1718371522401),
(68, 1718371545260),
(69, 1718371549472),
(70, 1718371559790),
(71, 1718371566003),
(72, 1718371573493),
(73, 1718371586102),
(74, 1718371589798),
(75, 1718371624770),
(76, 1718371633009),
(77, 1718371637070),
(78, 1718371672151),
(79, 1718371678963),
(80, 1718371888967),
(81, 1718371899260),
(82, 1718371904053),
(83, 1718371921819),
(84, 1718371943101),
(85, 1718371977633),
(86, 1718372020207),
(87, 1718372098450),
(88, 1718372110759),
(89, 1718372136854),
(90, 1718374351327),
(91, 1718374446744),
(92, 1718377416151),
(93, 1718377610912),
(94, 1718377626178),
(95, 1718377631549),
(96, 1718377641483),
(97, 1718377646188),
(98, 1718377935202),
(99, 1718377939072),
(100, 1718377948901),
(101, 1718378416329),
(102, 1718378437974),
(103, 1718378484481),
(104, 1718378644804),
(105, 1718378779155),
(106, 1718378791689),
(107, 1718379341093),
(108, 1718379391226),
(109, 1718379403143),
(110, 1718379413800),
(111, 1718379452805),
(112, 1718379525974),
(113, 1718379541343),
(114, 1718379681113),
(115, 1718398793286);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `es_casa_matriz` bit(1) DEFAULT NULL,
  `horario_apertura` time(6) DEFAULT NULL,
  `horario_cierre` time(6) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio_id` bigint(20) DEFAULT NULL,
  `empresa_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_aud`
--

CREATE TABLE `sucursal_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `es_casa_matriz` bit(1) DEFAULT NULL,
  `horario_apertura` time(6) DEFAULT NULL,
  `horario_cierre` time(6) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio_id` bigint(20) DEFAULT NULL,
  `empresa_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_categoria`
--

CREATE TABLE `sucursal_categoria` (
  `sucursal_id` bigint(20) NOT NULL,
  `categoria_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_categoria_aud`
--

CREATE TABLE `sucursal_categoria_aud` (
  `rev` int(11) NOT NULL,
  `sucursal_id` bigint(20) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_promocion`
--

CREATE TABLE `sucursal_promocion` (
  `promocion_id` bigint(20) NOT NULL,
  `sucursal_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_promocion_aud`
--

CREATE TABLE `sucursal_promocion_aud` (
  `rev` int(11) NOT NULL,
  `promocion_id` bigint(20) NOT NULL,
  `sucursal_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id`, `eliminado`, `denominacion`) VALUES
(1, b'0', 'Unidad'),
(2, b'0', 'Gramos'),
(3, b'0', 'Kilos'),
(4, b'0', 'Pizca'),
(5, b'0', 'Planta'),
(6, b'0', 'Paquetes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida_aud`
--

CREATE TABLE `unidad_medida_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidad_medida_aud`
--

INSERT INTO `unidad_medida_aud` (`id`, `rev`, `revtype`, `denominacion`) VALUES
(1, 9, 0, 'Unidad'),
(2, 10, 0, 'Gramos'),
(3, 11, 0, 'Kilos'),
(4, 12, 0, 'Pizca'),
(5, 13, 0, 'Planta'),
(6, 18, 0, 'Paquetes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `eliminado`, `contraseña`, `gmail`, `nombre`, `rol`) VALUES
(1, b'0', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'igna.a.valdivia@gmail.com', 'IgnaValdivia', 'admin'),
(2, b'0', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'joaconavio10@gmail.com', 'joaco', 'admin'),
(3, b'0', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'crescini63@gmail.com', 'Facu', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_aud`
--

CREATE TABLE `user_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_aud`
--

INSERT INTO `user_aud` (`id`, `rev`, `revtype`, `contraseña`, `gmail`, `nombre`, `rol`) VALUES
(1, 39, 0, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'igna.a.valdivia@gmail.com', 'IgnaValdivia', 'user'),
(2, 87, 0, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'joaconavio10@gmail.com', 'joaco', 'user'),
(2, 90, 1, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'joaconavio10@gmail.com', 'joaco', 'admin'),
(3, 91, 0, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'crescini63@gmail.com', 'Facu', 'user'),
(3, 114, 1, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'crescini63@gmail.com', 'Facu', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `auth0id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_aud`
--

CREATE TABLE `usuario_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `auth0id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK35xlp590328eybh2pf5ublsne` (`categoria_id`),
  ADD KEY `FKlf2hbqm1r4qx36lkr0b4mix6b` (`unidad_medida_id`);

--
-- Indices de la tabla `articulo_aud`
--
ALTER TABLE `articulo_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `articulo_insumo`
--
ALTER TABLE `articulo_insumo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articulo_insumo_aud`
--
ALTER TABLE `articulo_insumo_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `articulo_manufacturado`
--
ALTER TABLE `articulo_manufacturado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articulo_manufacturado_aud`
--
ALTER TABLE `articulo_manufacturado_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `articulo_manufacturado_detalle`
--
ALTER TABLE `articulo_manufacturado_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKee8sad16ogk7in2nlh0vc3y9b` (`articulo_insumo_id`),
  ADD KEY `FKcwnptwtrvdenu9tetlffab6dp` (`articulo_manufacturado_id`);

--
-- Indices de la tabla `articulo_manufacturado_detalle_aud`
--
ALTER TABLE `articulo_manufacturado_detalle_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKif4f273okqr2edqkm0xqxjlyk` (`categoria_padre_id`);

--
-- Indices de la tabla `categoria_articulo_aud`
--
ALTER TABLE `categoria_articulo_aud`
  ADD PRIMARY KEY (`categoria_id`,`rev`,`id`),
  ADD KEY `FK6hhqy78guxyiswo7x5suxfljm` (`rev`);

--
-- Indices de la tabla `categoria_aud`
--
ALTER TABLE `categoria_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente_aud`
--
ALTER TABLE `cliente_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `cliente_domicilio`
--
ALTER TABLE `cliente_domicilio`
  ADD PRIMARY KEY (`cliente_id`,`domicilio_id`),
  ADD KEY `FK7jkekc8ff2g28bthd4dd9d7r2` (`domicilio_id`);

--
-- Indices de la tabla `cliente_domicilio_aud`
--
ALTER TABLE `cliente_domicilio_aud`
  ADD PRIMARY KEY (`cliente_id`,`rev`,`domicilio_id`),
  ADD KEY `FKgh876hrvu1u6njf4knhy4kr6s` (`rev`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKblwfjfeyou4u7hae0gcngweeu` (`articulo_id`),
  ADD KEY `FKgqvba9e7dildyw45u0usdj1k2` (`pedido_id`);

--
-- Indices de la tabla `detalle_pedido_aud`
--
ALTER TABLE `detalle_pedido_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8t63gx4v022qapv45vdwld71j` (`localidad_id`);

--
-- Indices de la tabla `domicilio_aud`
--
ALTER TABLE `domicilio_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkv68lx8xpbpv6jprh7taieaej` (`sucursal_id`);

--
-- Indices de la tabla `empleado_aud`
--
ALTER TABLE `empleado_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa_aud`
--
ALTER TABLE `empresa_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura_aud`
--
ALTER TABLE `factura_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `imagen_articulo`
--
ALTER TABLE `imagen_articulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi4c9w006je0v5win1hk34jwks` (`articulo_id`);

--
-- Indices de la tabla `imagen_persona`
--
ALTER TABLE `imagen_persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK37mbpxuicwnbo878s9djjgr39` (`provincia_id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_g016pjgvtig2l5tbomjngwv0b` (`factura_id`),
  ADD KEY `FK1nibrtel55qwnf6rwabwsqkyi` (`empleado_id`),
  ADD KEY `FKh48licft1hwb7dgh1tve5gmpm` (`user_id`);

--
-- Indices de la tabla `pedido_aud`
--
ALTER TABLE `pedido_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_aef1ew8mf4bdu32jdjk0gv69q` (`imagen_persona_id`),
  ADD UNIQUE KEY `UK_nefbl9obym4qiqpf6cd4bb2dj` (`usuario_id`);

--
-- Indices de la tabla `persona_aud`
--
ALTER TABLE `persona_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_1v2oiq417rg5rn87r4782i6j1` (`image_id`);

--
-- Indices de la tabla `promocion_articulo`
--
ALTER TABLE `promocion_articulo`
  ADD PRIMARY KEY (`articulo_id`,`promocion_id`),
  ADD KEY `FKmwaxvlywtxtbr2eow3vibc94d` (`promocion_id`);

--
-- Indices de la tabla `promocion_articulo_aud`
--
ALTER TABLE `promocion_articulo_aud`
  ADD PRIMARY KEY (`rev`,`articulo_id`,`promocion_id`);

--
-- Indices de la tabla `promocion_aud`
--
ALTER TABLE `promocion_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `promocion_detalle`
--
ALTER TABLE `promocion_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2dthinvgi20qc529cvkab7nt2` (`articulo_id`),
  ADD KEY `FKmxkc9fkv4btuhc89yu338obqd` (`promocion_id`);

--
-- Indices de la tabla `promocion_detalle_aud`
--
ALTER TABLE `promocion_detalle_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `promocion_promocion_detalle_aud`
--
ALTER TABLE `promocion_promocion_detalle_aud`
  ADD PRIMARY KEY (`promocion_id`,`rev`,`id`),
  ADD KEY `FKaa1a9vad90fqpfwjjftun64fo` (`rev`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm4s599988w0v1q1nw6dyo5t2m` (`pais_id`);

--
-- Indices de la tabla `revinfo`
--
ALTER TABLE `revinfo`
  ADD PRIMARY KEY (`rev`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_34hifwa9nn1cgdbjgkosx0wy2` (`domicilio_id`),
  ADD KEY `FK3w56rbjykxbp2e79cdq0xsghd` (`empresa_id`);

--
-- Indices de la tabla `sucursal_aud`
--
ALTER TABLE `sucursal_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `sucursal_categoria`
--
ALTER TABLE `sucursal_categoria`
  ADD PRIMARY KEY (`sucursal_id`,`categoria_id`),
  ADD KEY `FKtcbmv4283gg4r2ds9v510up26` (`categoria_id`);

--
-- Indices de la tabla `sucursal_categoria_aud`
--
ALTER TABLE `sucursal_categoria_aud`
  ADD PRIMARY KEY (`rev`,`sucursal_id`,`categoria_id`);

--
-- Indices de la tabla `sucursal_promocion`
--
ALTER TABLE `sucursal_promocion`
  ADD PRIMARY KEY (`promocion_id`,`sucursal_id`),
  ADD KEY `FKfv8unyrvkg4sow787vu0lb447` (`sucursal_id`);

--
-- Indices de la tabla `sucursal_promocion_aud`
--
ALTER TABLE `sucursal_promocion_aud`
  ADD PRIMARY KEY (`rev`,`promocion_id`,`sucursal_id`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidad_medida_aud`
--
ALTER TABLE `unidad_medida_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nm5dt7tnw4x9fv9w1etmx9hxd` (`gmail`);

--
-- Indices de la tabla `user_aud`
--
ALTER TABLE `user_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_aud`
--
ALTER TABLE `usuario_aud`
  ADD PRIMARY KEY (`rev`,`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `articulo_manufacturado_detalle`
--
ALTER TABLE `articulo_manufacturado_detalle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `imagen_articulo`
--
ALTER TABLE `imagen_articulo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `imagen_persona`
--
ALTER TABLE `imagen_persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4687;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `promocion_detalle`
--
ALTER TABLE `promocion_detalle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `revinfo`
--
ALTER TABLE `revinfo`
  MODIFY `rev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `FK35xlp590328eybh2pf5ublsne` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `FKlf2hbqm1r4qx36lkr0b4mix6b` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidad_medida` (`id`);

--
-- Filtros para la tabla `articulo_aud`
--
ALTER TABLE `articulo_aud`
  ADD CONSTRAINT `FKd4og6wvgopvjrlsuq8x6twkcs` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `articulo_insumo`
--
ALTER TABLE `articulo_insumo`
  ADD CONSTRAINT `FK5yoloai8ewly5lkbi3wl5904y` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `articulo_insumo_aud`
--
ALTER TABLE `articulo_insumo_aud`
  ADD CONSTRAINT `FKc77ixmpho65yoq223ec7jer01` FOREIGN KEY (`rev`,`id`) REFERENCES `articulo_aud` (`rev`, `id`);

--
-- Filtros para la tabla `articulo_manufacturado`
--
ALTER TABLE `articulo_manufacturado`
  ADD CONSTRAINT `FK9t82oibyduo62wci8y6gfpllx` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `articulo_manufacturado_aud`
--
ALTER TABLE `articulo_manufacturado_aud`
  ADD CONSTRAINT `FKsyt0xwxrbfm047ifu22gcr383` FOREIGN KEY (`rev`,`id`) REFERENCES `articulo_aud` (`rev`, `id`);

--
-- Filtros para la tabla `articulo_manufacturado_detalle`
--
ALTER TABLE `articulo_manufacturado_detalle`
  ADD CONSTRAINT `FKcwnptwtrvdenu9tetlffab6dp` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`),
  ADD CONSTRAINT `FKee8sad16ogk7in2nlh0vc3y9b` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`);

--
-- Filtros para la tabla `articulo_manufacturado_detalle_aud`
--
ALTER TABLE `articulo_manufacturado_detalle_aud`
  ADD CONSTRAINT `FKgjoc2nq4j4sdamhwppqsvg0df` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FKif4f273okqr2edqkm0xqxjlyk` FOREIGN KEY (`categoria_padre_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `categoria_articulo_aud`
--
ALTER TABLE `categoria_articulo_aud`
  ADD CONSTRAINT `FK6hhqy78guxyiswo7x5suxfljm` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `categoria_aud`
--
ALTER TABLE `categoria_aud`
  ADD CONSTRAINT `FKisqk2a7dm7lq0opbwx0mpm1pn` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FKkpvkbjg32bso6riqge70hwcel` FOREIGN KEY (`id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `cliente_aud`
--
ALTER TABLE `cliente_aud`
  ADD CONSTRAINT `FKh49w2ty5q2cjellt38rl5r9vi` FOREIGN KEY (`rev`,`id`) REFERENCES `persona_aud` (`rev`, `id`);

--
-- Filtros para la tabla `cliente_domicilio`
--
ALTER TABLE `cliente_domicilio`
  ADD CONSTRAINT `FK7jkekc8ff2g28bthd4dd9d7r2` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilio` (`id`),
  ADD CONSTRAINT `FKaqi2ncgqr9druaxk36jydy2ko` FOREIGN KEY (`cliente_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `cliente_domicilio_aud`
--
ALTER TABLE `cliente_domicilio_aud`
  ADD CONSTRAINT `FKgh876hrvu1u6njf4knhy4kr6s` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `FKblwfjfeyou4u7hae0gcngweeu` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`),
  ADD CONSTRAINT `FKgqvba9e7dildyw45u0usdj1k2` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `detalle_pedido_aud`
--
ALTER TABLE `detalle_pedido_aud`
  ADD CONSTRAINT `FK2o8mywmvos1ymbquy4p46a4s2` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD CONSTRAINT `FK8t63gx4v022qapv45vdwld71j` FOREIGN KEY (`localidad_id`) REFERENCES `localidad` (`id`);

--
-- Filtros para la tabla `domicilio_aud`
--
ALTER TABLE `domicilio_aud`
  ADD CONSTRAINT `FKm79veimsf377b9nya4vq2m6ni` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FKkv68lx8xpbpv6jprh7taieaej` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FKl6nu1s893o9x7pmxo0wdhfiei` FOREIGN KEY (`id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `empleado_aud`
--
ALTER TABLE `empleado_aud`
  ADD CONSTRAINT `FKpsqxahgr49p6vkqpoe7cigy2p` FOREIGN KEY (`rev`,`id`) REFERENCES `persona_aud` (`rev`, `id`);

--
-- Filtros para la tabla `empresa_aud`
--
ALTER TABLE `empresa_aud`
  ADD CONSTRAINT `FKohkjui27otydhfgrvfbu7se33` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `factura_aud`
--
ALTER TABLE `factura_aud`
  ADD CONSTRAINT `FKnawg7514dr0p13jhhpgh0fmr4` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `imagen_articulo`
--
ALTER TABLE `imagen_articulo`
  ADD CONSTRAINT `FKi4c9w006je0v5win1hk34jwks` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `FK37mbpxuicwnbo878s9djjgr39` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK1nibrtel55qwnf6rwabwsqkyi` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  ADD CONSTRAINT `FKh48licft1hwb7dgh1tve5gmpm` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKpa5hywhn7so5bn1ctm1yhwuei` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`);

--
-- Filtros para la tabla `pedido_aud`
--
ALTER TABLE `pedido_aud`
  ADD CONSTRAINT `FK92exlulwrdp7fu0x88wk6y2os` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK6q35dosxwx6hg9y4eggx7n5mk` FOREIGN KEY (`imagen_persona_id`) REFERENCES `imagen_persona` (`id`),
  ADD CONSTRAINT `FKgedbtrc2ob95e7n8xt0vaaaa0` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `persona_aud`
--
ALTER TABLE `persona_aud`
  ADD CONSTRAINT `FKpxigs3r1ey298w0hrbvh55ple` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `FKgx4pbnnbnje4bwafshuipnp8s` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Filtros para la tabla `promocion_articulo`
--
ALTER TABLE `promocion_articulo`
  ADD CONSTRAINT `FKlfg7ldjhm06bfsvm3ldnehnwy` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`),
  ADD CONSTRAINT `FKmwaxvlywtxtbr2eow3vibc94d` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`);

--
-- Filtros para la tabla `promocion_articulo_aud`
--
ALTER TABLE `promocion_articulo_aud`
  ADD CONSTRAINT `FKs254vpwb098ixnu86dprafmkg` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `promocion_aud`
--
ALTER TABLE `promocion_aud`
  ADD CONSTRAINT `FKg077w5ekhueati4nqd7ol3lk6` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `promocion_detalle`
--
ALTER TABLE `promocion_detalle`
  ADD CONSTRAINT `FK2dthinvgi20qc529cvkab7nt2` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`),
  ADD CONSTRAINT `FKmxkc9fkv4btuhc89yu338obqd` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`);

--
-- Filtros para la tabla `promocion_detalle_aud`
--
ALTER TABLE `promocion_detalle_aud`
  ADD CONSTRAINT `FK3owuxkmxgnu6yn9f0ey12jadx` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `promocion_promocion_detalle_aud`
--
ALTER TABLE `promocion_promocion_detalle_aud`
  ADD CONSTRAINT `FKaa1a9vad90fqpfwjjftun64fo` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `FKm4s599988w0v1q1nw6dyo5t2m` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `FK3w56rbjykxbp2e79cdq0xsghd` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FKpxac8l3j9mwcwolj5dyctwpxo` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilio` (`id`);

--
-- Filtros para la tabla `sucursal_aud`
--
ALTER TABLE `sucursal_aud`
  ADD CONSTRAINT `FKdw95s19obq405fnj42l5nyqwm` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `sucursal_categoria`
--
ALTER TABLE `sucursal_categoria`
  ADD CONSTRAINT `FKgr9g4037djhuxuahxtttbcpe6` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FKtcbmv4283gg4r2ds9v510up26` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `sucursal_categoria_aud`
--
ALTER TABLE `sucursal_categoria_aud`
  ADD CONSTRAINT `FKkhdve1af4pqv4gwqiynnfhq0r` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `sucursal_promocion`
--
ALTER TABLE `sucursal_promocion`
  ADD CONSTRAINT `FKfv8unyrvkg4sow787vu0lb447` FOREIGN KEY (`sucursal_id`) REFERENCES `promocion` (`id`),
  ADD CONSTRAINT `FKsffdgi1kd25vte47yhjm3rodh` FOREIGN KEY (`promocion_id`) REFERENCES `sucursal` (`id`);

--
-- Filtros para la tabla `sucursal_promocion_aud`
--
ALTER TABLE `sucursal_promocion_aud`
  ADD CONSTRAINT `FKtfgs06qfq7yc3mpffq6pci7ef` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `unidad_medida_aud`
--
ALTER TABLE `unidad_medida_aud`
  ADD CONSTRAINT `FKfrbdc2ito7oeggckk7qjslc4r` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `user_aud`
--
ALTER TABLE `user_aud`
  ADD CONSTRAINT `FK89ntto9kobwahrwxbne2nqcnr` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);

--
-- Filtros para la tabla `usuario_aud`
--
ALTER TABLE `usuario_aud`
  ADD CONSTRAINT `FK74gdm3bhlqa3diq16ouihfq6e` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
