-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2024 a las 21:46:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_votacion_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato_tbl`
--

CREATE TABLE `candidato_tbl` (
  `id` int(11) NOT NULL,
  `candidato` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidato_tbl`
--

INSERT INTO `candidato_tbl` (`id`, `candidato`) VALUES
(1, 'PHP'),
(2, 'C#'),
(3, 'JAVA'),
(4, 'JAVASCRIPT'),
(5, 'JQUERY'),
(6, 'ANGULAR CLI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas_tbl`
--

CREATE TABLE `comunas_tbl` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_region` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas_tbl`
--

INSERT INTO `comunas_tbl` (`id`, `id_region`, `nombre`) VALUES
(1, 1, 'Arica'),
(2, 1, 'Camarones'),
(3, 1, 'Putre'),
(4, 1, 'Putre'),
(5, 1, 'General Lagos'),
(6, 2, 'Iquique'),
(7, 2, 'Alto Hospicio'),
(8, 2, 'Pozo Almonte'),
(10, 2, 'Camiña'),
(11, 2, 'Colchane'),
(12, 2, 'Huara'),
(13, 2, 'Pica'),
(14, 3, 'Antofagasta'),
(15, 3, 'Mejillones'),
(16, 3, 'Sierra Gorda'),
(17, 3, 'Taltal'),
(18, 3, 'Calama'),
(19, 3, 'Ollagüe'),
(20, 3, 'San Pedro de Atacama'),
(21, 3, 'Tocopilla'),
(22, 3, 'María Elena'),
(23, 4, 'Copiapó'),
(24, 4, 'Caldera'),
(25, 4, 'Tierra Amarilla'),
(26, 4, 'Chañaral'),
(27, 4, 'Diego de Almagro'),
(28, 4, 'Vallenar'),
(29, 4, 'Alto del Carmen'),
(30, 4, 'Freirina'),
(31, 4, 'Huasco'),
(32, 5, 'La Serena'),
(33, 5, 'Coquimbo'),
(34, 5, 'Andacollo'),
(35, 5, 'La Higuera'),
(36, 5, 'Paihuano'),
(37, 5, 'Vicuña'),
(38, 5, 'Illapel'),
(39, 5, 'Canela'),
(40, 5, 'Los Vilos'),
(41, 5, 'Salamanca'),
(42, 5, 'Ovalle'),
(43, 5, 'Combarbalá'),
(44, 5, 'Monte Patria'),
(45, 5, 'Punitaqui'),
(46, 5, 'Río Hurtado'),
(47, 6, 'Valparaíso'),
(48, 6, 'Casablanca'),
(49, 6, 'Concón'),
(50, 6, 'Juan Fernández'),
(51, 6, 'Puchuncaví'),
(52, 6, 'Quintero'),
(53, 6, 'Viña del Mar'),
(54, 6, 'Isla de Pascua'),
(55, 6, 'Los Andes'),
(56, 6, 'Calle Larga'),
(57, 6, 'Rinconada'),
(58, 6, 'San Esteban'),
(59, 6, 'La Ligua'),
(60, 6, 'Cabildo'),
(61, 6, 'Papudo'),
(62, 6, 'Petorca'),
(63, 6, 'Zapallar'),
(64, 6, 'Quillota'),
(65, 6, 'La Calera'),
(66, 6, 'Hijuelas'),
(67, 6, 'La Cruz'),
(68, 6, 'Nogales'),
(69, 6, 'San Antonio'),
(70, 6, 'Algarrobo'),
(71, 6, 'Cartagena'),
(72, 6, 'El Quisco'),
(73, 6, 'El Tabo'),
(74, 6, 'Santo Domingo'),
(75, 6, 'San Felipe'),
(76, 6, 'Catemu'),
(77, 6, 'Llay-Llay'),
(78, 6, 'Panquehue'),
(79, 6, 'Putaendo'),
(80, 6, 'Santa María'),
(81, 6, 'Quilpué'),
(82, 6, 'Limache'),
(83, 6, 'Olmué'),
(84, 6, 'Villa Alemana'),
(85, 8, 'Rancagua'),
(86, 8, 'Codegua'),
(87, 8, 'Coinco'),
(88, 8, 'Coltauco'),
(89, 8, 'Doñihue'),
(90, 8, 'Graneros'),
(91, 8, 'Las Cabras'),
(92, 8, 'Machalí'),
(93, 8, 'Malloa'),
(94, 8, 'Mostazal'),
(95, 8, 'Olivar'),
(96, 8, 'Peumo'),
(97, 8, 'Pichidegua'),
(98, 8, 'Quinta de Tilcoco'),
(99, 8, 'Rengo'),
(100, 8, 'Requínoa'),
(101, 8, 'San Vicente'),
(102, 8, 'Pichilemu'),
(103, 8, 'La Estrella'),
(104, 8, 'Litueche'),
(105, 8, 'Marchihue'),
(106, 8, 'Navidad'),
(107, 8, 'Paredones'),
(108, 8, 'San Fernando'),
(109, 8, 'Chépica'),
(110, 8, 'Chimbarongo'),
(111, 8, 'Lolol'),
(112, 8, 'Nancagua'),
(113, 8, 'Palmilla'),
(114, 8, 'Peralillo'),
(115, 8, 'Placilla'),
(116, 8, 'Pumanque'),
(117, 8, 'Santa Cruz'),
(118, 9, 'Talca'),
(119, 9, 'Constitución'),
(120, 9, 'Curepto'),
(121, 9, 'Empedrado'),
(122, 9, 'Maule'),
(123, 9, 'Pelarco'),
(124, 9, 'Pencahue'),
(125, 9, 'Río Claro'),
(126, 9, 'San Clemente'),
(127, 9, 'San Rafael'),
(128, 9, 'Cauquenes'),
(129, 9, 'Chanco'),
(130, 9, 'Pelluhue'),
(131, 9, 'Curicó'),
(132, 9, 'Hualañé'),
(133, 9, 'Licantén'),
(134, 9, 'Molina'),
(135, 9, 'Rauco'),
(136, 9, 'Romeral'),
(137, 9, 'Sagrada Familia'),
(138, 9, 'Teno'),
(139, 9, 'Vichuquén'),
(140, 9, 'Linares'),
(141, 9, 'Colbún'),
(142, 9, 'Longaví'),
(143, 9, 'Parral'),
(144, 9, 'Retiro'),
(145, 9, 'San Javier'),
(146, 9, 'Villa Alegre'),
(147, 9, 'Yerbas Buenas'),
(148, 10, 'Chillán'),
(149, 10, 'Bulnes'),
(150, 10, 'Chillán Viejo'),
(151, 10, 'El Carmen'),
(152, 10, 'Pemuco'),
(153, 10, 'Pinto'),
(154, 10, 'Quillón'),
(155, 10, 'San Ignacio'),
(156, 10, 'Yungay'),
(157, 10, 'Quirihue'),
(158, 10, 'Cobquecura'),
(159, 10, 'Coelemu'),
(160, 10, 'Ninhue'),
(161, 10, 'Portezuelo'),
(162, 10, 'Ránquil'),
(163, 10, 'Treguaco'),
(164, 10, 'San Carlos'),
(165, 10, 'Coihueco'),
(166, 10, 'Ñiquén'),
(167, 10, 'San Fabián'),
(168, 10, 'San Nicolás'),
(169, 11, 'Concepción'),
(170, 11, 'Coronel'),
(171, 11, 'Chiguayante'),
(172, 11, 'Florida'),
(173, 11, 'Hualqui'),
(174, 11, 'Lota'),
(175, 11, 'Penco'),
(176, 11, 'San Pedro de La Paz'),
(177, 11, 'Santa Juana'),
(178, 11, 'Talcahuano'),
(179, 11, 'Tomé'),
(180, 11, 'Hualpén'),
(181, 11, 'Lebu'),
(182, 11, 'Arauco'),
(183, 11, 'Cañete'),
(184, 11, 'Contulmo'),
(185, 11, 'Curanilahue'),
(186, 11, 'Los Álamos'),
(187, 11, 'Tirúa'),
(188, 11, 'Los Ángeles'),
(189, 11, 'Antuco'),
(190, 11, 'Cabrero'),
(191, 11, 'Laja'),
(192, 11, 'Mulchén'),
(193, 11, 'Nacimiento'),
(194, 11, 'Negrete'),
(195, 11, 'Quilaco'),
(196, 11, 'Quilleco'),
(197, 11, 'San Rosendo'),
(198, 11, 'Santa Bárbara'),
(199, 11, 'Tucapel'),
(200, 11, 'Yumbel'),
(201, 11, 'Alto Biobío'),
(202, 12, 'Temuco'),
(203, 12, 'Carahue'),
(204, 12, 'Cunco'),
(205, 12, 'Curarrehue'),
(206, 12, 'Freire'),
(207, 12, 'Galvarino'),
(208, 12, 'Gorbea'),
(209, 12, 'Lautaro'),
(210, 12, 'Loncoche'),
(211, 12, 'Melipeuco'),
(212, 12, 'Nueva Imperial'),
(213, 12, 'Padre Las Casas'),
(214, 12, 'Perquenco'),
(215, 12, 'Pitrufquén'),
(216, 12, 'Pucón'),
(217, 12, 'Saavedra'),
(218, 12, 'Teodoro Schmidt'),
(219, 12, 'Toltén'),
(220, 12, 'Vilcún'),
(221, 12, 'Villarrica'),
(222, 12, 'Cholchol'),
(223, 12, 'Angol'),
(224, 12, 'Collipulli'),
(225, 12, 'Curacautín'),
(226, 12, 'Ercilla'),
(227, 12, 'Lonquimay'),
(228, 12, 'Los Sauces'),
(229, 12, 'Lumaco'),
(230, 12, 'Purén'),
(231, 12, 'Renaico'),
(232, 12, 'Traiguén'),
(233, 12, 'Victoria'),
(234, 13, 'Valdivia'),
(235, 13, 'Corral'),
(236, 13, 'Lanco'),
(237, 13, 'Los Lagos'),
(238, 13, 'Máfil'),
(239, 13, 'Mariquina'),
(240, 13, 'Paillaco'),
(241, 13, 'Panguipulli'),
(242, 13, 'La Unión'),
(243, 13, 'Futrono'),
(244, 13, 'Lago Ranco'),
(245, 13, 'Río Bueno'),
(246, 14, 'Puerto Montt'),
(247, 14, 'Calbuco'),
(248, 14, 'Cochamó'),
(249, 14, 'Fresia'),
(250, 14, 'Frutillar'),
(251, 14, 'Los Muermos'),
(252, 14, 'Llanquihue'),
(253, 14, 'Maullín'),
(254, 14, 'Puerto Varas'),
(255, 14, 'Castro'),
(256, 14, 'Ancud'),
(257, 14, 'Chonchi'),
(258, 14, 'Curaco de Vélez'),
(259, 14, 'Dalcahue'),
(260, 14, 'Puqueldón'),
(261, 14, 'Queilén'),
(262, 14, 'Quellón'),
(263, 14, 'Quemchi'),
(264, 14, 'Quinchao'),
(265, 14, 'Osorno'),
(266, 14, 'Puerto Octay'),
(267, 14, 'Purranque'),
(268, 14, 'Puyehue'),
(269, 14, 'Río Negro'),
(270, 14, 'San Juan de la Costa'),
(271, 14, 'San Pablo'),
(272, 14, 'Chaitén'),
(273, 14, 'Futaleufú'),
(274, 14, 'Hualaihué'),
(275, 14, 'Palena'),
(276, 15, 'Coyhaique'),
(277, 15, 'Lago Verde'),
(278, 15, 'Aysén'),
(279, 15, 'Cisnes'),
(280, 15, 'Guaitecas'),
(281, 15, 'Cochrane'),
(282, 15, 'O\'Higgins'),
(283, 15, 'Tortel'),
(284, 15, 'Chile Chico'),
(285, 15, 'Río Ibáñez'),
(286, 16, 'Punta Arenas'),
(287, 16, 'Laguna Blanca'),
(288, 16, 'Río Verde'),
(289, 16, 'San Gregorio'),
(290, 16, 'Cabo de Hornos'),
(291, 16, 'Antártica'),
(292, 16, 'Porvenir'),
(293, 16, 'Primavera'),
(294, 16, 'Timaukel'),
(295, 16, 'Natales'),
(296, 16, 'Torres del Paine'),
(297, 7, 'Santiago'),
(298, 7, 'Cerrillos'),
(299, 7, 'Cerro Navia'),
(300, 7, 'Conchalí'),
(301, 7, 'El Bosque'),
(302, 7, 'Estación Central'),
(303, 7, 'Huechuraba'),
(304, 7, 'Independencia'),
(305, 7, 'La Cisterna'),
(306, 7, 'La Florida'),
(307, 7, 'La Granja'),
(308, 7, 'La Pintana'),
(309, 7, 'La Reina'),
(310, 7, 'Las Condes'),
(311, 7, 'Lo Barnechea'),
(312, 7, 'Lo Espejo'),
(313, 7, 'Lo Prado'),
(314, 7, 'Macul'),
(315, 7, 'Maipú'),
(316, 7, 'Ñuñoa'),
(317, 7, 'Pedro Aguirre Cerda'),
(318, 7, 'Peñalolén'),
(319, 7, 'Providencia'),
(320, 7, 'Pudahuel'),
(321, 7, 'Quilicura'),
(322, 7, 'Quinta Normal'),
(323, 7, 'Recoleta'),
(324, 7, 'Renca'),
(325, 7, 'San Joaquín'),
(326, 7, 'San Miguel'),
(327, 7, 'San Ramón'),
(328, 7, 'Vitacura'),
(329, 7, 'Puente Alto'),
(330, 7, 'Pirque'),
(331, 7, 'San José de Maipo'),
(332, 7, 'Colina'),
(333, 7, 'Lampa'),
(334, 7, 'Til Til'),
(335, 7, 'San Bernardo'),
(336, 7, 'Buin'),
(337, 7, 'Calera de Tango'),
(338, 7, 'Paine'),
(339, 7, 'Melipilla'),
(340, 7, 'Alhué'),
(341, 7, 'Curacaví'),
(342, 7, 'María Pinto'),
(343, 7, 'San Pedro'),
(344, 7, 'Talagante'),
(345, 7, 'El Monte'),
(346, 7, 'Isla de Maipo'),
(347, 7, 'Padre Hurtado'),
(348, 7, 'Peñaflor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones_tbl`
--

CREATE TABLE `regiones_tbl` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones_tbl`
--

INSERT INTO `regiones_tbl` (`id`, `nombre`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votante_tbl`
--

CREATE TABLE `votante_tbl` (
  `id` int(11) NOT NULL,
  `nom_ap` varchar(150) DEFAULT '',
  `alias` varchar(100) DEFAULT NULL,
  `rut` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `comuna` int(11) DEFAULT NULL,
  `id_candidato` int(11) DEFAULT NULL,
  `web` int(11) DEFAULT NULL,
  `tv` int(11) DEFAULT NULL,
  `redes_soc` int(11) DEFAULT NULL,
  `amigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidato_tbl`
--
ALTER TABLE `candidato_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comunas_tbl`
--
ALTER TABLE `comunas_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cities_regions` (`id_region`);

--
-- Indices de la tabla `regiones_tbl`
--
ALTER TABLE `regiones_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votante_tbl`
--
ALTER TABLE `votante_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidato_tbl`
--
ALTER TABLE `candidato_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comunas_tbl`
--
ALTER TABLE `comunas_tbl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT de la tabla `regiones_tbl`
--
ALTER TABLE `regiones_tbl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `votante_tbl`
--
ALTER TABLE `votante_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas_tbl`
--
ALTER TABLE `comunas_tbl`
  ADD CONSTRAINT `FK_cities_regions` FOREIGN KEY (`id_region`) REFERENCES `regiones_tbl` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
