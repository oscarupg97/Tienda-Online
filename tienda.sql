-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2019 a las 22:52:58
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id` int(11) NOT NULL,
  `idVENTA` int(11) NOT NULL,
  `idPRODUCTO` int(11) NOT NULL,
  `PrecioUnitario` decimal(20,2) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descarga` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id`, `idVENTA`, `idPRODUCTO`, `PrecioUnitario`, `Cantidad`, `Descarga`) VALUES
(1, 1, 3, '500.00', 1, 0),
(2, 7, 1, '500.00', 1, 0),
(3, 7, 2, '600.00', 1, 0),
(4, 7, 3, '450.00', 1, 0),
(5, 8, 1, '500.00', 1, 0),
(6, 8, 2, '600.00', 1, 0),
(7, 8, 3, '450.00', 1, 0),
(8, 9, 1, '500.00', 1, 0),
(9, 9, 2, '600.00', 1, 0),
(10, 9, 3, '450.00', 1, 0),
(11, 10, 1, '500.00', 1, 0),
(12, 10, 2, '600.00', 1, 0),
(13, 10, 3, '450.00', 1, 0),
(14, 11, 1, '500.00', 1, 0),
(15, 11, 2, '600.00', 1, 0),
(16, 11, 3, '450.00', 1, 0),
(17, 12, 1, '500.00', 1, 0),
(18, 12, 2, '600.00', 1, 0),
(19, 12, 3, '450.00', 1, 0),
(20, 13, 3, '450.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(20,0) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `name`, `price`, `description`, `image`) VALUES
(1, 'La chica del tren', '500', 'Rachel toma siempre el tren de las 8.04 h. Cada mañana lo mismo: el mismo paisaje, las mismas casas… y la misma parada en la señal roja. Son solo unos segundos, pero le permiten observar a una pareja desayunando tranquilamente en su terraza. Siente que los conoce y se inventa unos nombres para ellos: Jess y Jason. Su vida es perfecta, no como la suya. Pero un día ve algo. Sucede muy deprisa, pero es suficiente. ¿Y si Jess y Jason no son tan felices como ella cree? ¿Y si nada es lo que parece?', 'https://static2planetadelibroscom.cdnstatics.com/usuaris/libros/fotos/250/original/portada_la-chica-del-tren_paula-hawkins_201702281633.jpg'),
(2, 'Escrito en el agua', '600', 'Tras cautivar a veinte millones de lectores en todo el mundo con La chica del tren, Paula Hawkins vuelve con una apasionante novela sobre las historias que nos contamos al recordar nuestro pasado y su poder para destruirnos. \r\nPocos días antes de morir, Nel Abbott estuvo llamando a su hermana, pero Jules no cogió el teléfono, ignoró sus súplicas de ayuda. Ahora Nel está muerta. Dicen que saltó al río. Y Jules se ve arrastrada al pequeño pueblo de los veranos de su infancia, un lugar del que creía haber escapado, para cuidar de la adolescente que su hermana deja atrás. Pero Jules tiene miedo. Mucho miedo. Miedo al agua, miedo de sus recuerdos enterrados largo tiempo atrás, y miedo, sobre todo, de su certeza de que Nel nunca habría saltado… ', 'https://static0planetadelibroscom.cdnstatics.com/usuaris/libros/fotos/250/m_libros/portada_escrito-en-el-agua_paula-hawkins_201702271114.jpg'),
(3, 'El libro sin nombre', '450', 'Tiros, chorros de sangre y cordilleras de cadáveres conducen este wéstern moderno que parece estar escrito por Tarantino, Álex de la Iglesia y Robert Rodríguez. Valga una recomendación a los lectores: prohibido encariñarse con los personajes.\r\n\r\nQuedan pocos días para el festival del eclipse lunar y los invitados comienzan a llegar a Santa Mondega, un pueblo árido en la frontera de algún lugar. Mientras tanto, la única superviviente de una masacre pasada despierta de un coma de cinco años sin idea de quién es, dos monjes viajan hasta la ciudad para recuperar una misteriosa gema robada a su orden religiosa y un detective recibe el encargo de destapar los secretos de una sociedad que escribe su ley a base de pistola.\r\n\r\nVecinos y forasteros anhelan y temen la llegada del eclipse: la fecha más señalada del año es también el recordatorio de la mayor carnicería jamás vista en Santa Mondega. Un vaso de bourbon despertó la furia de un letal asesino y ahora se rumorea que el misterioso Bourbon Kid puede estar de vuelta.', 'https://static5planetadelibroscom.cdnstatics.com/usuaris/libros/fotos/295/m_libros/portada_el-libro-sin-nombre_anonimo_201903271020.jpg'),
(4, 'Mi nombre es Greta Godoy', '700', 'Greta Godoy decide cerrar su cuenta de instagram cuando llega a los 2 millones de seguidores. Guiada por un deseo incontrolable de volver a conectar consigo misma. De recordar quién era ella antes de entregar su vida a todos aquellos “fans” que la llevaron al éxito.\r\n\r\nEstamos en pleno “boom” de la red social que transformará su vida por completo. Durante la novela, Greta Godoy se convierte accidentalmente en una de las chicas más populares de Instagram. Su propia imagen termina siendo su principal prisión y sus likes y seguidores, el motor que le empuja a seguir adelante. Pero llega un día en el que todo ese cúmulo de éxitos profesionales, no son suficientes para encontrar la estabilidad emocional dentro de sí misma.\r\n\r\nMarcada por la historia de 3 hombres que le ayudarán a descubrir quién es ella realmente, Greta experimenta un viaje apasionante donde descubre el verdadero significado del amor, la autoestima, la humildad y la intimidad.\r\n\r\nUna novela cargada de valores que constituye el apasionante retrato de una sociedad marcada por la integración de la tecnología y de cómo esta altera inevitablemente las relaciones personales del siglo XXI.\r\n\r\n', 'https://static2planetadelibroscom.cdnstatics.com/usuaris/libros/fotos/292/m_libros/portada_mi-nombre-es-greta-godoy_berta-bernad-cifuentes_201903061112.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `DatosPayPal` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Total` decimal(60,0) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `Correo` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `ClaveTransaccion`, `DatosPayPal`, `Fecha`, `Total`, `Status`, `Correo`) VALUES
(1, '87218742827812', '', '2019-06-30 00:00:00', '0', '700', 'Pendiente'),
(2, '902390575290523', '', '2019-06-13 00:00:00', '700', 'Pendiente', 'ozkaruriel@hotmail.es'),
(3, '902390575290523', '', '2019-06-13 00:00:00', '700', 'Pendiente', 'ozkaruriel@hotmail.es'),
(4, '902390575290523', '', '2019-06-30 12:52:01', '0', 'Pendiente', ':Correo'),
(5, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 12:54:08', '500', 'Pendiente', 'ozkaruriel@hotmail.es'),
(6, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 12:58:12', '1100', 'Pendiente', 'ospc61@outlook.com'),
(7, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 13:16:26', '1550', 'Pendiente', 'mauricio@outlook.com'),
(8, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 13:22:23', '1550', 'Pendiente', 'brend.1505@hotmail.com'),
(9, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 13:23:00', '1550', 'Pendiente', 'brend.1505@hotmail.com'),
(10, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 13:24:33', '1550', 'Pendiente', 'brend.1505@hotmail.com'),
(11, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 15:14:56', '1550', 'Pendiente', 'ozkaruriel@hotmail.es'),
(12, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 15:16:26', '1550', 'Pendiente', 'ozkaruriel@hotmail.es'),
(13, 'sej0sktg3t0i9uvtj7kbnu0t73', '', '2019-06-30 15:17:02', '450', 'Pendiente', 'ozkaruriel@hotmail.es');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVENTA` (`idVENTA`),
  ADD KEY `idPRODUCTO` (`idPRODUCTO`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`idVENTA`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`idPRODUCTO`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
