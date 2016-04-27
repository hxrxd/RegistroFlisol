-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-04-2016 a las 08:02:04
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
-- Creación: 26-04-2016 a las 18:11:00
--

CREATE TABLE `partaker` (
  `id_partaker` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `place` varchar(100) DEFAULT NULL,
  `ics` varchar(20) NOT NULL,
  `ic` varchar(20) NOT NULL,
  `ii` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `partaker`:
--

--
-- Volcado de datos para la tabla `partaker`
--

INSERT INTO `partaker` (`id_partaker`, `name`, `email`, `date`, `place`, `ics`, `ic`, `ii`) VALUES
(1, 'Jose Madero', 'jmadero@gmail.com', '2016-04-26 18:14:14', 'Intecap', 'Si', 'No', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--
-- Creación: 27-04-2016 a las 04:51:41
--

CREATE TABLE `students` (
  `id_student` int(11) NOT NULL,
  `carne` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `career` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `students`:
--

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id_student`, `carne`, `name`, `career`) VALUES
(1, '8612822', 'Gomez Morales Geovanni Antonio', 'Ingeniería Civil'),
(2, '9740056', 'Mendez Mendez Isaias Fernando', 'Ingeniería en Ciencias y Sistemas'),
(3, '200640271', 'Tellería Sagastume María Auxiliadora', 'Ingeniería Civil'),
(4, '200640271', 'Tellería Sagastume María Auxiliadora', 'Ingeniería Industrial'),
(5, '200640276', 'Orellana Carrera Dany David', 'Ingeniería Civil'),
(6, '200640535', 'Ayau Orellana Hector Renato', 'Ingeniería en Ciencias y Sistemas'),
(7, '200741777', 'Linares Sandoval Edgar Eduardo', 'Ingeniería Civil'),
(8, '200742847', 'Guerra Hernandez Allan Humberto', 'Ingeniería Civil'),
(9, '200815560', 'Salguero Barrientos Jose Manuel', 'Ingeniería Industrial'),
(10, '200815560', 'Salguero Barrientos Jose Manuel', 'Ingeniería Civil'),
(11, '200843366', 'Calderon Lemus Ever Josue', 'Ingeniería Civil'),
(12, '200843380', 'Carpio Méndez Luis Edgardo', 'Ingeniería Industrial'),
(13, '200843427', 'Rosal Cordón Raul Emilio', 'Ingeniería Civil'),
(14, '200843431', 'Pinituj Garcia Ivan Alberto', 'Ingeniería Industrial'),
(15, '200843468', 'Flores Méndez Osman Manolo', 'Ingeniería Civil'),
(16, '200843469', 'Flores Castañeda Carlos Rodolfo', 'Ingeniería Civil'),
(17, '200843472', 'Díaz Flores Alejandro Antonio', 'Ingeniería Civil'),
(18, '200843473', 'Ariza Arriaga Hugo Ricardo', 'Ingeniería en Ciencias y Sistemas'),
(19, '200843496', 'Catalán Martínez Giancarlo Fredy Estuardo', 'Ingeniería Civil'),
(20, '200843865', 'Martínez Alarcón Roberto Abraham', 'Ingeniería Civil'),
(21, '200843874', 'Rosales Calderon Marvin Javier', 'Ingeniería Industrial'),
(22, '200919595', 'Davila España David Antonio', 'Ingeniería Industrial'),
(23, '200940351', 'Monroy Ortíz Delia María Octavila', 'Ingeniería Industrial'),
(24, '200940599', 'Gonzalez Sanchez Cesar Augusto', 'Ingeniería Industrial'),
(25, '200940874', 'Sandoval Sagastume Cristian Roberto', 'Ingeniería Civil'),
(26, '200941032', 'Ramirez Merida Zoel Edgardo', 'Ingeniería Civil'),
(27, '200941032', 'Ramirez Merida Zoel Edgardo', 'Ingeniería en Ciencias y Sistemas'),
(28, '200943011', 'Monzon Valdes Jeniffer Eunice', 'Ingeniería Industrial'),
(29, '200943605', 'Castellanos Lemus Nohé Jhovanny', 'Ingeniería en Ciencias y Sistemas'),
(30, '200944064', 'Soto Pérez David Estuardo', 'Ingeniería Civil'),
(31, '200944241', 'Avila González Kevin Rafael', 'Ingeniería Industrial'),
(32, '200946236', 'Orellana Bracamonte César Gustavo', 'Ingeniería Civil'),
(33, '200946236', 'Orellana Bracamonte César Gustavo', 'Ingeniería Industrial'),
(34, '200946239', 'Yaque Martínez Héctor Manuel', 'Ingeniería en Ciencias y Sistemas'),
(35, '200946242', 'Arriola Díaz Onelia Margoth', 'Ingeniería Civil'),
(36, '200946290', 'Recinos Landaverry Elvin Jose', 'Ingeniería en Ciencias y Sistemas'),
(37, '200946292', 'Gutiérrez Sosa Cristina María', 'Ingeniería Civil'),
(38, '200946355', 'Choguaj De Paz Kevin David', 'Ingeniería en Ciencias y Sistemas'),
(39, '200946363', 'Cerezo Quezada Francisco Javier', 'Ingeniería en Ciencias y Sistemas'),
(40, '200946369', 'Flores Estrada Alex Osvaldo', 'Ingeniería Civil'),
(41, '200946371', 'Rivera Pineda Carlos Vinicio', 'Ingeniería Civil'),
(42, '200946375', 'Orellana Recinos Luis Fernando', 'Ingeniería Civil'),
(43, '200946380', 'Santos Ventura Marlen Beatríz', 'Ingeniería Civil'),
(44, '200946381', 'Vargas Cerna Emily Elizabeth', 'Ingeniería Civil'),
(45, '200946387', 'Chacón Figueroa Esdras Nehemías', 'Ingeniería Civil'),
(46, '200946391', 'Rodríguez Rosas Delio Noé', 'Ingeniería Civil'),
(47, '200946395', 'Juarez Gomez Jose Miguel', 'Ingeniería Industrial'),
(48, '200946395', 'Juarez Gomez Jose Miguel', 'Ingeniería Civil'),
(49, '201043523', 'Paz Cardona Damaris Abigail', 'Ingeniería Civil'),
(50, '201043977', 'Guzman Martinez Oscar Omar', 'Ingeniería Industrial'),
(51, '201045563', 'Solis Salazar Jorge Mario', 'Ingeniería en Ciencias y Sistemas'),
(52, '201045726', 'Piriz Ramos Oscar Adolfo', 'Ingeniería Civil'),
(53, '201047981', 'Menendez Cantoral Oscar Pedro Carlos', 'Ingeniería Civil'),
(54, '201048000', 'Rivas Elías Hugo Diego Josué', 'Ingeniería en Ciencias y Sistemas'),
(55, '201048014', 'Calderón Hernández Jonatan Horacio', 'Ingeniería Civil'),
(56, '201048014', 'Calderón Hernández Jonatan Horacio', 'Ingeniería Industrial'),
(57, '201048016', 'Beber Ramirez Jose Carlos', 'Ingeniería Civil'),
(58, '201048038', 'Clara Lone Ivy Mae', 'Ingeniería Industrial'),
(59, '201048041', 'Villalta García Zully Marilyn', 'Ingeniería Civil'),
(60, '201048041', 'Villalta García Zully Marilyn', 'Ingeniería Industrial'),
(61, '201048043', 'Quiroa Perez Walter Carlos Adolfo', 'Ingeniería Civil'),
(62, '201048043', 'Quiroa Perez Walter Carlos Adolfo', 'Ingeniería Industrial'),
(63, '201048044', 'Catalán Cabrera Gabriela del Rosario', 'Ingeniería Civil'),
(64, '201048045', 'Velasquez Castillo Kevin Eduardo', 'Ingeniería Civil'),
(65, '201048046', 'Velásquez Samayoa Elink Rolando Junior', 'Ingeniería Civil'),
(66, '201048048', 'España Hernandez Dustin', 'Ingeniería Civil'),
(67, '201048049', 'Solis Aldana Pedro Pablo', 'Ingeniería Civil'),
(68, '201048049', 'Solis Aldana Pedro Pablo', 'Ingeniería Industrial'),
(69, '201048053', 'Castillo Juarez Jose Luis', 'Ingeniería Civil'),
(70, '201140121', 'Martínez Cuestas Heidy Jeaneth', 'Ingeniería en Ciencias y Sistemas'),
(71, '201141552', 'Rivera Bocanegra Gerber Josue', 'Ingeniería Civil'),
(72, '201143028', 'Diaz Espina Andrea Maria', 'Ingeniería Civil'),
(73, '201145457', 'Espino Sagastume Raul Eduardo', 'Ingeniería Civil'),
(74, '201145932', 'Vasquez Cabrera Mahomed', 'Ingeniería Civil'),
(75, '201145935', 'Mayen Juarez Boris Josue', 'Ingeniería en Ciencias y Sistemas'),
(76, '201145936', 'Sandoval Vicente Hugo Steven', 'Ingeniería Industrial'),
(77, '201145936', 'Sandoval Vicente Hugo Steven', 'Ingeniería Civil'),
(78, '201145938', 'Cordero Pesquera Edwin Alexis', 'Ingeniería Civil'),
(79, '201145942', 'Velíz Guerra Walter Osvaldo', 'Ingeniería Civil'),
(80, '201145942', 'Velíz Guerra Walter Osvaldo', 'Ingeniería Industrial'),
(81, '201145943', 'Gonzalez Cardona Kevin Hared', 'Ingeniería en Ciencias y Sistemas'),
(82, '201145945', 'Sosa Cerna Dulce Rocio', 'Ingeniería Industrial'),
(83, '201145950', 'Escobar Lopez Elmer Oswaldo', 'Ingeniería Civil'),
(84, '201145951', 'Contreras Paz René Francísco', 'Ingeniería Civil'),
(85, '201145952', 'Quiñonez Castillo Fredy Gilberto', 'Ingeniería Industrial'),
(86, '201145952', 'Quiñonez Castillo Fredy Gilberto', 'Ingeniería Civil'),
(87, '201145954', 'Ramos Cardona Julia Aracely', 'Ingeniería Civil'),
(88, '201145955', 'Lopez Galvez Mathos Isaac', 'Ingeniería Industrial'),
(89, '201145956', 'Morales Castro Josselyn Maria', 'Ingeniería Civil'),
(90, '201145958', 'Argueta Mejía César Alfredo', 'Ingeniería en Ciencias y Sistemas'),
(91, '201145958', 'Argueta Mejía César Alfredo', 'Ingeniería Civil'),
(92, '201145959', 'Gil Tobar Kevin Salvador', 'Ingeniería Industrial'),
(93, '201145962', 'Paiz Raymundo Carlos Orlando', 'Ingeniería en Ciencias y Sistemas'),
(94, '201145963', 'Chicas Paredes Roins Jose Gember', 'Ingeniería Industrial'),
(95, '201145967', 'Cordero Esquivel Saul Enrique', 'Ingeniería Industrial'),
(96, '201145970', 'Sanchez Juarez Reny Elton', 'Ingeniería Civil'),
(97, '201145970', 'Sanchez Juarez Reny Elton', 'Ingeniería Industrial'),
(98, '201145971', 'Chigua Villafuerte Jasson Humberto', 'Ingeniería Civil'),
(99, '201146015', 'Lantan Martinez Marvin Omri', 'Ingeniería Civil'),
(100, '201146015', 'Lantan Martinez Marvin Omri', 'Ingeniería en Ciencias y Sistemas'),
(101, '201146024', 'Castañeda Cordon Jorge Antonio', 'Ingeniería en Ciencias y Sistemas'),
(102, '201146028', 'Sett Lira Hugo Alejandro', 'Ingeniería Civil'),
(103, '201146031', 'Rodas Linares Keneth Obed', 'Ingeniería Civil'),
(104, '201146033', 'Rodriguez Samayoa Jessi Alexander', 'Ingeniería Industrial'),
(105, '201146044', 'Estrada Pinto Brian Estuardo', 'Ingeniería Industrial'),
(106, '201146085', 'Castellanos Lemus Celeste Nohemí', 'Ingeniería Industrial'),
(107, '201146088', 'Martinez Ortega Erick Abilio', 'Ingeniería Civil'),
(108, '201146128', 'Garcia Interiano Marlon Ivan', 'Ingeniería Industrial'),
(109, '201146142', 'Arana Muñoz Kilmer Gonzalo', 'Ingeniería Civil'),
(110, '201146144', 'Segura Martinez Cristian Fernando', 'Ingeniería en Ciencias y Sistemas'),
(111, '201146145', 'López Chávez Sherill Nicte', 'Ingeniería Industrial'),
(112, '201146145', 'López Chávez Sherill Nicte', 'Ingeniería Civil'),
(113, '201146149', 'Vasquez Javier Gustavo Adolfo', 'Ingeniería Civil'),
(114, '201146172', 'Ramírez Aguilar Kelvin Alexander', 'Ingeniería Industrial'),
(115, '201146185', 'Martinez  Brallan Estiverson', 'Ingeniería en Ciencias y Sistemas'),
(116, '201146214', 'Reyes Picén Allan Gustavo', 'Ingeniería Civil'),
(117, '201146222', 'Hernández Cordón Rosa Marina', 'Ingeniería Civil'),
(118, '201146224', 'Velásquez Montes Pedro José', 'Ingeniería Civil'),
(119, '201146230', 'Ortega Morales Jorge Alberto', 'Ingeniería Civil'),
(120, '201146235', 'Moscoso Moscoso Manuel Estuardo', 'Ingeniería Civil'),
(121, '201146251', 'Estrada Marcos Jorge Alberto', 'Ingeniería Industrial'),
(122, '201146266', 'Urrutia  Josue Daniel', 'Ingeniería Civil'),
(123, '201146268', 'Dubón De Paz Gelion Aroldo', 'Ingeniería Industrial'),
(124, '201146275', 'Perez Salguero Adriana Maria', 'Ingeniería Industrial'),
(125, '201146284', 'Mayorga Cerón Brian Juan Fernando', 'Ingeniería Civil'),
(126, '201146288', 'Rodríguez  Paola Sthefany', 'Ingeniería Civil'),
(127, '201146290', 'Cordón Vásquez Francisco Rafael Alberto', 'Ingeniería Civil'),
(128, '201146415', 'Avila Veliz Julio Enrique', 'Ingeniería Civil'),
(129, '201240150', 'Cervantes Villeda Bryan Augusto', 'Ingeniería Industrial'),
(130, '201240894', 'Rojas Ovando Edgar Ruben', 'Ingeniería en Ciencias y Sistemas'),
(131, '201242168', 'Leiva Archila Oliver Amado', 'Ingeniería Civil'),
(132, '201244484', 'Archila Orellana David Estuardo', 'Ingeniería Civil'),
(133, '201244487', 'Martinez Erazo Milton Arnoldo', 'Ingeniería Civil'),
(134, '201244676', 'Perez Guzman Liliam Paola', 'Ingeniería Civil'),
(135, '201244676', 'Perez Guzman Liliam Paola', 'Ingeniería Industrial'),
(136, '201244680', 'Salguero Martinez Oscar Humberto', 'Ingeniería Civil'),
(137, '201244705', 'Arevalo Figueroa Luis Fernando', 'Ingeniería Civil'),
(138, '201244705', 'Arevalo Figueroa Luis Fernando', 'Ingeniería en Ciencias y Sistemas'),
(139, '201244711', 'Cardona Lopez Maria Fernanda', 'Ingeniería Civil'),
(140, '201244711', 'Cardona Lopez Maria Fernanda', 'Ingeniería Industrial'),
(141, '201244712', 'Jordan Lemus Juan Jose', 'Ingeniería Civil'),
(142, '201244716', 'Casasola Miranda Cesar Emilio', 'Ingeniería en Ciencias y Sistemas'),
(143, '201244825', 'Amador Perez Yesenia Maria', 'Ingeniería en Ciencias y Sistemas'),
(144, '201244827', 'Ardon Valdes Edgar Vinicio', 'Ingeniería Civil'),
(145, '201244918', 'Soto Ceron Pablo Andrei', 'Ingeniería Industrial'),
(146, '201244918', 'Soto Ceron Pablo Andrei', 'Ingeniería Civil'),
(147, '201244942', 'Guerra Valdes Allan Fabricio', 'Ingeniería Civil'),
(148, '201244998', 'Sintuj Gonzalez Carlos Omar', 'Ingeniería en Ciencias y Sistemas'),
(149, '201245006', 'Caal Max Carlos Sebastian', 'Ingeniería Civil'),
(150, '201245015', 'Gonzales Lopez Sergio Daniel', 'Ingeniería en Ciencias y Sistemas'),
(151, '201245019', 'Orellana Ramirez Maria Alejandra', 'Ingeniería en Ciencias y Sistemas'),
(152, '201245021', 'Gregorio Miguel Astrid Lisbeth', 'Ingeniería Industrial'),
(153, '201245022', 'Ramírez Paredes Marvin Josué Francisco', 'Ingeniería Industrial'),
(154, '201245022', 'Ramírez Paredes Marvin Josué Francisco', 'Ingeniería Civil'),
(155, '201245027', 'Menendez Cantoral Oscar Luis Enrique', 'Ingeniería Civil'),
(156, '201245029', 'Villafuerte Sosa Randy Francisco', 'Ingeniería Civil'),
(157, '201245032', 'Rosales Cordon Luis Jose', 'Ingeniería Civil'),
(158, '201245080', 'Rossal Aragon Luisa Karina', 'Ingeniería Civil'),
(159, '201245080', 'Rossal Aragon Luisa Karina', 'Ingeniería Industrial'),
(160, '201245098', 'Colindres Vidal Brenda Maria', 'Ingeniería Civil'),
(161, '201245098', 'Colindres Vidal Brenda Maria', 'Ingeniería Industrial'),
(162, '201245105', 'Aldana Flores Oswaldo Jose', 'Ingeniería Civil'),
(163, '201245309', 'Gonzalez Donado Kevin Roberto', 'Ingeniería Civil'),
(164, '201245475', 'Eguizabal Orellana Pablo Cesar', 'Ingeniería Civil'),
(165, '201245495', 'Perez Aquino Julio Jose', 'Ingeniería Industrial'),
(166, '201245539', 'Perez Mejia Heify Edelman', 'Ingeniería Civil'),
(167, '201245770', 'De Jesus Mejia Yeltsin Obed', 'Ingeniería Civil'),
(168, '201245770', 'De Jesus Mejia Yeltsin Obed', 'Ingeniería Industrial'),
(169, '201245940', 'Ordoñez Galeano Martin Rodolfo Hipolito', 'Ingeniería Industrial'),
(170, '201245970', 'Avila Gonzalez Cristian Alexander', 'Ingeniería Industrial'),
(171, '201245970', 'Avila Gonzalez Cristian Alexander', 'Ingeniería en Ciencias y Sistemas'),
(172, '201322196', 'Monroy Espinoza Kenia Yamilet', 'Ingeniería Civil'),
(173, '201345853', 'Gálvez Romero Eduardó Adolfo', 'Ingeniería Civil'),
(174, '201345853', 'Gálvez Romero Eduardó Adolfo', 'Ingeniería Industrial'),
(175, '201345870', 'Landaverry Ponce Cynthia Rossibel', 'Ingeniería Industrial'),
(176, '201345870', 'Landaverry Ponce Cynthia Rossibel', 'Ingeniería Civil'),
(177, '201345995', 'Martínez Romero Esdras José Rolando', 'Ingeniería Civil'),
(178, '201346063', 'Chinchilla Orellana David Estuardo', 'Ingeniería Industrial'),
(179, '201346065', 'Palacios Santos Luís Alberto', 'Ingeniería Civil'),
(180, '201346065', 'Palacios Santos Luís Alberto', 'Ingeniería Industrial'),
(181, '201346067', 'Levi Portillo Daniel Yaakov', 'Ingeniería Civil'),
(182, '201346068', 'Martínez Guardado Carlos Enrique', 'Ingeniería Industrial'),
(183, '201346069', 'Colindres Sánchez Lesly Melíssa', 'Ingeniería Civil'),
(184, '201346069', 'Colindres Sánchez Lesly Melíssa', 'Ingeniería Industrial'),
(185, '201346071', 'Alvarez Guerra Ronald Gabriel', 'Ingeniería Civil'),
(186, '201346072', 'López García José Arnoldo', 'Ingeniería Civil'),
(187, '201346072', 'López García José Arnoldo', 'Ingeniería Industrial'),
(188, '201346073', 'Rodriguez Lemus Jeancarlo Giovanni', 'Ingeniería Civil'),
(189, '201346074', 'Nájera Palomo Hansy Otmán', 'Ingeniería Civil'),
(190, '201346075', 'Castillo Hernández María Andree', 'Ingeniería Industrial'),
(191, '201346075', 'Castillo Hernández María Andree', 'Ingeniería Civil'),
(192, '201346077', 'Pineda Roca Emmy Fernanda', 'Ingeniería Civil'),
(193, '201346077', 'Pineda Roca Emmy Fernanda', 'Ingeniería Industrial'),
(194, '201346078', 'Flores Leytán Dinora José', 'Ingeniería Civil'),
(195, '201346079', 'Gutiérrez López María José', 'Ingeniería en Ciencias y Sistemas'),
(196, '201346080', 'Arriola Diaz María Fernanda', 'Ingeniería Civil'),
(197, '201346081', 'Cordero Castañeda Kevin Fernando', 'Ingeniería Civil'),
(198, '201346082', 'Soto Solis Daniel Alberto', 'Ingeniería Civil'),
(199, '201346084', 'Alarcón Chigua José Alberto', 'Ingeniería en Ciencias y Sistemas'),
(200, '201346085', 'Chacón Guerra Sergio Daniel', 'Ingeniería Industrial'),
(201, '201346085', 'Chacón Guerra Sergio Daniel', 'Ingeniería Civil'),
(202, '201346087', 'Ramírez Mejía Ninfa Odeth', 'Ingeniería Civil'),
(203, '201346088', 'Rivas Elías Alejandro José', 'Ingeniería Civil'),
(204, '201346089', 'Velásquez Samayoa Josué Andre', 'Ingeniería Industrial'),
(205, '201346090', 'Recinos Vásquez Alejandra Elizabeth', 'Ingeniería Civil'),
(206, '201346091', 'Monroy Pesquera Margarita De María', 'Ingeniería Civil'),
(207, '201346093', 'Milián Mendez Josué Eduardo', 'Ingeniería en Ciencias y Sistemas'),
(208, '201346097', 'Palma Cardona Mauro Renato', 'Ingeniería Civil'),
(209, '201346098', 'Marcos Lázaro Luis Armando', 'Ingeniería en Ciencias y Sistemas'),
(210, '201346100', 'Cienfuegos Miranda Rudy Moisés Eduardo', 'Ingeniería Civil'),
(211, '201346101', 'Jarquín Chacón Maylin Yadira', 'Ingeniería Civil'),
(212, '201346103', 'Menendez Cantoral Lissy Ana María', 'Ingeniería Civil'),
(213, '201346105', 'Rosales Salguero Ana Isabel', 'Ingeniería Industrial'),
(214, '201346107', 'Avila Flores Dallin Sergio Josue', 'Ingeniería Civil'),
(215, '201346109', 'Catalán Vela Andy Gustavo', 'Ingeniería Industrial'),
(216, '201346110', 'Paiz Raymundo Kevin Alexander', 'Ingeniería Civil'),
(217, '201346112', 'Bollat Flores Rony José', 'Ingeniería Civil'),
(218, '201346113', 'Moscoso Arévalo Deily Magalí', 'Ingeniería Civil'),
(219, '201346115', 'Calderón Morales Elvis Iván', 'Ingeniería Industrial'),
(220, '201346117', 'Duarte Medina Ulysses Alberto', 'Ingeniería Civil'),
(221, '201346118', 'Diaz Morales Marcial Antonio', 'Ingeniería Civil'),
(222, '201346119', 'Posadas Pop Kandy Rocío', 'Ingeniería Industrial'),
(223, '201346120', 'López Bol Juan Fernando', 'Ingeniería en Ciencias y Sistemas'),
(224, '201346121', 'Villatoro Arévalo Celesthe Enmita De María', 'Ingeniería Industrial'),
(225, '201346122', 'Batista Catalán Gaddia Lucía', 'Ingeniería Industrial'),
(226, '201346123', 'García Interiano Jorge Luis', 'Ingeniería Civil'),
(227, '201346127', 'Morataya Pascual Joyce Gerson Porfirio', 'Ingeniería Industrial'),
(228, '201346130', 'Temaj Gonzalez Kleber Stefan', 'Ingeniería Civil'),
(229, '201346132', 'Castillo Ventura Yerimil Wilber', 'Ingeniería Civil'),
(230, '201346140', 'Agustín García Ari Ben', 'Ingeniería Civil'),
(231, '201346161', 'Lemus Garza Geselle María', 'Ingeniería Industrial'),
(232, '201346259', 'Portillo Albanez Edgar Adolfo', 'Ingeniería Civil'),
(233, '201346264', 'Reyes Morales César Orlando', 'Ingeniería en Ciencias y Sistemas'),
(234, '201346274', 'Franco Monroy Diego Alfredo', 'Ingeniería en Ciencias y Sistemas'),
(235, '201346274', 'Franco Monroy Diego Alfredo', 'Ingeniería Civil'),
(236, '201346485', 'Perez Herrera Tebby', 'Ingeniería Civil'),
(237, '201346697', 'Cordón Salazar José Conrado', 'Ingeniería Civil'),
(238, '201404085', 'Juárez Hernández Kevin Oswaldo', 'Ingeniería Civil'),
(239, '201442256', 'Cordero Esquivel Dina Elizabeth', 'Ingeniería Industrial'),
(240, '201442779', 'Agustín Morales Alexis Emilio', 'Ingeniería Civil'),
(241, '201442782', 'Dubón Obando Luis Felipe', 'Ingeniería en Ciencias y Sistemas'),
(242, '201442790', 'Sintuj González EMERSON ALBERTO', 'Ingeniería Civil'),
(243, '201442791', 'Méndez Martínez Edgar Leonel', 'Ingeniería Industrial'),
(244, '201442792', 'Vásquez Hernández Mauricio José', 'Ingeniería Industrial'),
(245, '201442794', 'Juárez España Julio Estuardo', 'Ingeniería Industrial'),
(246, '201442795', 'López Prado Gerson Daniel', 'Ingeniería en Ciencias y Sistemas'),
(247, '201442796', 'Monroy Marroquin Henry Carlos Eduardo', 'Ingeniería Civil'),
(248, '201442798', 'Díaz Aguilar Mario Roberto', 'Ingeniería Industrial'),
(249, '201442799', 'Cerón Elías Herber Manolo', 'Ingeniería en Ciencias y Sistemas'),
(250, '201442802', 'GarcÍa Roque Marisabel del Rosario', 'Ingeniería Civil'),
(251, '201442804', 'Montejo Galdámez Eddy Bryan', 'Ingeniería en Ciencias y Sistemas'),
(252, '201442805', 'Calderón Aguirre Katherine Andrée', 'Ingeniería Civil'),
(253, '201442808', 'Ramírez Castro Dairy Sayuri', 'Ingeniería Civil'),
(254, '201442810', 'Morales Calderón Marlon Antonio', 'Ingeniería Civil'),
(255, '201442810', 'Morales Calderón Marlon Antonio', 'Ingeniería Industrial'),
(256, '201442815', 'Calderón Linares Marvin Edgardo', 'Ingeniería Civil'),
(257, '201442833', 'Ramírez Roldán Alvaro Luis', 'Ingeniería Industrial'),
(258, '201442833', 'Ramírez Roldán Alvaro Luis', 'Ingeniería Civil'),
(259, '201442836', 'Duarte Hernández Manuel Alejandro', 'Ingeniería Civil'),
(260, '201442841', 'Rojas Bollat Jonathan Kevin Adalberto', 'Ingeniería en Ciencias y Sistemas'),
(261, '201442851', 'Dubón Melgar Johana María', 'Ingeniería Industrial'),
(262, '201442856', 'Morales Sagastume José Gildardo', 'Ingeniería Civil'),
(263, '201442857', 'Canahui Morales Huberth Alejandro', 'Ingeniería en Ciencias y Sistemas'),
(264, '201442864', 'Ramos Flores Miguel Angel', 'Ingeniería Civil'),
(265, '201442869', 'Rosales Calderón Oscar Rubén', 'Ingeniería Civil'),
(266, '201442903', 'Marroquin Rodas Alan Rafael', 'Ingeniería Civil'),
(267, '201442924', 'Oliva Chew Melany Gabriela', 'Ingeniería Industrial'),
(268, '201442929', 'Leonor Sosa Karin Leonela', 'Ingeniería Industrial'),
(269, '201442933', 'Sarceño Martínez Williams Manrique', 'Ingeniería Civil'),
(270, '201442941', 'Sancé Ramírez Katherin Jeanneth', 'Ingeniería en Ciencias y Sistemas'),
(271, '201442951', 'Palacios Flores Bryan Enoc', 'Ingeniería en Ciencias y Sistemas'),
(272, '201442960', 'Miranda España Katheryn Anahí', 'Ingeniería Industrial'),
(273, '201442961', 'Alarcón Ramírez Iván Alfonso', 'Ingeniería en Ciencias y Sistemas'),
(274, '201442969', 'Samayoa Solórzano Daisy Floridalma', 'Ingeniería Civil'),
(275, '201442971', 'López López Idida Yamileth', 'Ingeniería Industrial'),
(276, '201442976', 'Cienfuegos López Walter Noel', 'Ingeniería Industrial'),
(277, '201442978', 'Paiz Salguero Jessica Marian', 'Ingeniería Industrial'),
(278, '201442980', 'Ramírez Paredes Brian Dagoberto', 'Ingeniería Industrial'),
(279, '201442980', 'Ramírez Paredes Brian Dagoberto', 'Ingeniería en Ciencias y Sistemas'),
(280, '201442997', 'Jordán Guerra Erick Romeo', 'Ingeniería Civil'),
(281, '201443116', 'Duarte Recinos Marco Ivan', 'Ingeniería Civil'),
(282, '201443155', 'Ortega Balcarcel Josue Ramiro', 'Ingeniería Industrial'),
(283, '201443370', 'Lemus Méndez Carlos Fernando', 'Ingeniería Civil'),
(284, '201443373', 'Cuéllar Ronquillo José Pablo', 'Ingeniería Civil'),
(285, '201443375', 'Casasola Guerra Emily María Teresa', 'Ingeniería Civil'),
(286, '201443419', 'Juárez Castillo Iván Estuardo', 'Ingeniería Industrial'),
(287, '201443532', 'Arriaza Martinez Christian Estuardo', 'Ingeniería Civil'),
(288, '201443558', 'Pérez García Estuardo Ismael', 'Ingeniería Civil'),
(289, '201443562', 'Equite Aquino Lidea Esperanza Anely', 'Ingeniería Industrial'),
(290, '201443567', 'Gómez Reyes Gerardo Jhosue', 'Ingeniería en Ciencias y Sistemas'),
(291, '201443605', 'España Garza Letty María', 'Ingeniería Civil'),
(292, '201443731', 'Solorzano Aguirre Denis D´alessandro', 'Ingeniería Industrial'),
(293, '201443958', 'Rodriguez Cordero Juan Carlos', 'Ingeniería Civil'),
(294, '201444548', 'Pineda Rodríguez Kevin José Elias', 'Ingeniería Civil'),
(295, '201445340', 'Bollat Espinoza Nery Efraín', 'Ingeniería en Ciencias y Sistemas'),
(296, '201445488', 'Linares Méndez Leopoldo Andree', 'Ingeniería Civil'),
(297, '201445658', 'Beber Ramírez Diana Elizabeth', 'Ingeniería Industrial'),
(298, '201445773', 'Godoy Sintuj Allan Renato', 'Ingeniería Industrial'),
(299, '201445958', 'Escobar Súchite Saúl Eduardo', 'Ingeniería Industrial'),
(300, '201446295', 'Oliveros Flores Haydn José', 'Ingeniería Industrial'),
(301, '201446481', 'Linares Miranda Manuel Anibal', 'Ingeniería Civil'),
(302, '201541790', 'Mateo Galicia Oscar Adalberto', 'Ingeniería Industrial'),
(303, '201543045', 'Alarcón Palencia Iris Carolina', 'Ingeniería en Ciencias y Sistemas'),
(304, '201543974', 'Zúñiga Morales Byron Josué', 'Ingeniería Civil'),
(305, '201543983', 'Amador Pérez Ulises Damián', 'Ingeniería en Ciencias y Sistemas'),
(306, '201544017', 'Orellana Oropin Edgar Alexis', 'Ingeniería en Ciencias y Sistemas'),
(307, '201544095', 'Aguirre García Josué Donaldo', 'Ingeniería Industrial'),
(308, '201544096', 'González Véliz José Carlos', 'Ingeniería en Ciencias y Sistemas'),
(309, '201544097', 'Guerra Sosa José Eduardo', 'Ingeniería en Ciencias y Sistemas'),
(310, '201544098', 'Barahona Ramírez Sulema Arleth', 'Ingeniería Industrial'),
(311, '201544101', 'Ramírez Monroy Stephanie Alejandra', 'Ingeniería Industrial'),
(312, '201544102', 'Díaz Flores Karla Fabiola', 'Ingeniería Industrial'),
(313, '201544103', 'Díaz Sintuj Ilder Francisco', 'Ingeniería Civil'),
(314, '201544105', 'Pérez Ramos Jeyson Sleyter', 'Ingeniería Civil'),
(315, '201544106', 'Sosa Cerna Lucia Mariel', 'Ingeniería Industrial'),
(316, '201544109', 'Calderón Marcos Carlos Estuardo', 'Ingeniería Industrial'),
(317, '201544111', 'Velásquez Medina Victor Estuardo', 'Ingeniería en Ciencias y Sistemas'),
(318, '201544112', 'Velásquez Samayoa Ana Gabriela', 'Ingeniería Industrial'),
(319, '201544131', 'Esquivel Villela Lester Anibal', 'Ingeniería en Ciencias y Sistemas'),
(320, '201544134', 'Torres Jarquín Diego Andrés', 'Ingeniería Civil'),
(321, '201544135', 'Montufar Pinto Juan Carlos', 'Ingeniería en Ciencias y Sistemas'),
(322, '201544136', 'Castañeda López Byron José', 'Ingeniería Civil'),
(323, '201544137', 'Sandoval Monroy Marco Vinicio', 'Ingeniería en Ciencias y Sistemas'),
(324, '201544138', 'Lau Ardón Denis Roberto', 'Ingeniería en Ciencias y Sistemas'),
(325, '201544208', 'Monroy Alonzo Henry Alberto', 'Ingeniería Civil'),
(326, '201544286', 'Choscó Guerra Katie Esperanza', 'Ingeniería Civil'),
(327, '201544287', 'Aguilar Martínez Rocio Elizabeth', 'Ingeniería Industrial'),
(328, '201544288', 'Hernández Morales Emille Alexandra', 'Ingeniería Industrial'),
(329, '201544289', 'Espinoza Ciramagua Jaqueline Suset', 'Ingeniería Industrial'),
(330, '201544291', 'Díaz Chacón Josué Rafael', 'Ingeniería Industrial'),
(331, '201544295', 'Ruano Ruano Ancer José', 'Ingeniería en Ciencias y Sistemas'),
(332, '201544299', 'Sosa Linares Raúl Giovanni Rigoberto', 'Ingeniería Industrial'),
(333, '201544300', 'Villeda Vidal Eduardo José', 'Ingeniería en Ciencias y Sistemas'),
(334, '201544301', 'Ramírez Acevedo Rita Mariana', 'Ingeniería Civil'),
(335, '201544303', 'Arriola Guerra Javier Antonio', 'Ingeniería Industrial'),
(336, '201544305', 'Lemus Menéndez Roberto Trinidad', 'Ingeniería Industrial'),
(337, '201544312', 'Díaz Esteban Diego Manuel', 'Ingeniería en Ciencias y Sistemas'),
(338, '201544314', 'Osoy Cabrera Luis Pedro', 'Ingeniería Civil'),
(339, '201544315', 'López Monroy Marion Stephania', 'Ingeniería Industrial'),
(340, '201544317', 'Rosa Peña María Alejandra', 'Ingeniería Civil'),
(341, '201544318', 'Aguirre Guancín Diego Josué', 'Ingeniería en Ciencias y Sistemas'),
(342, '201544323', 'Dubón Melgar Edvin Josué', 'Ingeniería en Ciencias y Sistemas'),
(343, '201544326', 'Alarcón Posadas Wilson Josué', 'Ingeniería Civil'),
(344, '201544328', 'Ramírez Mayorga Emerson Oswaldo', 'Ingeniería en Ciencias y Sistemas'),
(345, '201544329', 'Palma Cardona Tania Arlette Andreí', 'Ingeniería Civil'),
(346, '201544392', 'Pérez de Paz Vilcar Alexis', 'Ingeniería en Ciencias y Sistemas'),
(347, '201544397', 'Menéndez Pérez Cristian Daniel', 'Ingeniería Civil'),
(348, '201544399', 'Sánchez Larios Néstor Antonio', 'Ingeniería Civil'),
(349, '201544402', 'Colindres Vidal Edgar Augusto', 'Ingeniería Industrial'),
(350, '201544424', 'Castro Barrientos Bryan Alexander', 'Ingeniería en Ciencias y Sistemas'),
(351, '201544427', 'Guitiérrez Vásquez José Antonio', 'Ingeniería Industrial'),
(352, '201544431', 'Lemus Figueroa Héctor Alfredo', 'Ingeniería Industrial'),
(353, '201544477', 'López Orozco Luis Enrique', 'Ingeniería Civil'),
(354, '201544486', 'Monroy Gutiérrez Amparito Karolina', 'Ingeniería Civil'),
(355, '201544587', 'Morales Cordón Carlos Enrique', 'Ingeniería en Ciencias y Sistemas'),
(356, '201544815', 'Boguerin Guerra José Daniel', 'Ingeniería en Ciencias y Sistemas'),
(357, '201544820', 'Flores Cruz Carlos Rafael', 'Ingeniería Civil'),
(358, '201544821', 'Cardona Sagastume Joseángel Estuardo', 'Ingeniería Industrial'),
(359, '201544823', 'Teo Ochaeta Aylin Lourdes', 'Ingeniería Industrial'),
(360, '201544825', 'Chajchagüin Miranda Kathlyn Arlette', 'Ingeniería Industrial'),
(361, '201544827', 'Gómez Cortez Ludvin Ronal', 'Ingeniería Civil'),
(362, '201544829', 'Muñoz Palma Esteban Rover André', 'Ingeniería en Ciencias y Sistemas'),
(363, '201544831', 'Velasquez García Crístel Rocío', 'Ingeniería Industrial'),
(364, '201544886', 'Castro Peláez Vicente Erick Fidel', 'Ingeniería en Ciencias y Sistemas'),
(365, '201544897', 'Garza Morazán Luis Fernando', 'Ingeniería Industrial'),
(366, '201545238', 'Aguilar Díaz Diego Andres', 'Ingeniería en Ciencias y Sistemas'),
(367, '201545689', 'López Rosales Brayan André', 'Ingeniería Civil'),
(368, '201546797', 'Martínez Esteban Ludwin Noé', 'Ingeniería Civil'),
(369, '201547584', 'Vásquez Barrera Omar Esteban', 'Ingeniería Industrial'),
(370, '201548106', 'Mazariegos Retana Marcos Esteban', 'Ingeniería Civil'),
(371, '201548657', 'Díaz Díaz José Rafael', 'Ingeniería Civil'),
(372, '201643817', 'Salguero Solares Patrick Alexander', 'Ingeniería en Ciencias y Sistemas'),
(373, '201644097', 'Castillo Ibarra José Adalberto', 'Ingeniería Industrial'),
(374, '201644099', 'Gutiérrez Agustin Jorge Estuardo', 'Ingeniería en Ciencias y Sistemas'),
(375, '201644115', 'González Alonzo Julio Fernando', 'Ingeniería en Ciencias y Sistemas'),
(376, '201644131', 'Morales Jimenez Jorge Raul', 'Ingeniería Civil'),
(377, '201644138', 'Súchite Hernández Josué Humberto', 'Ingeniería Industrial'),
(378, '201644140', 'Cordón Alfaro Brian Josue', 'Ingeniería en Ciencias y Sistemas'),
(379, '201644146', 'Argueta Salazar Jordan Isaí', 'Ingeniería Civil'),
(380, '201644147', 'Palma Barrera Auner Fernando', 'Ingeniería Civil'),
(381, '201644148', 'Carías Sarmiento Nathalie Melissa', 'Ingeniería Civil'),
(382, '201644156', 'Regalado Estrada Gloria Isabel', 'Ingeniería Industrial'),
(383, '201644157', 'Pineda Roca María José', 'Ingeniería Civil'),
(384, '201644239', 'Jordán Orellana Carlos Alfredo', 'Ingeniería Industrial'),
(385, '201644240', 'Morán Fajardo Daniel Maynor Antonio', 'Ingeniería Industrial'),
(386, '201644243', 'Román Civil José Joaquín', 'Ingeniería Civil'),
(387, '201644244', 'Morales Espino Kathleen Estefany Mishel', 'Ingeniería Industrial'),
(388, '201644245', 'Arenas Bracamonte Pablo Sebastián', 'Ingeniería Industrial'),
(389, '201644247', 'Pérez Flores Cristofer Mauricio', 'Ingeniería en Ciencias y Sistemas'),
(390, '201644252', 'Díaz Aguirre Sebastián José', 'Ingeniería Industrial'),
(391, '201644257', 'Chacón Guerra Luis Armando', 'Ingeniería Civil'),
(392, '201644258', 'Fuentes Fuentes Arilson Noé', 'Ingeniería Civil'),
(393, '201644259', 'Aguirre Lira Kevin Andreé', 'Ingeniería Industrial'),
(394, '201644261', 'Morales Miranda María Alejandra', 'Ingeniería en Ciencias y Sistemas'),
(395, '201644264', 'Miranda España Luis José', 'Ingeniería Industrial'),
(396, '201644297', 'Calderón Flores Diego Alejandro', 'Ingeniería Civil'),
(397, '201644321', 'Arriaga Sagastume Romeo Alejandro', 'Ingeniería Civil'),
(398, '201644324', 'Noguera Illescas Heily Celeste', 'Ingeniería Civil'),
(399, '201644352', 'Arévalo Figueroa Andrea María', 'Ingeniería Civil'),
(400, '201644353', 'Rivera del Cid Diva Alexandra', 'Ingeniería Industrial'),
(401, '201644354', 'Urrutia Figueroa José Adolfo', 'Ingeniería Civil'),
(402, '201644357', 'Martínez Pérez José Gabriel', 'Ingeniería Industrial'),
(403, '201644360', 'Oliva Morales Maureen Karol Giselle', 'Ingeniería en Ciencias y Sistemas'),
(404, '201644361', 'López Pinto Jeffrey Stiven', 'Ingeniería Industrial'),
(405, '201644363', 'Ochaeta Estrada Melvin Estuardo', 'Ingeniería Civil'),
(406, '201644489', 'Osoy Cabrera Carlos Alberto', 'Ingeniería Civil'),
(407, '201644533', 'González Pérez Gerson Elionel', 'Ingeniería Civil'),
(408, '201644535', 'Raymundo Monroy Juan José', 'Ingeniería en Ciencias y Sistemas'),
(409, '201644539', 'Castañeda Marroquín Lester Alberto', 'Ingeniería Industrial'),
(410, '201644616', 'Pérez Menéndez Eber José', 'Ingeniería Civil'),
(411, '201644704', 'Chamalé Lira Pedro Ángel', 'Ingeniería Industrial'),
(412, '201644705', 'Valdés Calderón Luis Fredy', 'Ingeniería Civil'),
(413, '201644723', 'Agustín Ruíz Eliezer Gildardo', 'Ingeniería Industrial'),
(414, '201644724', 'García Pérez Silvia Marina', 'Ingeniería en Ciencias y Sistemas'),
(415, '201644764', 'Morales Méndez Victor Joab', 'Ingeniería en Ciencias y Sistemas'),
(416, '201644766', 'Martínez Archila Marvin Alberto', 'Ingeniería en Ciencias y Sistemas'),
(417, '201644810', 'Dávila Barrios Christopher Mynor Daniel', 'Ingeniería en Ciencias y Sistemas'),
(418, '201644943', 'Duarte Ortega Andres Santiago', 'Ingeniería Industrial'),
(419, '201644947', 'Garza Guerra Brayan Alexander', 'Ingeniería Civil'),
(420, '201645018', 'López Lima Irma Leticia', 'Ingeniería Civil'),
(421, '201645497', 'Zamora Orellana Vilma Hortensia Rosa', 'Ingeniería Industrial'),
(422, '201645503', 'Linares Miranda Carlos Mauricio', 'Ingeniería Industrial'),
(423, '201645569', 'Morán Sagastume José Pablo', 'Ingeniería Industrial'),
(424, '201645577', 'Trabanino Martínez Hugo Melvin', 'Ingeniería Civil'),
(425, '201645791', 'Landaverry Ponce Kimberly Madelin', 'Ingeniería Industrial'),
(426, '201645068', 'Torres Alvarez Dany Valerio', 'Ingeniería Civil'),
(427, '201645083', 'Paiz Chávez Daniel Antonio', 'Ingeniería Civil'),
(428, '201645113', 'Mejía Bojorquez Flor de María', 'Ingeniería Civil');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `partaker`
--
ALTER TABLE `partaker`
  ADD PRIMARY KEY (`id_partaker`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id_student`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partaker`
--
ALTER TABLE `partaker`
  MODIFY `id_partaker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- Metadatos
--
USE `phpmyadmin`;

--
-- Metadatos para partaker
--

--
-- Metadatos para students
--

--
-- Metadatos para flisol
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
