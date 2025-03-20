-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-04-2023 a las 21:50:40
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `invetsit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `areaId` int(10) UNSIGNED NOT NULL COMMENT 'Id: identificador del area',
  `areaName` varchar(500) NOT NULL COMMENT 'Nombre del area',
  `imagenURL` varchar(500) NOT NULL COMMENT 'URL de imagen',
  `class` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`areaId`, `areaName`, `imagenURL`, `class`) VALUES
(1, 'Comunicaciones 6G y THz', 'images/comunicaciones6g.png', 'box1'),
(2, 'Energía solar y medioambiente', 'images/energiasolar.png', 'box2'),
(3, 'Ciencia de datos', 'images/cienciadatos.png', 'box3'),
(4, 'Tecnologías para la salud', 'images/tecsalud.png', 'box4'),
(5, 'Tecnologías cuánticas', 'images/teccuanticas.png', 'box5'),
(6, 'Redes y ciberseguridad', 'images/redesyciberseguridad.png', 'box6'),
(7, 'Sistemas electrónicos avanzados', 'images/sistelectronicos.png', 'box7'),
(8, 'Tecnologías de semiconductores', 'images/tecsemiconductores.png', 'box8');
(9, 'Multimedia', 'images/multimedia.png', 'box9');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centros`
--

CREATE TABLE `centros` (
  `centroId` int(10) UNSIGNED NOT NULL COMMENT 'Id de centro',
  `centroName` varchar(50) NOT NULL,
  `centroURL` varchar(500) NOT NULL COMMENT 'URL página de centro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `centros`
--

INSERT INTO `centros` (`centroId`, `centroName`, `centroURL`) VALUES
(1, 'IPTC', 'http://www.etsit.upm.es/investigacion/institutos-y-centros-de-investigacion/i5.html'),
(2, 'GMME', 'https://www.etsit.upm.es/investigacion/grupos-de-investigacion/microsistemas-y-materiales-electronicos.html'),
(3, 'IES', 'https://www.etsit.upm.es/investigacion/institutos-y-centros-de-investigacion/ies.html'),
(4, 'ISOM', 'https://www.etsit.upm.es/investigacion/institutos-y-centros-de-investigacion/isom.html'),
(5, 'CTB', ' '),
(6, 'CEMDATIC', 'https://www.etsit.upm.es/investigacion/institutos-y-centros-de-investigacion/cemdatic.html'),
(7, 'CeDINT', 'https://www.etsit.upm.es/investigacion/institutos-y-centros-de-investigacion/cedint.html');
(8, 'GB2S', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EELISA`
--

CREATE TABLE `EELISA` (
  `eelisaId` int(10) UNSIGNED NOT NULL COMMENT 'Id de área investigación EELISA',
  `eelisaName` varchar(500) NOT NULL COMMENT 'Nombre de área EELISA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `EELISA`
--

INSERT INTO `EELISA` (`eelisaId`, `eelisaName`) VALUES
(1, 'EELISA 1. Artificial intelligence'),
(2, 'EELISA 2. Connectivity'),
(3, 'EELISA 3. Social Sciences and Humanities'),
(4, 'EELISA 4. Digitalization'),
(5, 'EELISA 5. Health'),
(6, 'EELISA 6. Smart Industry and Space Technologies'),
(7, 'EELISA 7. Advanced Material Science and Engineering'),
(8, 'EELISA 8. Culture, Creativity and Inclusive Society'),
(9, 'EELISA 9. Food, Bioeconomy, Natural Resources, Agriculture and Environment'),
(10, 'EELISA 10. Climate, Energy and Mobility'),
(11, 'EELISA 11. Natural Sciences');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `lineaId` int(10) UNSIGNED NOT NULL COMMENT 'Id de línea',
  `areaId` int(10) UNSIGNED NOT NULL COMMENT 'Id de área',
  `descripcion` varchar(500) NOT NULL COMMENT 'Descripción de línea'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lineas`
--

INSERT INTO `lineas` (`lineaId`, `areaId`, `descripcion`) VALUES
(1, 1, 'Componentes y subsistemas en microondas y milimétricas'),
(2, 1, 'Comunicaciones ópticas'),
(3, 1, 'Estándar 6G'),
(4, 1, 'Holografía'),
(5, 1, 'Inteligencia artificial'),
(6, 1, 'Aplicaciones multimedia en redes 6G'),
(7, 1, 'THz beam shaping'),
(8, 1, 'Dispositivos para sistemas 6G'),
(9, 2, 'Sistemas fotovoltaicos'),
(10, 2, 'Materiales y células fotovoltaicas avanzados'),
(11, 2, 'Concentración fotovoltaica'),
(12, 2, 'Sensores de gases'),
(13, 2, 'Aplicaciones fotovoltaicas de gran potencial'),
(14, 2, 'Secuestro de CO2 por métodos físicos'),
(15, 2, 'LEDs para generación de luz blanca'),
(16, 2, 'Maximización del valor de la generación fotovoltaica (en el sistema energético'),
(17, 2, 'Nueva generación de productos fotovoltaicos'),
(18, 2, 'Mejora del perfil medioambiental de la tecnología fotovoltaica'),
(19, 3, 'Procesado de lenguaje natural (NLP)'),
(20, 3, 'Aprendizaje automático'),
(21, 3, 'Inteligencia artificial'),
(22, 3, 'Sistemas de soporte a la decisión'),
(23, 3, 'Computación en la nube'),
(24, 3, 'Computación en el borde'),
(25, 3, 'Aplicaciones verticales : tráfico aéreo, defensa, espacio, salud…'),
(26, 3, 'Inteligencia artificial y aprendizaje automático avanzado'),
(27, 3, 'Gemelos digitales'),
(28, 3, 'Espacios y lagos de datos'),
(29, 4, 'Transformación digital de la sanidad'),
(30, 4, 'Microsensores'),
(31, 4, 'Biotecnolgía'),
(32, 4, 'Procesado de imágenes médicas'),
(33, 4, 'Neurociencia'),
(34, 4, 'Robótica'),
(35, 4, 'Quirófano inteligente'),
(36, 4, 'Neurotecnología'),
(37, 4, 'Lab-on-chip'),
(38, 4, 'Dispositivos neuromórficos'),
(39, 5, 'Óptica cuántica'),
(40, 5, 'Generador cuántico de números aleatorios'),
(41, 5, 'Single photon electronics'),
(42, 5, 'Nodo comunicaciones cuánticas'),
(43, 5, 'Comunicaciones cuánticas'),
(44, 5, 'Dispositivos cuánticos integrados'),
(45, 5, 'Sensores cuánticos'),
(46, 5, 'Comunicaciones cuánticas fotónicas'),
(47, 5, 'Aplicaciones para comunicaciones cuánticas'),
(48, 6, 'Ciberseguridad'),
(49, 6, 'Criptografía'),
(50, 6, 'Redes telemáticas e IoT'),
(51, 6, 'Eficiencia energética en redes y servicios de telecomunicación'),
(52, 6, 'Criptografía cuántica'),
(53, 6, 'Prototipos de verificación automática de seguridad en el software'),
(54, 6, 'Arquitectura PISA y lenguaje P4'),
(55, 6, 'Verificación automática de seguridad y gestión inteligente de incidentes'),
(56, 7, 'Aplicaciones IoT: domótica, ciudades inteligentes, coche conectado, industria 4.0'),
(57, 7, 'Tecnologías para defensa y seguridad'),
(58, 7, 'Realidad virtual, aumentada y mixta'),
(59, 7, 'Tecnologías de soporte para IoT'),
(60, 7, 'Wearables'),
(61, 7, 'Detección inalámbrica lejana'),
(62, 7, 'Industria'),
(63, 7, 'Hardware y computación verde'),
(64, 7, 'Procesado de voz, audio, imagen y vídeo'),
(65, 7, 'Tecnologías avanzadas de interacción persona-máquina multimodal'),
(66, 8, 'Microelectrónica, electrónica, fotónica, materiales avanzados'),
(67, 8, 'Nanomateriales'),
(68, 8, 'Microsensores'),
(69, 8, 'Óptica integrada'),
(70, 8, 'Espintrónica'),
(71, 8, 'Plasmónica'),
(72, 8, 'Metaestructuras ópticas'),
(73, 8, 'Nanotecnología'),
(74, 8, 'Sistemas híbridos integrados fotónicos');
(75, 9, 'Radiocomunicaciones digitales');
(76, 9, 'Sistemas de banda ancha');
(77, 9, 'Análisis de señal');
(78, 9, 'Interfaces hombre-máquina');
(79, 9, 'Reconocimiento de voz');
(80, 9, 'Síntesis de voz');
(81, 9, 'Tratamieneto de señal de audio');
(82, 9, 'Análisis de imágenes y vídeo para extracción de características');
(83, 9, 'Televisión digital y televisión de alta definición digital');
(84, 9, 'Gráficos 3D y realidad aumentada');
(85, 9, 'Teoría y métodos de tratamiento digital de imágenes');
(86, 9, 'Codificación y transmisión de información visual');
(87, 9, 'Extracción de información tridimensaional');



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relCentros`
--

CREATE TABLE `relCentros` (
  `areaId` int(10) UNSIGNED NOT NULL,
  `centroId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `relCentros`
--

INSERT INTO `relCentros` (`areaId`, `centroId`) VALUES
(1, 1),
(1, 6),
(2, 2),
(2, 3),
(2, 4),
(2, 1),
(3, 1),
(3, 8),
(4, 1),
(4, 4),
(4, 5),
(4, 8),
(4, 6),
(5, 1),
(5, 4),
(5, 6),
(6, 1),
(6, 8),
(7, 1),
(7, 7),
(8, 1),
(8, 4),
(8, 6);
(9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relEELISA`
--

CREATE TABLE `relEELISA` (
  `eelisaId` int(10) UNSIGNED NOT NULL COMMENT 'Id área EELISA',
  `areaId` int(10) UNSIGNED NOT NULL COMMENT 'Id de área'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `relEELISA`
--

INSERT INTO `relEELISA` (`eelisaId`, `areaId`) VALUES
(1, 1),
(2, 2),
(6, 1),
(10, 2),
(7, 2),
(1, 3),
(2, 3),
(5, 4),
(7, 5),
(4, 6),
(2, 6),
(6, 7),
(7, 8);
(4, 9);
(2, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`areaId`);

--
-- Indices de la tabla `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`centroId`);

--
-- Indices de la tabla `EELISA`
--
ALTER TABLE `EELISA`
  ADD PRIMARY KEY (`eelisaId`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`lineaId`),
  ADD KEY `areaId` (`areaId`);

--
-- Indices de la tabla `relCentros`
--
ALTER TABLE `relCentros`
  ADD KEY `centroId` (`areaId`,`centroId`),
  ADD KEY `centroId_2` (`centroId`);

--
-- Indices de la tabla `relEELISA`
--
ALTER TABLE `relEELISA`
  ADD KEY `areaId` (`areaId`),
  ADD KEY `eelisaId` (`eelisaId`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `areaId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id: identificador del area', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `centros`
--
ALTER TABLE `centros`
  MODIFY `centroId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id de centro', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `EELISA`
--
ALTER TABLE `EELISA`
  MODIFY `eelisaId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id de área investigación EELISA', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `lineas`
--
ALTER TABLE `lineas`
  MODIFY `lineaId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id de línea', AUTO_INCREMENT=75;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD CONSTRAINT `lineas_ibfk_1` FOREIGN KEY (`areaId`) REFERENCES `areas` (`areaId`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `relCentros`
--
ALTER TABLE `relCentros`
  ADD CONSTRAINT `relcentros_ibfk_1` FOREIGN KEY (`centroId`) REFERENCES `centros` (`centroId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `relcentros_ibfk_2` FOREIGN KEY (`areaId`) REFERENCES `areas` (`areaId`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `relEELISA`
--
ALTER TABLE `relEELISA`
  ADD CONSTRAINT `releelisa_ibfk_1` FOREIGN KEY (`eelisaId`) REFERENCES `EELISA` (`eelisaId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `releelisa_ibfk_2` FOREIGN KEY (`areaId`) REFERENCES `areas` (`areaId`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
