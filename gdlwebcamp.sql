-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 02-12-2017 a las 02:25:57
-- Versión del servidor: 5.6.34
-- Versión de PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gdlwebcamp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `editado` datetime NOT NULL,
  `nivel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `usuario`, `nombre`, `password`, `editado`, `nivel`) VALUES
(1, 'admin', 'Juan Pablo', '$2y$12$ipQpaWj3mK9He67yRJVcX.xNAdkl8v7rrWJJK1Z2ehkcuuDwxJrIi', '0000-00-00 00:00:00', 1),
(4, 'admin2', 'Juan', '$2y$12$sRkeOCYuQXKzcG8cAkJZ4uGTlDJ.Hyd5TeLGGOCfRqk7RuyxIjvDO', '2017-11-09 13:04:33', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(15) NOT NULL,
  `editado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`, `editado`) VALUES
(1, 'Seminario', 'fa-university', '0000-00-00 00:00:00'),
(2, 'Conferencias', 'fa-comment', '2017-11-16 22:26:34'),
(3, 'Talleres', 'fa-code', '0000-00-00 00:00:00'),
(4, 'Workshop', 'fa-comments', '2017-11-09 22:19:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(10) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `editado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`, `editado`) VALUES
(4, 'HTML5 y CSS3', '2016-12-09', '02:00:00', 3, 3, 'taller_01', '0000-00-00 00:00:00'),
(6, 'WordPress', '2016-12-09', '19:00:00', 3, 5, 'taller_02', '0000-00-00 00:00:00'),
(7, 'Como ser freelancer', '2016-12-09', '10:00:00', 2, 6, 'conf_01', '0000-00-00 00:00:00'),
(8, 'Tecnologías del Futuro PHP', '2016-12-09', '05:00:00', 2, 3, 'conf_02', '0000-00-00 00:00:00'),
(9, 'Seguridad en la Web', '2016-12-09', '07:00:00', 2, 2, 'conf_03', '0000-00-00 00:00:00'),
(10, 'Diseño UI y UX para móviles', '2016-12-09', '10:00:00', 1, 6, 'sem_01', '0000-00-00 00:00:00'),
(11, 'Angular 5', '2016-12-10', '19:00:00', 1, 3, 'sem_02', '2017-11-16 22:28:52'),
(12, 'PHP y MySQL', '2016-12-10', '12:00:00', 3, 2, 'taller_03', '0000-00-00 00:00:00'),
(13, 'JavaScript Avanzado', '2016-12-10', '14:00:00', 3, 3, 'taller_04', '0000-00-00 00:00:00'),
(14, 'SEO en Google', '2016-12-10', '17:00:00', 3, 4, 'taller_05', '0000-00-00 00:00:00'),
(15, 'De Photoshop a HTML5 y CSS3', '2016-12-10', '19:00:00', 3, 5, 'taller_06', '0000-00-00 00:00:00'),
(16, 'PHP Intermedio y Avanzado', '2016-12-10', '21:00:00', 3, 6, 'taller_07', '0000-00-00 00:00:00'),
(17, 'Como crear una tienda online que venda millones en pocos día', '2016-12-10', '10:00:00', 2, 6, 'conf_04', '0000-00-00 00:00:00'),
(18, 'Los mejores lugares para encontrar trabajo', '2016-12-10', '17:00:00', 2, 1, 'conf_05', '0000-00-00 00:00:00'),
(19, 'Pasos para crear un negocio rentable ', '2016-12-10', '19:00:00', 2, 2, 'conf_06', '0000-00-00 00:00:00'),
(21, 'Diseño UI y UX para móviles', '2016-12-10', '17:00:00', 1, 5, 'sem_03', '0000-00-00 00:00:00'),
(22, 'Laravel', '2016-12-11', '10:00:00', 3, 1, 'taller_08', '0000-00-00 00:00:00'),
(23, 'Crea tu propia API', '2016-12-11', '12:00:00', 3, 2, 'taller_09', '0000-00-00 00:00:00'),
(24, 'JavaScript y jQuery', '2016-12-11', '14:00:00', 3, 3, 'taller_10', '0000-00-00 00:00:00'),
(25, 'Creando Plantillas para WordPress', '2016-12-11', '17:00:00', 3, 4, 'taller_11', '0000-00-00 00:00:00'),
(26, 'Tiendas Virtuales en Magento', '2016-12-11', '19:00:00', 3, 5, 'taller_12', '0000-00-00 00:00:00'),
(30, 'Creando una App en Android en una mañana', '2016-12-11', '10:00:00', 1, 4, 'sem_04', '0000-00-00 00:00:00'),
(31, 'Creando una App en iOS en una tarde', '2016-12-11', '17:00:00', 1, 1, 'sem_05', '0000-00-00 00:00:00'),
(32, 'Flexbox para principiantes', '2016-12-10', '11:00:00', 2, 4, 'conf_07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`) VALUES
(1, 'Rafael ', 'Bautista', 'Praesent rutrum efficitur pharetra. Vivamus scelerisque pretium velit, id tempor turpis pulvinar et. Ut bibendum finibus massa non molestie.', 'invitado1.jpg'),
(2, 'Shari', 'Herrera', 'Curabitur urna metus, placerat gravida lacus ut, lacinia congue orci. Maecenas luctus mi at ex blandit vehicula. Morbi porttitor tempus euismod.', 'invitado2.jpg'),
(3, 'Juan', 'Sanchez', 'placerat gravida lacus ut, lacinia congue orci. Maecenas luctus mi at ex blandit vehicula. Morbi porttitor tempus euismod.', 'invitado3.jpg'),
(4, 'Susana', 'Rivera', 'Praesent rutrum efficitur pharetra. Vivamus scelerisque pretium velit, id tempor turpis pulvinar et. Ut bibendum finibus', 'invitado4.jpg'),
(5, 'Harold', 'Garcia', 'placerat gravida lacus ut, lacinia congue orci. Maecenas luctus mi at ex blandit vehicula. Morbi porttitor tempus euismod.', 'invitado5.jpg'),
(6, 'Susan', 'Sanchez', 'Praesent rutrum efficitur pharetra. Vivamus scelerisque pretium velit, id tempor turpis pulvinar et. Ut bibendum finibus massa non molestie. Curabitur urna metus, placerat gravida lacus ut, lacinia congue orci. Maecenas luctus mi at ex blandit vehicula. Morbi porttitor tempus euismod.', 'invitado6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `ID_regalo` int(11) NOT NULL,
  `nombre_regalo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`ID_regalo`, `nombre_regalo`) VALUES
(1, 'Pulsera'),
(2, 'Etiquetas'),
(3, 'Plumas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrados`
--

CREATE TABLE `registrados` (
  `ID_Registrado` bigint(20) UNSIGNED NOT NULL,
  `nombre_registrado` varchar(50) NOT NULL,
  `apellido_registrado` varchar(50) NOT NULL,
  `email_registrado` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `pases_articulos` longtext NOT NULL,
  `talleres_registrados` longtext NOT NULL,
  `regalo` int(11) NOT NULL,
  `total_pagado` varchar(50) NOT NULL,
  `pagado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registrados`
--

INSERT INTO `registrados` (`ID_Registrado`, `nombre_registrado`, `apellido_registrado`, `email_registrado`, `fecha_registro`, `pases_articulos`, `talleres_registrados`, `regalo`, `total_pagado`, `pagado`) VALUES
(10, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:30:22', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(11, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:30:49', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(12, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:33:44', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(13, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:34:07', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(14, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:36:28', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(15, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:41:07', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(16, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:45:49', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(17, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:46:55', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(18, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:48:16', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(19, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:48:21', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(20, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:49:29', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(21, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:49:50', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(22, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:50:07', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(23, 'Juan', 'De la torre', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:50:53', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"taller_02\"]}', 1, '43.3', 0),
(24, 'Juan Pablo De la', 'Valdez', 'blackmaxgdl18@hotmail.com', '2017-01-15 06:55:24', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":3,\"etiquetas\":3}', '{\"eventos\":[\"taller_01\",\"taller_02\",\"taller_03\",\"taller_07\",\"taller_08\",\"taller_09\",\"taller_12\",\"conf_07\"]}', 2, '298.9', 1),
(25, 'Juan Pablo', 'De la torre', 'jpdelatorrevaldez@gmail.com', '2017-01-17 05:33:31', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":2,\"etiquetas\":5}', '{\"eventos\":[\"taller_01\",\"taller_02\",\"taller_03\",\"taller_04\",\"taller_05\",\"taller_06\",\"taller_07\",\"taller_11\",\"taller_12\",\"taller_13\",\"taller_14\",\"taller_15\"]}', 3, '243.6', 1),
(26, 'Fernando', 'Reyes', 'correo@correo.com', '2017-11-13 17:45:01', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":7,\"etiquetas\":3}', '{\"eventos\":[\"10\",\"8\",\"7\",\"4\",\"18\"]}', 1, '131.10000000000002', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`ID_regalo`);

--
-- Indices de la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD PRIMARY KEY (`ID_Registrado`),
  ADD KEY `regalo` (`regalo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `ID_regalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `registrados`
--
ALTER TABLE `registrados`
  MODIFY `ID_Registrado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);

--
-- Filtros para la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD CONSTRAINT `registrados_ibfk_1` FOREIGN KEY (`regalo`) REFERENCES `regalos` (`ID_regalo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
