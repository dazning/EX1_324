-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2023 a las 10:27:09
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
-- Base de datos: `mibd_ticona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `IDDepartamento` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`IDDepartamento`, `Nombre`) VALUES
(1, 'la Paz'),
(2, 'Pando'),
(3, 'Beni'),
(4, 'Oruro'),
(5, 'Potosi'),
(6, 'Chuquisaca'),
(7, 'Tarija'),
(8, 'Cochabamba'),
(9, 'Santa Cruz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `IDDocente` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Genero` varchar(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Roldocente` varchar(20) NOT NULL DEFAULT 'docente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`IDDocente`, `Nombre`, `Apellido`, `Genero`, `Username`, `Password`, `Roldocente`) VALUES
(1, 'Laura', 'Martinez', 'Mujer', 'lauramartinez', 'docente123', 'docente'),
(2, 'Pedro', 'Rodriguez', 'Hombre', 'pedrorodriguez', 'prof456', 'docente'),
(3, 'Ana', 'Garcia', 'Mujer', 'anagarcia', 'teacher789', 'docente'),
(4, 'Luis', 'Gonzalez', 'Hombre', 'luisgonzalez', 'lgonzalez123', 'docente'),
(5, 'Sofia', 'Lopez', 'Mujer', 'sofialopez', 'slo123', 'docente'),
(6, 'David', 'Torres', 'Hombre', 'davidtorres', 'dtorres456', 'docente'),
(7, 'Elena', 'Sanchez', 'Mujer', 'elenasanchez', 'esanchez789', 'docente'),
(8, 'Juan', 'Garcia', 'Hombre', 'juangarcia', 'jgarcia123', 'docente'),
(9, 'Maria', 'Lopez', 'Mujer', 'marialopez', 'mlopez456', 'docente'),
(10, 'Pedro', 'Perez', 'Hombre', 'pedroperez', 'pperez123', 'docente'),
(11, 'Laura', 'Gomez', 'Mujer', 'lauragomez', 'lgomez456', 'docente'),
(12, 'Carolina', 'Rodriguez', 'Mujer', 'carolinarodriguez', 'crodriguez123', 'docente'),
(13, 'Fernando', 'Martinez', 'Hombre', 'fernandomartinez', 'fmartinez456', 'docente'),
(14, 'Ana', 'Torres', 'Mujer', 'anatorres', 'atorres123', 'docente'),
(15, 'Diego', 'Gonzalez', 'Hombre', 'diegogonzalez', 'dgonzalez456', 'docente'),
(16, 'Gabriela', 'Sanchez', 'Mujer', 'gabrielasanchez', 'gsanchez123', 'docente'),
(17, 'Javier', 'Lopez', 'Hombre', 'javierlopez', 'jlopez456', 'docente'),
(18, 'Andrea', 'Rodriguez', 'Mujer', 'andrearodriguez', 'arodriguez123', 'docente'),
(19, 'Raul', 'Gutierrez', 'Hombre', 'raulgutierrez', 'rgutierrez456', 'docente'),
(20, 'Natalia', 'Fernandez', 'Mujer', 'nataliafernandez', 'nfernandez123', 'docente'),
(21, 'Hector', 'Ramirez', 'Hombre', 'hectorramirez', 'hramirez456', 'docente'),
(22, 'Valeria', 'Gonzalez', 'Mujer', 'valeriagonzalez', 'vgonzalez123', 'docente'),
(23, 'Oscar', 'Hernandez', 'Hombre', 'oscarhernandez', 'ohernandez456', 'docente'),
(24, 'Martha', 'Martinez', 'Mujer', 'marthamartinez', 'mmartinez123', 'docente'),
(25, 'Ricardo', 'Torres', 'Hombre', 'ricardotorres', 'rtorres456', 'docente'),
(26, 'Sara', 'Sanchez', 'Mujer', 'sarasanchez', 'ssanchez123', 'docente'),
(27, 'Fernando', 'Gomez', 'Hombre', 'fernandogomez', 'fgomez456', 'docente'),
(28, 'Luisa', 'Lopez', 'Mujer', 'luisalopez', 'llopez123', 'docente'),
(29, 'Victor', 'Rodriguez', 'Hombre', 'victorrodriguez', 'vrodriguez456', 'docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `IDEstudiante` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `FechaNacimiento` varchar(50) DEFAULT NULL,
  `IDDepartamento` int(11) DEFAULT NULL,
  `Genero` varchar(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Rol` varchar(20) NOT NULL DEFAULT 'estudiante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`IDEstudiante`, `Nombre`, `Apellido`, `FechaNacimiento`, `IDDepartamento`, `Genero`, `Username`, `Password`, `Rol`) VALUES
(1, 'Juan', 'Perez', '1995-03-15', 1, 'Hombre', 'juanperez', 'contrasena123', 'estudiante'),
(16, 'awd1', 'awdawd', 'awdawd', 3, 'adw', 'adwawdwad', 'awdawdawd', 'awdawdawd'),
(17, 'awdawd', 'awdawd', '1998-11-09', 8, 'Mujer', 'anatorres', 'atorres789', 'estudiante'),
(18, 'Diego', 'Gonzalez', '1995-09-27', 9, 'Hombre', 'diegogonzalez', 'diego123', 'estudiante'),
(19, 'Gabriela', 'Sanchez', '1996-12-03', 1, 'Mujer', 'gabrielasanchez', 'gs123', 'estudiante'),
(20, 'Javier', 'Lopez', '1999-02-18', 2, 'Hombre', 'javierlopez', 'jlopez456', 'estudiante'),
(21, 'Andrea', 'Rodriguez', '1994-07-21', 3, 'Mujer', 'andrearodriguez', 'arodriguez123', 'estudiante'),
(22, 'Raul', 'Gutierrez', '1997-11-10', 4, 'Hombre', 'raulgutierrez', 'rgutierrez456', 'estudiante'),
(23, 'Natalia', 'Fernandez', '1998-08-28', 5, 'Mujer', 'nataliafernandez', 'nfernandez789', 'estudiante'),
(24, 'Hector', 'Ramirez', '1996-06-15', 6, 'Hombre', 'hectorramirez', 'hramirez123', 'estudiante'),
(25, 'Valeria', 'Gonzalez', '1995-03-09', 7, 'Mujer', 'valeriagonzalez', 'vgonzalez456', 'estudiante'),
(26, 'Oscar', 'Hernandez', '1999-04-05', 8, 'Hombre', 'oscarhernandez', 'ohernandez123', 'estudiante'),
(27, 'Martha', 'Martinez', '1997-09-12', 9, 'Mujer', 'marthamartinez', 'mmartinez456', 'estudiante'),
(28, 'Ricardo', 'Torres', '1998-10-27', 1, 'Hombre', 'ricardotorres', 'rtorres123', 'estudiante'),
(29, 'Sara', 'Sanchez', '1995-07-14', 2, 'Mujer', 'sarasanchez', 'ssanchez456', 'estudiante'),
(30, 'Fernando', 'Gomez', '1996-12-30', 3, 'Hombre', 'fernandogomez', 'fgomez123', 'estudiante'),
(31, 'Luisa', 'Lopez', '1994-04-19', 4, 'Mujer', 'luisalopez', 'llopez456', 'estudiante'),
(32, 'Victor', 'Rodriguez', '1997-05-02', 5, 'Hombre', 'victorrodriguez', 'victor123', 'estudiante'),
(33, 'Carla', 'Gonzalez', '1999-08-07', 6, 'Mujer', 'carlagonzalez', 'cgonzalez456', 'estudiante'),
(34, 'Martin', 'Perez', '1998-02-25', 7, 'Hombre', 'martinperez', 'mperez123', 'estudiante'),
(35, 'Monica', 'Hernandez', '1995-01-08', 8, 'Mujer', 'monicahernandez', 'mhernandez456', 'estudiante'),
(36, 'Andres', 'Fernandez', '1996-09-24', 9, 'Hombre', 'andresfernandez', 'afernandez123', 'estudiante'),
(37, 'Camila', 'Gutierrez', '1997-11-19', 1, 'Mujer', 'camilagutierrez', 'cgutierrez456', 'estudiante'),
(38, 'Roberto', 'Martinez', '1994-05-13', 2, 'Hombre', 'robertomartinez', 'rmartinez123', 'estudiante'),
(39, 'Mariana', 'Gomez', '1999-03-01', 3, 'Mujer', 'marianagomez', 'mgomez456', 'estudiante'),
(40, 'Eduardo', 'Sanchez', '1996-08-27', 4, 'Hombre', 'eduardosanchez', 'esanchez123', 'estudiante'),
(41, 'Isabel', 'Lopez', '1995-12-03', 5, 'Mujer', 'isabellopez', 'ilopez456', 'estudiante'),
(42, 'Felipe', 'Torres', '1998-01-28', 6, 'Hombre', 'felipetorres', 'ftorres123', 'estudiante'),
(43, 'Sandras', 'Bullock', '1995-11-06', 1, 'Mujer', 'sandrabu', 'sandrabullock', 'estudiante'),
(58, 'aaaaaaaaaaaa', 'awd', 'awd', 5, 'awdaw', 'awdawdawd', 'awdawdw', 'awdawdd'),
(86, 'awdeditado', 'awd', '1212-02-12', 4, 'awdawd', 'awdawdaw', 'awdawdawdaw', 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `IDInscripcion` int(11) NOT NULL,
  `IDEstudiante` int(11) DEFAULT NULL,
  `IDMateria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`IDInscripcion`, `IDEstudiante`, `IDMateria`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(46, 16, 22),
(47, 16, 23),
(48, 16, 24),
(49, 17, 1),
(50, 17, 2),
(51, 17, 3),
(52, 18, 4),
(53, 18, 5),
(54, 18, 6),
(55, 19, 7),
(56, 19, 8),
(57, 19, 9),
(58, 20, 10),
(59, 20, 11),
(60, 20, 12),
(61, 21, 13),
(62, 21, 14),
(63, 21, 15),
(64, 22, 16),
(65, 22, 17),
(66, 22, 18),
(67, 23, 19),
(68, 23, 20),
(69, 23, 21),
(70, 24, 22),
(71, 24, 23),
(72, 24, 24),
(73, 25, 1),
(74, 25, 2),
(75, 25, 3),
(76, 26, 4),
(77, 26, 5),
(78, 26, 6),
(79, 27, 7),
(80, 27, 8),
(81, 27, 9),
(82, 28, 10),
(83, 28, 11),
(84, 28, 12),
(85, 29, 13),
(86, 29, 14),
(87, 29, 15),
(88, 30, 16),
(89, 30, 17),
(90, 30, 18),
(91, 31, 19),
(92, 31, 20),
(93, 31, 21),
(94, 32, 22),
(95, 32, 23),
(96, 32, 24),
(97, 33, 1),
(98, 33, 2),
(99, 33, 3),
(100, 34, 4),
(101, 34, 5),
(102, 34, 6),
(103, 35, 7),
(104, 35, 8),
(105, 35, 9),
(106, 36, 10),
(107, 36, 11),
(108, 36, 12),
(109, 37, 13),
(110, 37, 14),
(111, 37, 15),
(112, 38, 16),
(113, 38, 17),
(114, 38, 18),
(115, 39, 19),
(116, 39, 20),
(117, 39, 21),
(118, 40, 22),
(119, 40, 23),
(120, 40, 24),
(121, 41, 28),
(122, 42, 28),
(123, 43, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `IDMateria` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `IDSemestre` int(11) DEFAULT NULL,
  `SIGLA` varchar(10) NOT NULL,
  `IDDocente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`IDMateria`, `Nombre`, `IDSemestre`, `SIGLA`, `IDDocente`) VALUES
(1, 'Introducción a la Informática', 1, 'INF-111', 1),
(2, 'CALCULO I', 1, 'MAT-115', 2),
(3, 'FISICA I', 1, 'FIS-122', 3),
(4, 'Algoritmos y Programación', 2, 'INF-121', 4),
(5, 'CALCULO II', 2, 'MAT-125', 5),
(6, 'ESTADISTICA I', 2, 'EST-133', 6),
(7, 'Estructura de Datos y Algoritmos', 3, 'INF-131', 7),
(8, 'IDIOMAS I', 3, 'LIN-135', 8),
(9, 'Laboratorio de INF-131', 3, 'LAB-131', 9),
(10, 'Sistemas de Gestion', 4, 'INF-141', 10),
(11, 'Taller de Programacion', 4, 'INF-143', 11),
(12, 'Logica para la Ciencia de la Computacion', 4, 'INF-144', 12),
(13, 'Sistemas Operativos', 5, 'INF-151', 13),
(14, 'ASSEMBLER', 5, 'INF-153', 14),
(15, 'Investigacion de Operaciones I', 5, 'EST-155', 15),
(16, 'Administración de Base de Datos', 6, 'INF-161', 16),
(17, 'Ingenieria de Software', 6, 'INF-163', 17),
(18, 'Informatica y Sociedad', 6, 'INF-166', 18),
(19, 'Taller de Base de Datos', 7, 'INF-272', 19),
(20, 'Telematica', 7, 'INF-273', 20),
(21, 'Teoria de Sistemas y Modelos', 7, 'INF-271', 21),
(22, 'Taller de Sistemas de Informacion', 8, 'INF-281', 22),
(23, 'Especificaciones formales y verificacion', 8, 'INF-282', 23),
(24, 'Sistemas en tiempo Real y Distribuidos', 8, 'INF-317', 24),
(25, 'Taller de Licenciatura I', 9, 'INF-398', 25),
(26, 'Simulacion de Sistemas', 9, 'INF-391', 26),
(27, 'Programacion Multimedial', 9, 'INF-324', 27),
(28, 'Taller de Licenciatura II', 10, 'INF-399', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `IDNotas` int(11) NOT NULL,
  `IDEstudiante` int(11) DEFAULT NULL,
  `IDMateria` int(11) DEFAULT NULL,
  `Calificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`IDNotas`, `IDEstudiante`, `IDMateria`, `Calificacion`) VALUES
(1, 1, 1, 69),
(2, 1, 2, 68),
(3, 1, 3, 82),
(46, 16, 22, 76),
(47, 16, 23, 58),
(48, 16, 24, 60),
(49, 17, 1, 73),
(50, 17, 2, 88),
(51, 17, 3, 72),
(52, 18, 4, 93),
(53, 18, 5, 53),
(54, 18, 6, 82),
(55, 19, 7, 52),
(56, 19, 8, 63),
(57, 19, 9, 56),
(58, 20, 10, 91),
(59, 20, 11, 89),
(60, 20, 12, 71),
(61, 21, 13, 88),
(62, 21, 14, 76),
(63, 21, 15, 66),
(64, 22, 16, 99),
(65, 22, 17, 97),
(66, 22, 18, 92),
(67, 23, 19, 66),
(68, 23, 20, 54),
(69, 23, 21, 68),
(70, 24, 22, 80),
(71, 24, 23, 94),
(72, 24, 24, 80),
(73, 25, 1, 69),
(74, 25, 2, 52),
(75, 25, 3, 53),
(76, 26, 4, 57),
(77, 26, 5, 76),
(78, 26, 6, 61),
(79, 27, 7, 72),
(80, 27, 8, 79),
(81, 27, 9, 77),
(82, 28, 10, 99),
(83, 28, 11, 65),
(84, 28, 12, 74),
(85, 29, 13, 76),
(86, 29, 14, 59),
(87, 29, 15, 63),
(88, 30, 16, 89),
(89, 30, 17, 56),
(90, 30, 18, 61),
(91, 31, 19, 87),
(92, 31, 20, 53),
(93, 31, 21, 52),
(94, 32, 22, 97),
(95, 32, 23, 81),
(96, 32, 24, 66),
(97, 33, 1, 85),
(98, 33, 2, 78),
(99, 33, 3, 82),
(100, 34, 4, 79),
(101, 34, 5, 95),
(102, 34, 6, 91),
(103, 35, 7, 68),
(104, 35, 8, 65),
(105, 35, 9, 69),
(106, 36, 10, 98),
(107, 36, 11, 87),
(108, 36, 12, 90),
(109, 37, 13, 89),
(110, 37, 14, 74),
(111, 37, 15, 54),
(112, 38, 16, 94),
(113, 38, 17, 61),
(114, 38, 18, 72),
(115, 39, 19, 75),
(116, 39, 20, 60),
(117, 39, 21, 72),
(118, 40, 22, 82),
(119, 40, 23, 91),
(120, 40, 24, 63),
(121, 41, 28, 52),
(122, 42, 28, 62),
(123, 43, 28, 87);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `IDSemestre` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`IDSemestre`, `Nombre`) VALUES
(1, 'Semestre 1'),
(2, 'Semestre 2'),
(3, 'Semestre 3'),
(4, 'Semestre 4'),
(5, 'Semestre 5'),
(6, 'Semestre 6'),
(7, 'Semestre 7'),
(8, 'Semestre 8'),
(9, 'Semestre 9'),
(10, 'Semestre 10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IDDepartamento`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`IDDocente`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`IDEstudiante`),
  ADD KEY `IDDepartamento` (`IDDepartamento`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`IDInscripcion`),
  ADD KEY `IDMateria` (`IDMateria`),
  ADD KEY `IDEstudiante` (`IDEstudiante`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`IDMateria`),
  ADD KEY `IDSemestre` (`IDSemestre`),
  ADD KEY `IDDocente` (`IDDocente`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`IDNotas`),
  ADD KEY `IDMateria` (`IDMateria`),
  ADD KEY `fk_Estudiante_Notas` (`IDEstudiante`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`IDSemestre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `IDDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `IDDocente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `IDEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `IDInscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `IDMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `IDNotas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `IDSemestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`IDDepartamento`) REFERENCES `departamento` (`IDDepartamento`);

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `fk_Estudiante_Inscripcion` FOREIGN KEY (`IDEstudiante`) REFERENCES `estudiante` (`IDEstudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`IDEstudiante`) REFERENCES `estudiante` (`IDEstudiante`),
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`IDMateria`) REFERENCES `materia` (`IDMateria`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`IDSemestre`) REFERENCES `semestre` (`IDSemestre`),
  ADD CONSTRAINT `materia_ibfk_2` FOREIGN KEY (`IDDocente`) REFERENCES `docente` (`IDDocente`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_Estudiante_Notas` FOREIGN KEY (`IDEstudiante`) REFERENCES `estudiante` (`IDEstudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`IDEstudiante`) REFERENCES `estudiante` (`IDEstudiante`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`IDMateria`) REFERENCES `materia` (`IDMateria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
