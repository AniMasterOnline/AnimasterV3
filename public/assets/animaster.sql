-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2016 a las 17:22:44
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `animaster`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica`
--

CREATE TABLE `caracteristica` (
  `id_caracteristica` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caracteristica`
--

INSERT INTO `caracteristica` (`id_caracteristica`, `nombre`) VALUES
(1, 'Daño'),
(2, 'Turno'),
(3, 'FUE Req.'),
(4, 'Crítico 1'),
(5, 'Crítico 2'),
(6, 'Tipo de arma'),
(7, 'Especial'),
(8, 'Enterza'),
(9, 'Rotura'),
(10, 'Presencia'),
(11, 'Tipo'),
(12, 'Cadencia de Fuego'),
(13, 'Recarga'),
(14, 'Alcance'),
(15, 'Requerimiento de Armadura'),
(16, 'Penalizador natural'),
(17, 'Restricción al movimiento'),
(18, 'Localización'),
(19, 'Classe'),
(20, 'TA_FIL'),
(21, 'Penalización a la percepción'),
(22, 'Dureza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas_p`
--

CREATE TABLE `caracteristicas_p` (
  `base` int(11) NOT NULL,
  `bono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caracteristicas_p`
--

INSERT INTO `caracteristicas_p` (`base`, `bono`) VALUES
(1, -30),
(2, -20),
(3, -10),
(4, -5),
(5, 0),
(6, 5),
(7, 5),
(8, 10),
(9, 10),
(10, 15),
(11, 20),
(12, 20),
(13, 25),
(14, 30),
(15, 30),
(16, 35),
(17, 35),
(18, 40),
(19, 40),
(20, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `descripcion` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Guerrero', 'El guerrero es el luchador arquetípico por excelencia. Esta categoría engloba a aquellas personas que han dedicado por completo su vida al combate y son capaces de explotar al máximo su habilidad bélica. Esto les lleva no sólo a dominar el manejo de las armas, sino a, llegado el momento, emplear su energía anímica en la lucha. También tienen facilidad para desarrollar un gran conocimiento en el campo de las tácticas militares y convertirse en cabecillas de ejércitos. Tradicionalmente, los guerreros pueden llegar a trabajar casi de cualquier cosa, desde meros mercenarios a caballeros.'),
(2, 'Guerrero Acróbata', 'Los guerreros acróbatas son luchadores que se han especializado en sacar el máximo provecho a su agilidad y rapidez. Su principal ventaja consiste en aticiparse a los movimientos de sus adversarios y tratar de acabar con ellos antes de que reaccionen. También prefieren esquivar los ataques y estar tan lejos como puedan del lugar donde se da el gople. Se benefician de una gran movilidad, siendo capaces de saltar, caer o correr con una destreza que muy pocos logran igualar. Pueden adoptar cualquier tipo de papel en la sociedad, pero generalmente asumirán profesiones ligadas al combate, como duelista o espadachines.'),
(3, 'Paladín', 'Los paladines son luchadores muy defensivos que combaten apoyándose en ciertas capacidads místicas. Una de sus especialidades consiste en expulsar a los seres sobrenaturales usando sus poderes naturales. Normalmente, muchos se rigen por códigos de conducta basados en normas religiosas o en el honor, aunque no están obligados a ello. Son líderes naturales, capaces de utilizar su carisma y dotes para movilizar a su favor a enormes cantidades de personas, que incluso darán sus vidas por ellos.'),
(4, 'Paladín Oscuro', 'En cierto modo, esta categoría es la opuesta directa al paladín. Es un luchador especializado en el ataque que se apoya en unas limitadas habilidades místicas. Sus principales poderes se basan en el dominio y el control de los seres sobrenaturales, quienes, una vez sometidos a su voluntad, son utilitzados en su beneficio. Tienen grandes capacidades de mando, pero emplean la intimidación y el miedo para subyugar a los demás a sus deseos. Si esto no funciona, persuaden a las personas tratando de conseguir salirse con lo que pretende.'),
(5, 'Maestro en Armas', 'Son luchadores que se han dediado a perfeccionar sus habilidades marciales con todo tipo de armas. Se trata de guerreros natos, los cuales han llevado hasta el límite su capacidad combativa por encima de cualquier otra categoría. Opuestamente a los guerreros convencionales, no emplean ninguna otra habilidad en la lucha más que su maestría en el uso de las armas. En una contienda, ingoran el uso de su energía física y de todo aquello que no sea su propia habilidad marical, pero no por ello dejan de ser los combatientes más hábiles y los más centrados en las verdaderas habilidades marciales. La gran mayoría de caballeros y mercenarios tienen esta categoría.'),
(6, 'Explorador', 'Un explorador es el prototipo tradicional de aventurero. Normalmente, se trata de personas que han sacado el máximo provecho a su capacidad de percibir lo que les rodea y adentrasre donde nadie más sería capaz. Un explorador suele tener siempre sus sentidos pendientes de lo que hay a su alrededor, por lo que es muy complicado cogerle por sorpresa. Es también un rastreador y un superviviente nato, razón por la que tiene grandes conocimientos sobre zonas boscosas o regiones inhóspitas. En la sociedad suele trabajar como cazadores, batidoes o incluso arqueólogos, pero lo más normal es que simplemente se trate de habitantes de territorios apartados donde sus habilidades son necesarias para sobrevivir.'),
(7, 'Sombra', 'Las sombras son luchadores que se mueven en la oscuridad y aprovechan a su favor el entorno. Aunque sus habilidades de combate son excelentes, prefieren acabar con sus enemigos sin darles la oportunidad de responder a su ataques. Para ello, emplean el subterfugio para sorprenderles, o usan otras tácticas más complejas. Incluso si es descubierta, una sombra es capaz de seguir luchando con sus enemigos en igualdad de oportunidades, aunque su resistencia tiende a ser menor que la de otros luchadores. Generalmente ágiles y veloces, prefieren esquivar los ataques en lugar de afrontarlos.'),
(8, 'Ladrón', 'Como sugiere su nombre, un ladrón es un personaje especializado en los campos del sigilo, el robo y la ocultación. Son personas que huyen de los enfrentamientos directos y prefieren confiar en sus habilidades de subterfugio para conseguir lo que desean. Dado que su resistencia física no suele ser demasiado elevada, son muy hábiles huyendo y esquivando golpes cuando son descubiertos. Pueden representar diversos papeles en la sociedad, aunque habitualmente se dedican a la profesión que da nombre a la categoría.'),
(9, 'Asesino', 'Son individuos que se especializan en los campos del subterfugio y la intriga. Se mueven en el anonimato y tratan de que sus víctimas no sean ni siquiera conscientes de qué les ha matado. Emplean técnicas muy refinadas, prefiriendo evitar en todo momento llegar al combate donde son muy vulnerables. Por ello, tras hacer su trabajo, desaparecen de nuevo entre las sombras de las que surgieron. De todas formas, personajes con esta categoria no están necesariamente obligados a representar únicamente el papel de ejecutores dentro de la sociedad, ya que existen muchos otros ámbitos en los que pueden poner en práctica sus excelentes habilidades, como por ejemplo el espionaje.'),
(10, 'Novel', 'Los noveles representan el arquetipo de Sin categoría, o lo que es lo mismo, alguien que no se encuentra dentro de ninguno de los arquetipos que se han explicado hasta el momento. Puede ser cualquier tipo de persona que no tenga una verdadera especialización. Desde campesinos a barcos, pasando por nobles y bufones, el novel es la categoría estándar de Ánima, a la que podrá acceder cualquiera. El novel tiene buenas habilidades en todos los campos, desde la magia al combate, aunque no se especializa en ninguno. Además le resulta excepcionalmente fácil cambiar posteriormente de categoría a la de cualquier otro arquetipo. En muchas ocasiones, cuando un jugador no tenga realmente decidido qué hacer con su personaje, puede empezar como novel y realizar después un cambio de categoría, cuando finalmente encuentre la apropiada.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_hp`
--

CREATE TABLE `categoria_hp` (
  `id_categoria` int(11) NOT NULL,
  `id_HP` int(11) NOT NULL,
  `coste` int(11) DEFAULT NULL,
  `incr_nv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria_hp`
--

INSERT INTO `categoria_hp` (`id_categoria`, `id_HP`, `coste`, `incr_nv`) VALUES
(1, 1, 2, 5),
(1, 2, 2, 5),
(1, 3, 2, NULL),
(1, 4, 2, 5),
(2, 1, 2, 5),
(2, 2, 3, NULL),
(2, 3, 2, 5),
(2, 4, 2, NULL),
(3, 1, 2, NULL),
(3, 2, 2, 5),
(3, 3, 2, NULL),
(3, 4, 2, 10),
(4, 1, 2, 5),
(4, 2, 2, NULL),
(4, 3, 2, NULL),
(4, 4, 2, 5),
(5, 1, 2, 5),
(5, 2, 2, 5),
(5, 3, 2, NULL),
(5, 4, 1, 10),
(6, 1, 2, 5),
(6, 2, 2, NULL),
(6, 3, 2, NULL),
(6, 4, 2, NULL),
(7, 1, 2, 5),
(7, 2, 3, NULL),
(7, 3, 2, 5),
(7, 4, 2, NULL),
(8, 1, 2, NULL),
(8, 2, 3, NULL),
(8, 3, 2, 5),
(8, 4, 3, NULL),
(9, 1, 2, 5),
(9, 2, 3, NULL),
(9, 3, 2, NULL),
(9, 4, 3, NULL),
(10, 1, 2, NULL),
(10, 2, 2, NULL),
(10, 3, 2, NULL),
(10, 4, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_hs`
--

CREATE TABLE `categoria_hs` (
  `id_categoria` int(11) NOT NULL,
  `id_HS` int(11) NOT NULL,
  `coste` int(11) DEFAULT NULL,
  `incr_nv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria_hs`
--

INSERT INTO `categoria_hs` (`id_categoria`, `id_HS`, `coste`, `incr_nv`) VALUES
(1, 1, 2, NULL),
(1, 2, 2, NULL),
(1, 3, 2, NULL),
(1, 4, 2, NULL),
(1, 5, 2, NULL),
(1, 6, 2, NULL),
(1, 7, 2, NULL),
(1, 8, 1, 5),
(1, 9, 2, NULL),
(1, 10, 2, NULL),
(1, 11, 2, NULL),
(1, 12, 2, NULL),
(1, 13, 3, NULL),
(1, 14, 3, NULL),
(1, 15, 3, NULL),
(1, 16, 3, NULL),
(1, 17, 3, NULL),
(1, 18, 3, NULL),
(1, 19, 3, NULL),
(1, 20, 3, NULL),
(1, 21, 3, NULL),
(1, 22, 3, NULL),
(1, 23, 3, NULL),
(1, 24, 3, NULL),
(1, 25, 3, NULL),
(1, 26, 2, NULL),
(1, 27, 2, NULL),
(1, 28, 2, NULL),
(1, 29, 2, NULL),
(1, 30, 2, NULL),
(1, 31, 2, NULL),
(1, 32, 2, NULL),
(1, 33, 2, NULL),
(1, 34, 2, NULL),
(1, 35, 2, NULL),
(1, 36, 2, NULL),
(1, 37, 2, NULL),
(1, 38, 2, NULL),
(1, 39, 2, NULL),
(1, 40, 2, NULL),
(1, 41, 2, NULL),
(1, 42, 2, NULL),
(1, 43, 2, NULL),
(1, 44, 2, NULL),
(1, 45, 2, NULL),
(1, 46, 2, NULL),
(1, 47, 2, NULL),
(1, 48, 2, NULL),
(1, 49, 2, NULL),
(2, 1, 2, 10),
(2, 2, 2, 10),
(2, 3, 2, NULL),
(2, 4, 2, NULL),
(2, 5, 2, NULL),
(2, 6, 2, 10),
(2, 7, 2, NULL),
(2, 8, 2, NULL),
(2, 9, 2, NULL),
(2, 10, 2, NULL),
(2, 11, 2, NULL),
(2, 12, 2, NULL),
(2, 13, 3, NULL),
(2, 14, 3, NULL),
(2, 15, 3, NULL),
(2, 16, 3, NULL),
(2, 17, 3, NULL),
(2, 18, 3, NULL),
(2, 19, 3, NULL),
(2, 20, 3, NULL),
(2, 21, 3, NULL),
(2, 22, 3, NULL),
(2, 23, 3, NULL),
(2, 24, 2, 10),
(2, 25, 2, NULL),
(2, 26, 2, NULL),
(2, 27, 2, NULL),
(2, 28, 2, NULL),
(2, 29, 2, NULL),
(2, 30, 2, NULL),
(2, 31, 2, NULL),
(2, 32, 2, NULL),
(2, 33, 2, NULL),
(2, 34, 2, NULL),
(2, 35, 2, NULL),
(2, 36, 2, NULL),
(2, 37, 2, NULL),
(2, 38, 2, NULL),
(2, 39, 2, NULL),
(2, 40, 2, NULL),
(2, 41, 2, 10),
(2, 42, 2, NULL),
(2, 43, 2, NULL),
(2, 44, 2, NULL),
(2, 45, 2, NULL),
(2, 46, 2, NULL),
(2, 47, 2, NULL),
(2, 48, 2, NULL),
(2, 49, 2, NULL),
(3, 1, 2, NULL),
(3, 2, 2, NULL),
(3, 3, 2, NULL),
(3, 4, 2, NULL),
(3, 5, 2, NULL),
(3, 6, 2, NULL),
(3, 7, 2, 10),
(3, 8, 2, NULL),
(3, 9, 1, 10),
(3, 10, 2, NULL),
(3, 11, 2, NULL),
(3, 12, 2, NULL),
(3, 13, 2, NULL),
(3, 14, 2, NULL),
(3, 15, 2, NULL),
(3, 16, 2, NULL),
(3, 17, 2, NULL),
(3, 18, 2, NULL),
(3, 19, 2, NULL),
(3, 20, 2, NULL),
(3, 21, 2, NULL),
(3, 22, 2, NULL),
(3, 23, 2, NULL),
(3, 24, 1, 5),
(3, 25, 1, NULL),
(3, 26, 1, 10),
(3, 27, 1, NULL),
(3, 28, 1, NULL),
(3, 29, 1, NULL),
(3, 30, 1, NULL),
(3, 31, 3, NULL),
(3, 32, 3, NULL),
(3, 33, 3, NULL),
(3, 34, 3, NULL),
(3, 35, 3, NULL),
(3, 36, 3, NULL),
(3, 37, 3, NULL),
(3, 38, 2, NULL),
(3, 39, 2, NULL),
(3, 40, 2, NULL),
(3, 41, 2, NULL),
(3, 42, 2, NULL),
(3, 43, 2, NULL),
(3, 44, 2, NULL),
(3, 45, 2, NULL),
(3, 46, 2, NULL),
(3, 47, 2, NULL),
(3, 48, 2, NULL),
(3, 49, 2, NULL),
(4, 1, 2, NULL),
(4, 2, 2, NULL),
(4, 3, 2, NULL),
(4, 4, 2, NULL),
(4, 5, 2, NULL),
(4, 6, 2, NULL),
(4, 7, 1, 5),
(4, 8, 2, NULL),
(4, 9, 2, 10),
(4, 10, 2, NULL),
(4, 11, 2, NULL),
(4, 12, 2, NULL),
(4, 13, 2, NULL),
(4, 14, 2, NULL),
(4, 15, 2, NULL),
(4, 16, 2, NULL),
(4, 17, 2, NULL),
(4, 18, 2, NULL),
(4, 19, 2, NULL),
(4, 20, 2, NULL),
(4, 21, 2, NULL),
(4, 22, 2, NULL),
(4, 23, 2, NULL),
(4, 24, 1, 5),
(4, 25, 1, 10),
(4, 26, 1, NULL),
(4, 27, 1, 5),
(4, 28, 1, NULL),
(4, 29, 1, NULL),
(4, 30, 1, NULL),
(4, 31, 2, NULL),
(4, 32, 2, NULL),
(4, 33, 2, NULL),
(4, 34, 2, NULL),
(4, 35, 2, NULL),
(4, 36, 2, NULL),
(4, 37, 2, NULL),
(4, 38, 2, NULL),
(4, 39, 2, NULL),
(4, 40, 2, NULL),
(4, 41, 2, NULL),
(4, 42, 2, NULL),
(4, 43, 2, NULL),
(4, 44, 2, NULL),
(4, 45, 2, NULL),
(4, 46, 2, NULL),
(4, 47, 2, NULL),
(4, 48, 2, NULL),
(4, 49, 2, NULL),
(5, 1, 2, NULL),
(5, 2, 2, NULL),
(5, 3, 2, NULL),
(5, 4, 2, NULL),
(5, 5, 2, NULL),
(5, 6, 2, NULL),
(5, 7, 1, NULL),
(5, 8, 1, 5),
(5, 9, 1, NULL),
(5, 10, 2, NULL),
(5, 11, 2, NULL),
(5, 12, 2, NULL),
(5, 13, 3, NULL),
(5, 14, 3, NULL),
(5, 15, 3, NULL),
(5, 16, 3, NULL),
(5, 17, 3, NULL),
(5, 18, 3, NULL),
(5, 19, 3, NULL),
(5, 20, 3, NULL),
(5, 21, 3, NULL),
(5, 22, 3, NULL),
(5, 23, 3, NULL),
(5, 24, 2, NULL),
(5, 25, 2, NULL),
(5, 26, 2, NULL),
(5, 27, 2, NULL),
(5, 28, 2, NULL),
(5, 29, 2, NULL),
(5, 30, 2, NULL),
(5, 31, 3, NULL),
(5, 32, 3, NULL),
(5, 33, 3, NULL),
(5, 34, 3, NULL),
(5, 35, 3, NULL),
(5, 36, 3, NULL),
(5, 37, 3, NULL),
(5, 38, 2, NULL),
(5, 39, 2, NULL),
(5, 40, 2, NULL),
(5, 41, 2, NULL),
(5, 42, 2, NULL),
(5, 43, 2, NULL),
(5, 44, 2, NULL),
(5, 45, 2, NULL),
(5, 46, 2, NULL),
(5, 47, 2, NULL),
(5, 48, 2, NULL),
(5, 49, 2, NULL),
(6, 1, 2, NULL),
(6, 2, 2, NULL),
(6, 3, 2, NULL),
(6, 4, 2, NULL),
(6, 5, 2, NULL),
(6, 6, 2, NULL),
(6, 7, 3, NULL),
(6, 8, 3, NULL),
(6, 9, 3, NULL),
(6, 10, 1, 10),
(6, 11, 1, 10),
(6, 12, 1, 10),
(6, 13, 1, 5),
(6, 14, 3, NULL),
(6, 15, 2, 5),
(6, 16, 3, NULL),
(6, 17, 2, NULL),
(6, 18, 3, NULL),
(6, 19, 3, NULL),
(6, 20, 3, NULL),
(6, 21, 3, NULL),
(6, 22, 3, NULL),
(6, 23, 3, NULL),
(6, 24, 2, NULL),
(6, 25, 2, NULL),
(6, 26, 2, NULL),
(6, 27, 2, NULL),
(6, 28, 2, NULL),
(6, 29, 2, NULL),
(6, 30, 2, NULL),
(6, 31, 2, NULL),
(6, 32, 2, NULL),
(6, 33, 2, NULL),
(6, 34, 2, NULL),
(6, 35, 2, NULL),
(6, 36, 1, 5),
(6, 37, 2, NULL),
(6, 38, 2, NULL),
(6, 39, 2, NULL),
(6, 40, 2, NULL),
(6, 41, 2, NULL),
(6, 42, 2, NULL),
(6, 43, 2, NULL),
(6, 44, 2, NULL),
(6, 45, 2, NULL),
(6, 46, 2, NULL),
(6, 47, 2, NULL),
(6, 48, 2, NULL),
(6, 49, 2, NULL),
(7, 1, 2, NULL),
(7, 2, 2, NULL),
(7, 3, 2, NULL),
(7, 4, 2, NULL),
(7, 5, 2, NULL),
(7, 6, 2, NULL),
(7, 7, 2, NULL),
(7, 8, 2, NULL),
(7, 9, 2, NULL),
(7, 10, 2, 10),
(7, 11, 2, 10),
(7, 12, 2, NULL),
(7, 13, 3, NULL),
(7, 14, 3, NULL),
(7, 15, 3, NULL),
(7, 16, 3, NULL),
(7, 17, 3, NULL),
(7, 18, 3, NULL),
(7, 19, 3, NULL),
(7, 20, 3, NULL),
(7, 21, 3, NULL),
(7, 22, 3, NULL),
(7, 23, 3, NULL),
(7, 24, 2, NULL),
(7, 25, 2, NULL),
(7, 26, 2, NULL),
(7, 27, 2, NULL),
(7, 28, 2, NULL),
(7, 29, 2, NULL),
(7, 30, 2, NULL),
(7, 31, 2, NULL),
(7, 32, 2, NULL),
(7, 33, 2, 10),
(7, 34, 2, NULL),
(7, 35, 2, 10),
(7, 36, 2, NULL),
(7, 37, 2, NULL),
(7, 38, 2, NULL),
(7, 39, 2, NULL),
(7, 40, 2, NULL),
(7, 41, 2, NULL),
(7, 42, 2, NULL),
(7, 43, 2, NULL),
(7, 44, 2, NULL),
(7, 45, 2, NULL),
(7, 46, 2, NULL),
(7, 47, 2, NULL),
(7, 48, 2, NULL),
(7, 49, 2, NULL),
(8, 1, 1, NULL),
(8, 2, 1, NULL),
(8, 3, 1, NULL),
(8, 4, 1, NULL),
(8, 5, 1, NULL),
(8, 6, 1, NULL),
(8, 7, 3, NULL),
(8, 8, 3, NULL),
(8, 9, 3, NULL),
(8, 10, 2, 5),
(8, 11, 2, 5),
(8, 12, 2, NULL),
(8, 13, 3, NULL),
(8, 14, 3, NULL),
(8, 15, 3, NULL),
(8, 16, 3, NULL),
(8, 17, 3, NULL),
(8, 18, 3, NULL),
(8, 19, 3, NULL),
(8, 20, 3, NULL),
(8, 21, 1, NULL),
(8, 22, 3, NULL),
(8, 23, 3, NULL),
(8, 24, 2, NULL),
(8, 25, 2, NULL),
(8, 26, 2, NULL),
(8, 27, 2, NULL),
(8, 28, 2, NULL),
(8, 29, 2, NULL),
(8, 30, 2, NULL),
(8, 31, 1, NULL),
(8, 32, 1, NULL),
(8, 33, 1, 5),
(8, 34, 1, 10),
(8, 35, 1, 5),
(8, 36, 1, 5),
(8, 37, 1, NULL),
(8, 38, 2, NULL),
(8, 39, 2, NULL),
(8, 40, 2, NULL),
(8, 41, 2, 5),
(8, 42, 2, NULL),
(8, 43, 2, NULL),
(8, 44, 2, NULL),
(8, 45, 2, NULL),
(8, 46, 2, NULL),
(8, 47, 2, NULL),
(8, 48, 2, NULL),
(8, 49, 2, NULL),
(9, 1, 2, NULL),
(9, 2, 2, NULL),
(9, 3, 2, NULL),
(9, 4, 2, NULL),
(9, 5, 2, NULL),
(9, 6, 2, NULL),
(9, 7, 2, 10),
(9, 8, 3, NULL),
(9, 9, 3, NULL),
(9, 10, 1, 10),
(9, 11, 1, 10),
(9, 12, 1, NULL),
(9, 13, 3, NULL),
(9, 14, 3, NULL),
(9, 15, 3, NULL),
(9, 16, 3, NULL),
(9, 17, 3, NULL),
(9, 18, 2, NULL),
(9, 19, 3, NULL),
(9, 20, 3, NULL),
(9, 21, 3, NULL),
(9, 22, 3, NULL),
(9, 23, 3, NULL),
(9, 24, 2, NULL),
(9, 25, 2, NULL),
(9, 26, 2, NULL),
(9, 27, 2, NULL),
(9, 28, 2, NULL),
(9, 29, 2, NULL),
(9, 30, 2, NULL),
(9, 31, 2, NULL),
(9, 32, 2, NULL),
(9, 33, 2, 10),
(9, 34, 2, NULL),
(9, 35, 1, 10),
(9, 36, 2, 10),
(9, 37, 2, 10),
(9, 38, 2, NULL),
(9, 39, 2, NULL),
(9, 40, 2, NULL),
(9, 41, 2, NULL),
(9, 42, 2, NULL),
(9, 43, 2, NULL),
(9, 44, 2, NULL),
(9, 45, 2, NULL),
(9, 46, 2, NULL),
(9, 47, 2, NULL),
(9, 48, 2, NULL),
(9, 49, 2, NULL),
(10, 1, 2, NULL),
(10, 2, 2, NULL),
(10, 3, 2, NULL),
(10, 4, 2, NULL),
(10, 5, 2, NULL),
(10, 6, 2, NULL),
(10, 7, 2, NULL),
(10, 8, 2, NULL),
(10, 9, 2, NULL),
(10, 10, 2, NULL),
(10, 11, 2, NULL),
(10, 12, 2, NULL),
(10, 13, 2, NULL),
(10, 14, 2, NULL),
(10, 15, 2, NULL),
(10, 16, 2, NULL),
(10, 17, 2, NULL),
(10, 18, 2, NULL),
(10, 19, 2, NULL),
(10, 20, 2, NULL),
(10, 21, 2, NULL),
(10, 22, 2, NULL),
(10, 23, 2, NULL),
(10, 24, 2, NULL),
(10, 25, 2, NULL),
(10, 26, 2, NULL),
(10, 27, 2, NULL),
(10, 28, 2, NULL),
(10, 29, 2, NULL),
(10, 30, 2, NULL),
(10, 31, 2, NULL),
(10, 32, 2, NULL),
(10, 33, 2, NULL),
(10, 34, 2, NULL),
(10, 35, 2, NULL),
(10, 36, 2, NULL),
(10, 37, 2, NULL),
(10, 38, 2, NULL),
(10, 39, 2, NULL),
(10, 40, 2, NULL),
(10, 41, 2, NULL),
(10, 42, 2, NULL),
(10, 43, 2, NULL),
(10, 44, 2, NULL),
(10, 45, 2, NULL),
(10, 46, 2, NULL),
(10, 47, 2, NULL),
(10, 48, 2, NULL),
(10, 49, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combate`
--

CREATE TABLE `combate` (
  `id_personaje` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades_primarias`
--

CREATE TABLE `habilidades_primarias` (
  `id_HP` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `caracteristica` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habilidades_primarias`
--

INSERT INTO `habilidades_primarias` (`id_HP`, `nombre`, `caracteristica`) VALUES
(1, 'Habilidad Ataque', 'DES'),
(2, 'Habilidad Parada', 'DES'),
(3, 'Habilidad Esquiva', 'AGI'),
(4, 'Llevar Armadura', 'FUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades_secundarias`
--

CREATE TABLE `habilidades_secundarias` (
  `id_HS` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `id_rama` int(11) NOT NULL,
  `caracteristica` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habilidades_secundarias`
--

INSERT INTO `habilidades_secundarias` (`id_HS`, `nombre`, `id_rama`, `caracteristica`) VALUES
(1, 'Acrobacias', 1, 'AGI'),
(2, 'Atletismo', 1, 'AGI'),
(3, 'Montar', 1, 'AGI'),
(4, 'Nadar', 1, 'AGI'),
(5, 'Trepar', 1, 'AGI'),
(6, 'Saltar', 1, 'FUE'),
(7, 'Frialdad', 2, 'VOL'),
(8, 'P. Fuerza', 2, 'FUE'),
(9, 'Res. Dolor', 2, 'VOL'),
(10, 'Advertir', 3, 'PER'),
(11, 'Buscar', 3, 'PER'),
(12, 'Rastrear', 3, 'PER'),
(13, 'Animales', 4, 'INT'),
(14, 'Ciencia', 4, 'INT'),
(15, 'Herbolaria', 4, 'INT'),
(16, 'Historia', 4, 'INT'),
(17, 'Medicina', 4, 'INT'),
(18, 'Memorizar', 4, 'INT'),
(19, 'Navegacion', 4, 'INT'),
(20, 'Ocultismo', 4, 'INT'),
(21, 'Tasacion', 4, 'INT'),
(22, 'Ley', 4, 'INT'),
(23, 'Tactica', 4, 'INT'),
(24, 'Estilo', 5, 'POD'),
(25, 'Intimidar', 5, 'VOL'),
(26, 'Liderazgo', 5, 'POD'),
(27, 'Persuasion', 5, 'INT'),
(28, 'Comerciar', 5, 'INT'),
(29, 'Callejeo', 5, 'INT'),
(30, 'Etiqueta', 5, 'INT'),
(31, 'Cerrajeria', 6, 'DES'),
(32, 'Disfraz', 6, 'DES'),
(33, 'Ocultarse', 6, 'PER'),
(34, 'Robo', 6, 'DES'),
(35, 'Sigilo', 6, 'AGI'),
(36, 'Tramperia', 6, 'PER'),
(37, 'Venenos', 6, 'INT'),
(38, 'Arte', 7, 'DES'),
(39, 'Baile', 7, 'AGI'),
(40, 'Forja', 7, 'DES'),
(41, 'T. Manos', 7, 'DES'),
(42, 'Canto', 7, 'VOL'),
(43, 'Runas', 7, 'DES'),
(44, 'Animismo', 7, 'POD'),
(45, 'Alquimia', 7, 'INT'),
(46, 'Especial1', 8, 'DES'),
(47, 'Especial2', 8, 'DES'),
(48, 'Especial3', 8, 'AGI'),
(49, 'Especial4', 8, 'INT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_31_151137_dbanimaster', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`id`, `nombre`) VALUES
(1, 'Abel'),
(2, 'Arlan'),
(3, 'Alberia'),
(4, 'Galgados'),
(5, 'Ilmora'),
(6, 'Helenia'),
(7, 'Kanon'),
(8, 'Haufman'),
(9, 'Goldar'),
(10, 'Hendell'),
(11, 'Moth'),
(12, 'Dwänholf'),
(13, 'Phaion'),
(14, 'Gabriel'),
(15, 'Togarini'),
(16, 'Remo'),
(17, 'Bellafonte'),
(18, 'Lucrecio'),
(19, 'El Dominio'),
(20, 'Argos'),
(21, 'Kushistán'),
(22, 'Estigia'),
(23, 'Salazar'),
(24, 'Nanwe'),
(25, 'Kashmir'),
(26, 'Baho'),
(27, 'Lannet'),
(28, 'Shivat'),
(29, 'Bekent'),
(30, 'Dafne'),
(31, 'Pristina'),
(32, 'Espheria'),
(33, 'Ygdramar'),
(34, 'Manterra'),
(35, 'Corinia'),
(36, 'Arabel'),
(37, 'Elcia'),
(38, 'Itzi'),
(39, 'Dalaborn');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `nivel` int(11) NOT NULL,
  `puntos` int(11) DEFAULT NULL,
  `incr_caracteristica` int(11) DEFAULT NULL,
  `exp_necesaria` int(11) DEFAULT NULL,
  `presencia_base` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`nivel`, `puntos`, `incr_caracteristica`, `exp_necesaria`, `presencia_base`) VALUES
(0, 400, NULL, NULL, 20),
(1, 600, NULL, NULL, 30),
(2, 700, 1, 100, 35),
(3, 800, NULL, 225, 40),
(4, 900, 1, 375, 45),
(5, 1000, NULL, 550, 50),
(6, 1100, 1, 750, 55),
(7, 1200, NULL, 975, 60),
(8, 1300, 1, 1225, 65),
(9, 1400, NULL, 1500, 70),
(10, 1500, 1, 1800, 75),
(11, 1600, NULL, 2125, 80),
(12, 1700, 1, 2475, 85),
(13, 1800, NULL, 2850, 90),
(14, 1900, 1, 3250, 95),
(15, 2000, NULL, 3675, 100),
(16, 2100, 1, 4125, 105),
(17, 2200, NULL, 4575, 110),
(18, 2300, 1, 5025, 115),
(19, 2400, NULL, 5475, 120),
(20, 2500, 1, 5925, 125);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--

CREATE TABLE `objeto` (
  `id_objeto` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `peso` float(4,1) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `public` varchar(8) DEFAULT 'true',
  `disponibilidad` varchar(8) DEFAULT NULL,
  `calidad` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT '6'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`id_objeto`, `nombre`, `descripcion`, `peso`, `precio`, `public`, `disponibilidad`, `calidad`, `id_tipo`) VALUES
(1, 'Oro', 'Moneda de oro', 0.0, 1000, 'true', NULL, 0, 6),
(2, 'Plata', 'Moneda de plata', 0.0, 10, 'true', NULL, 0, 6),
(3, 'Bronce', 'Moneda de bronce', 0.0, 1, 'true', NULL, 0, 6),
(4, 'Alabarda', '', 3.0, 12000, 'true', NULL, 0, 3),
(5, 'Arpón', '', 2.0, 50000, 'true', NULL, 0, 3),
(6, 'Cadena', '', 2.0, 2000, 'true', NULL, 0, 3),
(7, 'Cestus', '', 0.5, 3000, 'true', NULL, 0, 3),
(8, 'Cimitarra', '', 1.0, 10000, 'true', NULL, 0, 3),
(9, 'Daga', '', 0.5, 500, 'true', NULL, 0, 3),
(10, 'Daga de parada', '', 0.6, 10000, 'true', NULL, 0, 3),
(11, 'Espada ancha', '', 1.5, 10000, 'true', NULL, 0, 3),
(12, 'Espada bastarda', '', 2.0, 20000, 'true', NULL, 0, 3),
(13, 'Espada corta', '', 0.8, 2000, 'true', NULL, 0, 3),
(14, 'Espada larga', '', 1.4, 5000, 'true', NULL, 0, 3),
(15, 'Estilete', '', 0.4, 600, 'true', NULL, 0, 3),
(16, 'Acolchada', '', 3.0, 1000, 'true', NULL, 0, 2),
(17, 'Anillas', '', 9.0, 50000, 'true', NULL, 0, 2),
(18, 'Completa', '', 20.0, 400000, 'true', NULL, 0, 2),
(19, 'Completa de cuero', '', 7.0, 5000, 'true', NULL, 0, 2),
(20, 'Completa de campaña', '', 25.0, 800000, 'true', NULL, 0, 2),
(21, 'Completa pesada', '', 30.0, 700000, 'true', NULL, 0, 2),
(22, 'Cota de cuero', '', 3.0, 1000, 'true', NULL, 0, 2),
(23, 'Cuero endurecido', '', 4.0, 15000, 'true', NULL, 0, 2),
(24, 'Cuero tachonado', '', 4.5, 25000, 'true', NULL, 0, 2),
(25, 'Escamas', '', 9.0, 120000, 'true', NULL, 0, 2),
(26, 'Gabardina', '', 1.5, 50, 'true', NULL, 0, 2),
(27, 'Mallas', '', 13.0, 70000, 'true', NULL, 0, 2),
(28, 'Peto', '', 4.0, 40000, 'true', NULL, 0, 2),
(29, 'Piel', '', 2.0, 5000, 'true', NULL, 0, 2),
(30, 'Piezas', '', 6.0, 40000, 'true', NULL, 0, 2),
(31, 'Placas', '', 18.0, 300000, 'true', NULL, 0, 2),
(32, 'Semicompleta', '', 13.0, 100000, 'true', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto_caracteristica`
--

CREATE TABLE `objeto_caracteristica` (
  `id_caracteristica` int(11) NOT NULL,
  `id_objeto` int(11) NOT NULL,
  `valor` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `objeto_caracteristica`
--

INSERT INTO `objeto_caracteristica` (`id_caracteristica`, `id_objeto`, `valor`) VALUES
(1, 4, '60'),
(1, 5, '35'),
(1, 6, '35'),
(1, 7, '25'),
(1, 8, '50'),
(1, 9, '30'),
(1, 10, '30'),
(1, 11, '55'),
(1, 12, '70'),
(1, 13, '40'),
(1, 14, '50'),
(1, 15, '25'),
(1, 16, NULL),
(1, 17, NULL),
(1, 18, NULL),
(1, 19, NULL),
(1, 20, NULL),
(1, 21, NULL),
(1, 22, NULL),
(1, 23, NULL),
(1, 24, NULL),
(1, 25, NULL),
(1, 26, NULL),
(1, 27, NULL),
(1, 28, NULL),
(1, 29, NULL),
(1, 30, NULL),
(1, 31, NULL),
(1, 32, NULL),
(2, 4, '-15'),
(2, 5, '-5'),
(2, 6, NULL),
(2, 7, '10'),
(2, 8, '-5'),
(2, 9, '20'),
(2, 10, '15'),
(2, 11, '-5'),
(2, 12, '-30'),
(2, 13, '15'),
(2, 14, NULL),
(2, 15, '20'),
(2, 16, NULL),
(2, 17, NULL),
(2, 18, NULL),
(2, 19, NULL),
(2, 20, NULL),
(2, 21, NULL),
(2, 22, NULL),
(2, 23, NULL),
(2, 24, NULL),
(2, 25, NULL),
(2, 26, NULL),
(2, 27, NULL),
(2, 28, NULL),
(2, 29, NULL),
(2, 30, NULL),
(2, 31, NULL),
(2, 32, NULL),
(3, 4, '6 / 11'),
(3, 5, '5'),
(3, 6, '6'),
(3, 7, '3'),
(3, 8, '5'),
(3, 9, '3'),
(3, 10, '3'),
(3, 11, '5'),
(3, 12, '7 / 9'),
(3, 13, '4'),
(3, 14, '6'),
(3, 15, '3'),
(3, 16, NULL),
(3, 17, NULL),
(3, 18, NULL),
(3, 19, NULL),
(3, 20, NULL),
(3, 21, NULL),
(3, 22, NULL),
(3, 23, NULL),
(3, 24, NULL),
(3, 25, NULL),
(3, 26, NULL),
(3, 27, NULL),
(3, 28, NULL),
(3, 29, NULL),
(3, 30, NULL),
(3, 31, NULL),
(3, 32, NULL),
(4, 4, 'FIL'),
(4, 5, 'PEN'),
(4, 6, 'CON'),
(4, 7, 'PEN'),
(4, 8, 'FIL'),
(4, 9, 'PEN'),
(4, 10, 'PEN'),
(4, 11, 'FIL'),
(4, 12, 'FIL'),
(4, 13, 'PEN'),
(4, 14, 'FIL'),
(4, 15, 'PEN'),
(4, 16, NULL),
(4, 17, NULL),
(4, 18, NULL),
(4, 19, NULL),
(4, 20, NULL),
(4, 21, NULL),
(4, 22, NULL),
(4, 23, NULL),
(4, 24, NULL),
(4, 25, NULL),
(4, 26, NULL),
(4, 27, NULL),
(4, 28, NULL),
(4, 29, NULL),
(4, 30, NULL),
(4, 31, NULL),
(4, 32, NULL),
(5, 4, 'CON'),
(5, 5, ''),
(5, 6, NULL),
(5, 7, 'FIL'),
(5, 8, NULL),
(5, 9, 'FIL'),
(5, 10, 'FIL'),
(5, 11, NULL),
(5, 12, 'CON'),
(5, 13, 'FIL'),
(5, 14, NULL),
(5, 15, NULL),
(5, 16, NULL),
(5, 17, NULL),
(5, 18, NULL),
(5, 19, NULL),
(5, 20, NULL),
(5, 21, NULL),
(5, 22, NULL),
(5, 23, NULL),
(5, 24, NULL),
(5, 25, NULL),
(5, 26, NULL),
(5, 27, NULL),
(5, 28, NULL),
(5, 29, NULL),
(5, 30, NULL),
(5, 31, NULL),
(5, 32, NULL),
(6, 4, 'Asta / Mandoble'),
(6, 5, 'Asta'),
(6, 6, 'Cuerda'),
(6, 7, 'Arma corta'),
(6, 8, 'Espada'),
(6, 9, 'Arma corta'),
(6, 10, 'Arma corta'),
(6, 11, 'Espada'),
(6, 12, 'Espada / Mandoble'),
(6, 13, 'arma corta'),
(6, 14, 'Espada'),
(6, 15, 'Arma corta'),
(6, 16, NULL),
(6, 17, NULL),
(6, 18, NULL),
(6, 19, NULL),
(6, 20, NULL),
(6, 21, NULL),
(6, 22, NULL),
(6, 23, NULL),
(6, 24, NULL),
(6, 25, NULL),
(6, 26, NULL),
(6, 27, NULL),
(6, 28, NULL),
(6, 29, NULL),
(6, 30, NULL),
(6, 31, NULL),
(6, 32, NULL),
(7, 4, 'A dos manos'),
(7, 5, 'A una o a dos manos, Lanzable'),
(7, 6, 'Compleja, Presa(Fuerza 8)'),
(7, 7, NULL),
(7, 8, NULL),
(7, 9, 'Lanzable, Precisa'),
(7, 10, 'Lanzable, Traba el arma, Precisa'),
(7, 11, NULL),
(7, 12, NULL),
(7, 13, 'Precisa'),
(7, 14, NULL),
(7, 15, 'Lanzable, precisa'),
(7, 16, NULL),
(7, 17, NULL),
(7, 18, NULL),
(7, 19, NULL),
(7, 20, NULL),
(7, 21, NULL),
(7, 22, NULL),
(7, 23, NULL),
(7, 24, NULL),
(7, 25, NULL),
(7, 26, NULL),
(7, 27, NULL),
(7, 28, NULL),
(7, 29, NULL),
(7, 30, NULL),
(7, 31, NULL),
(7, 32, NULL),
(8, 4, '15'),
(8, 5, '11'),
(8, 6, '13'),
(8, 7, '11'),
(8, 8, '13'),
(8, 9, '10'),
(8, 10, '12'),
(8, 11, '15'),
(8, 12, '15'),
(8, 13, '12'),
(8, 14, '13'),
(8, 15, '8'),
(8, 16, '10'),
(8, 17, '15'),
(8, 18, '18'),
(8, 19, '12'),
(8, 20, '20'),
(8, 21, '12'),
(8, 22, '13'),
(8, 23, '14'),
(8, 24, '13'),
(8, 25, '17'),
(8, 26, '10'),
(8, 27, '10'),
(8, 28, '16'),
(8, 29, '10'),
(8, 30, '15'),
(8, 31, '17'),
(8, 32, '16'),
(9, 4, '4'),
(9, 5, NULL),
(9, 6, '2'),
(9, 7, '-2'),
(9, 8, '4'),
(9, 9, '-2'),
(9, 10, NULL),
(9, 11, '3'),
(9, 12, '5'),
(9, 13, '1'),
(9, 14, '3'),
(9, 15, '-3'),
(9, 16, NULL),
(9, 17, NULL),
(9, 18, NULL),
(9, 19, NULL),
(9, 20, NULL),
(9, 21, NULL),
(9, 22, NULL),
(9, 23, NULL),
(9, 24, NULL),
(9, 25, NULL),
(9, 26, NULL),
(9, 27, NULL),
(9, 28, NULL),
(9, 29, NULL),
(9, 30, NULL),
(9, 31, NULL),
(9, 32, NULL),
(10, 4, '20'),
(10, 5, '15'),
(10, 6, '15'),
(10, 7, '15'),
(10, 8, '20'),
(10, 9, '15'),
(10, 10, '20'),
(10, 11, '25'),
(10, 12, '25'),
(10, 13, '20'),
(10, 14, '25'),
(10, 15, '15'),
(10, 16, '25'),
(10, 17, '30'),
(10, 18, '45'),
(10, 19, '25'),
(10, 20, '50'),
(10, 21, '25'),
(10, 22, '25'),
(10, 23, '25'),
(10, 24, '25'),
(10, 25, '25'),
(10, 26, '25'),
(10, 27, '20'),
(10, 28, '30'),
(10, 29, '25'),
(10, 30, '30'),
(10, 31, '35'),
(10, 32, '35'),
(11, 4, NULL),
(11, 5, NULL),
(11, 6, NULL),
(11, 7, NULL),
(11, 8, NULL),
(11, 9, NULL),
(11, 10, NULL),
(11, 11, NULL),
(11, 12, NULL),
(11, 13, NULL),
(11, 14, NULL),
(11, 15, NULL),
(11, 16, NULL),
(11, 17, NULL),
(11, 18, NULL),
(11, 19, NULL),
(11, 20, NULL),
(11, 21, NULL),
(11, 22, NULL),
(11, 23, NULL),
(11, 24, NULL),
(11, 25, NULL),
(11, 26, NULL),
(11, 27, NULL),
(11, 28, NULL),
(11, 29, NULL),
(11, 30, NULL),
(11, 31, NULL),
(11, 32, NULL),
(12, 4, NULL),
(12, 5, NULL),
(12, 6, NULL),
(12, 7, NULL),
(12, 8, NULL),
(12, 9, NULL),
(12, 10, NULL),
(12, 11, NULL),
(12, 12, NULL),
(12, 13, NULL),
(12, 14, NULL),
(12, 15, NULL),
(12, 16, NULL),
(12, 17, NULL),
(12, 18, NULL),
(12, 19, NULL),
(12, 20, NULL),
(12, 21, NULL),
(12, 22, NULL),
(12, 23, NULL),
(12, 24, NULL),
(12, 25, NULL),
(12, 26, NULL),
(12, 27, NULL),
(12, 28, NULL),
(12, 29, NULL),
(12, 30, NULL),
(12, 31, NULL),
(12, 32, NULL),
(13, 4, NULL),
(13, 5, NULL),
(13, 6, NULL),
(13, 7, NULL),
(13, 8, NULL),
(13, 9, NULL),
(13, 10, NULL),
(13, 11, NULL),
(13, 12, NULL),
(13, 13, NULL),
(13, 14, NULL),
(13, 15, NULL),
(13, 16, NULL),
(13, 17, NULL),
(13, 18, NULL),
(13, 19, NULL),
(13, 20, NULL),
(13, 21, NULL),
(13, 22, NULL),
(13, 23, NULL),
(13, 24, NULL),
(13, 25, NULL),
(13, 26, NULL),
(13, 27, NULL),
(13, 28, NULL),
(13, 29, NULL),
(13, 30, NULL),
(13, 31, NULL),
(13, 32, NULL),
(14, 4, NULL),
(14, 5, NULL),
(14, 6, NULL),
(14, 7, NULL),
(14, 8, NULL),
(14, 9, NULL),
(14, 10, NULL),
(14, 11, NULL),
(14, 12, NULL),
(14, 13, NULL),
(14, 14, NULL),
(14, 15, NULL),
(14, 16, NULL),
(14, 17, NULL),
(14, 18, NULL),
(14, 19, NULL),
(14, 20, NULL),
(14, 21, NULL),
(14, 22, NULL),
(14, 23, NULL),
(14, 24, NULL),
(14, 25, NULL),
(14, 26, NULL),
(14, 27, NULL),
(14, 28, NULL),
(14, 29, NULL),
(14, 30, NULL),
(14, 31, NULL),
(14, 32, NULL),
(15, 4, NULL),
(15, 5, NULL),
(15, 6, NULL),
(15, 7, NULL),
(15, 8, NULL),
(15, 9, NULL),
(15, 10, NULL),
(15, 11, NULL),
(15, 12, NULL),
(15, 13, NULL),
(15, 14, NULL),
(15, 15, NULL),
(15, 16, NULL),
(15, 17, '60'),
(15, 18, '100'),
(15, 19, '10'),
(15, 20, '150'),
(15, 21, '0'),
(15, 22, '-10'),
(15, 23, '-10'),
(15, 24, '-10'),
(15, 25, '-25'),
(15, 26, '-5'),
(15, 27, '-5'),
(15, 28, '-15'),
(15, 29, '-10'),
(15, 30, '-20'),
(15, 31, '-35'),
(15, 32, '-20'),
(16, 4, NULL),
(16, 5, NULL),
(16, 6, NULL),
(16, 7, NULL),
(16, 8, NULL),
(16, 9, NULL),
(16, 10, NULL),
(16, 11, NULL),
(16, 12, NULL),
(16, 13, NULL),
(16, 14, NULL),
(16, 15, NULL),
(16, 16, '-5'),
(16, 17, '-20'),
(16, 18, '-50'),
(16, 19, '0'),
(16, 20, '-70'),
(16, 21, '0'),
(16, 22, '20'),
(16, 23, '25'),
(16, 24, '20'),
(16, 25, '80'),
(16, 26, '0'),
(16, 27, '0'),
(16, 28, '40'),
(16, 29, '10'),
(16, 30, '50'),
(16, 31, '90'),
(16, 32, '70'),
(17, 4, NULL),
(17, 5, NULL),
(17, 6, NULL),
(17, 7, NULL),
(17, 8, NULL),
(17, 9, NULL),
(17, 10, NULL),
(17, 11, NULL),
(17, 12, NULL),
(17, 13, NULL),
(17, 14, NULL),
(17, 15, NULL),
(17, 16, NULL),
(17, 17, '2'),
(17, 18, '4'),
(17, 19, '1'),
(17, 20, '6'),
(17, 21, '0'),
(17, 22, '0'),
(17, 23, '1'),
(17, 24, '0'),
(17, 25, '3'),
(17, 26, '0'),
(17, 27, '0'),
(17, 28, '1'),
(17, 29, '0'),
(17, 30, '2'),
(17, 31, '4'),
(17, 32, '3'),
(18, 4, NULL),
(18, 5, NULL),
(18, 6, NULL),
(18, 7, NULL),
(18, 8, NULL),
(18, 9, NULL),
(18, 10, NULL),
(18, 11, NULL),
(18, 12, NULL),
(18, 13, NULL),
(18, 14, NULL),
(18, 15, NULL),
(18, 16, 'Camisola'),
(18, 17, 'Camisola'),
(18, 18, 'Completa'),
(18, 19, 'Completa'),
(18, 20, 'Completa'),
(18, 21, 'Completa'),
(18, 22, 'Peto'),
(18, 23, 'Peto'),
(18, 24, 'Peto'),
(18, 25, 'Completa'),
(18, 26, 'Completa'),
(18, 27, 'Completa'),
(18, 28, 'Peto'),
(18, 29, 'Camisola'),
(18, 30, 'Completa'),
(18, 31, 'Completa'),
(18, 32, 'Completa'),
(19, 4, NULL),
(19, 5, NULL),
(19, 6, NULL),
(19, 7, NULL),
(19, 8, NULL),
(19, 9, NULL),
(19, 10, NULL),
(19, 11, NULL),
(19, 12, NULL),
(19, 13, NULL),
(19, 14, NULL),
(19, 15, NULL),
(19, 16, 'Blanda'),
(19, 17, 'Blanda'),
(19, 18, 'Dura'),
(19, 19, 'Blanda'),
(19, 20, 'Dura'),
(19, 21, 'Blanda'),
(19, 22, 'Dura'),
(19, 23, 'Dura'),
(19, 24, 'Dura'),
(19, 25, 'Dura'),
(19, 26, 'Blanda'),
(19, 27, 'Blanda'),
(19, 28, 'Dura'),
(19, 29, 'Blanda'),
(19, 30, 'Dura'),
(19, 31, 'Dura'),
(19, 32, 'Dura'),
(20, 4, NULL),
(20, 5, NULL),
(20, 6, NULL),
(20, 7, NULL),
(20, 8, NULL),
(20, 9, NULL),
(20, 10, NULL),
(20, 11, NULL),
(20, 12, NULL),
(20, 13, NULL),
(20, 14, NULL),
(20, 15, NULL),
(20, 16, '1'),
(20, 17, '4'),
(20, 18, '5'),
(20, 19, '1'),
(20, 20, '7'),
(20, 21, '1'),
(20, 22, '2'),
(20, 23, '2'),
(20, 24, '2'),
(20, 25, '2'),
(20, 26, '1'),
(20, 27, '1'),
(20, 28, '4'),
(20, 29, '2'),
(20, 30, '4'),
(20, 31, '5'),
(20, 32, '4'),
(21, 4, NULL),
(21, 5, NULL),
(21, 6, NULL),
(21, 7, NULL),
(21, 8, NULL),
(21, 9, NULL),
(21, 10, NULL),
(21, 11, NULL),
(21, 12, NULL),
(21, 13, NULL),
(21, 14, NULL),
(21, 15, NULL),
(21, 16, NULL),
(21, 17, NULL),
(21, 18, NULL),
(21, 19, NULL),
(21, 20, NULL),
(21, 21, NULL),
(21, 22, NULL),
(21, 23, NULL),
(21, 24, NULL),
(21, 25, NULL),
(21, 26, NULL),
(21, 27, NULL),
(21, 28, NULL),
(21, 29, NULL),
(21, 30, NULL),
(21, 31, NULL),
(21, 32, NULL),
(22, 4, NULL),
(22, 5, NULL),
(22, 6, NULL),
(22, 7, NULL),
(22, 8, NULL),
(22, 9, NULL),
(22, 10, NULL),
(22, 11, NULL),
(22, 12, NULL),
(22, 13, NULL),
(22, 14, NULL),
(22, 15, NULL),
(22, 16, NULL),
(22, 17, NULL),
(22, 18, NULL),
(22, 19, NULL),
(22, 20, NULL),
(22, 21, NULL),
(22, 22, NULL),
(22, 23, NULL),
(22, 24, NULL),
(22, 25, NULL),
(22, 26, NULL),
(22, 27, NULL),
(22, 28, NULL),
(22, 29, NULL),
(22, 30, NULL),
(22, 31, NULL),
(22, 32, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `id_partida` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `anyo` varchar(8) DEFAULT NULL,
  `nv_sobrenatural` int(11) DEFAULT NULL,
  `limite` int(11) DEFAULT NULL,
  `token` char(40) DEFAULT NULL,
  `diario` varchar(60000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida_objeto`
--

CREATE TABLE `partida_objeto` (
  `id_partida` int(11) NOT NULL,
  `id_objeto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida_usuari`
--

CREATE TABLE `partida_usuari` (
  `id_usuario` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `pos` int(11) DEFAULT NULL,
  `aceptado` varchar(50) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje`
--

CREATE TABLE `personaje` (
  `id_personaje` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_partida` int(11) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `apellido` varchar(32) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `turno` int(11) DEFAULT NULL,
  `puntos_vida` int(11) DEFAULT NULL,
  `sexo` varchar(32) DEFAULT NULL,
  `raza` varchar(32) DEFAULT NULL,
  `pelo` varchar(32) DEFAULT NULL,
  `ojos` varchar(32) DEFAULT NULL,
  `altura` varchar(32) DEFAULT NULL,
  `peso` varchar(32) DEFAULT NULL,
  `apariencia` int(11) DEFAULT NULL,
  `tamanyo` int(11) DEFAULT NULL,
  `exp_actual` int(11) DEFAULT NULL,
  `c_AGI` int(11) DEFAULT NULL,
  `c_CON` int(11) DEFAULT NULL,
  `c_DES` int(11) DEFAULT NULL,
  `c_FUE` int(11) DEFAULT NULL,
  `c_INT` int(11) DEFAULT NULL,
  `c_PER` int(11) DEFAULT NULL,
  `c_POD` int(11) DEFAULT NULL,
  `c_VOL` int(11) DEFAULT NULL,
  `nacionalidad` int(11) DEFAULT NULL,
  `imagen` varchar(32) DEFAULT NULL,
  `humano` varchar(8) DEFAULT NULL,
  `puntos_hs` int(11) DEFAULT NULL,
  `puntos_hp` int(11) DEFAULT NULL,
  `puntos_totales` int(11) DEFAULT NULL,
  `ha` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `he` int(11) DEFAULT NULL,
  `la` int(11) DEFAULT NULL,
  `danyo` int(11) DEFAULT NULL,
  `TA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje_habilidades`
--

CREATE TABLE `personaje_habilidades` (
  `id_habilidad` int(11) NOT NULL,
  `id_personaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje_hp`
--

CREATE TABLE `personaje_hp` (
  `id_personaje` int(11) NOT NULL,
  `id_HP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje_hs`
--

CREATE TABLE `personaje_hs` (
  `id_personaje` int(11) NOT NULL,
  `id_HS` int(11) NOT NULL,
  `valor` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje_objeto`
--

CREATE TABLE `personaje_objeto` (
  `id_personaje` int(11) NOT NULL,
  `id_objeto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_vida`
--

CREATE TABLE `puntos_vida` (
  `id_constitucion` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puntos_vida`
--

INSERT INTO `puntos_vida` (`id_constitucion`, `cantidad`) VALUES
(1, 5),
(2, 20),
(3, 40),
(4, 55),
(5, 70),
(6, 85),
(7, 95),
(8, 110),
(9, 120),
(10, 135),
(11, 150),
(12, 160),
(13, 175),
(14, 185),
(15, 200),
(16, 215),
(17, 225),
(18, 240),
(19, 250),
(20, 265);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rama`
--

CREATE TABLE `rama` (
  `id_rama` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rama`
--

INSERT INTO `rama` (`id_rama`, `nombre`) VALUES
(1, 'Atléticas'),
(2, 'Vigor'),
(3, 'Perceptivas'),
(4, 'Intelectuales'),
(5, 'Sociales'),
(6, 'Subterfugio'),
(7, 'Creativas'),
(8, 'Especial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regeneracion`
--

CREATE TABLE `regeneracion` (
  `id_constitucion` int(11) NOT NULL,
  `regeneracion_Diaria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `regeneracion`
--

INSERT INTO `regeneracion` (`id_constitucion`, `regeneracion_Diaria`) VALUES
(1, 0),
(2, 0),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 20),
(9, 20),
(10, 30),
(11, 40),
(12, 50),
(13, 75),
(14, 100),
(15, 250),
(16, 500),
(17, 1440),
(18, 2880),
(19, 7200),
(20, 7200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_tipo`, `nombre`) VALUES
(0, 'Administrador'),
(1, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamanyo`
--

CREATE TABLE `tamanyo` (
  `id_tamanyo` int(11) NOT NULL,
  `altura` varchar(32) DEFAULT NULL,
  `peso` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tamanyo`
--

INSERT INTO `tamanyo` (`id_tamanyo`, `altura`, `peso`) VALUES
(2, '0.20 a 0.60 m', '5 a 15 kg'),
(3, '0.40 a 0.60 m', '10 a 20 kg'),
(4, '0.60 a 1.00 m', '20 a 30 kg'),
(5, '0.80 a 1.20 m', '20 a 50 kg'),
(6, '1.00 a 1.40 m', '30 a 50 kg'),
(7, '1.10 a 1.50 m', '30 a 60 kg'),
(8, '1.20 a 1.60 m', '35 a 70 kg'),
(9, '1.30 a a.60 m', '40 a 80 kg'),
(10, '1.40 a 1.70 m', '40 a 90 kg'),
(11, '1.40 a 1.80 m', '50 a 100 kg'),
(12, '1.50 a 1.80 m', '50 a 120 kg'),
(13, '1.50 a 1.80 m', '50 a 140 kg'),
(14, '1.60 a 1.90 m', '50 a 150 kg'),
(15, '1.60 a 2.00 m', '60 a 180 kg'),
(16, '1.70 a 2.10 m', '70 a 220 kg'),
(17, '1.70 a 2.10 m', '80 a 240 kg'),
(18, '1.80 a 2.20 m', '90 a 260 kg'),
(19, '1.90 a 2.30 m', '100 a 280 kg'),
(20, '2.00 a 2.40 m', '110 a 320 kg'),
(21, '2.10 a 2.60 m', '120 a 450 kg'),
(22, '+2.5 m', '+400 kg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `nombre`) VALUES
(1, 'alimento'),
(2, 'armaduras'),
(3, 'armas y escudos'),
(4, 'arte y decoración'),
(5, 'cartas'),
(6, 'útiles varios'),
(7, 'venenos'),
(8, 'vestimenta'),
(9, 'yelmos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `imagen` varchar(32) DEFAULT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `apellido` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `telefono` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `num_partidas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  ADD PRIMARY KEY (`id_caracteristica`);

--
-- Indices de la tabla `caracteristicas_p`
--
ALTER TABLE `caracteristicas_p`
  ADD PRIMARY KEY (`base`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `categoria_hp`
--
ALTER TABLE `categoria_hp`
  ADD PRIMARY KEY (`id_categoria`,`id_HP`),
  ADD KEY `id_HP` (`id_HP`);

--
-- Indices de la tabla `categoria_hs`
--
ALTER TABLE `categoria_hs`
  ADD PRIMARY KEY (`id_categoria`,`id_HS`),
  ADD KEY `id_HS` (`id_HS`);

--
-- Indices de la tabla `combate`
--
ALTER TABLE `combate`
  ADD PRIMARY KEY (`id_partida`);

--
-- Indices de la tabla `habilidades_primarias`
--
ALTER TABLE `habilidades_primarias`
  ADD PRIMARY KEY (`id_HP`);

--
-- Indices de la tabla `habilidades_secundarias`
--
ALTER TABLE `habilidades_secundarias`
  ADD PRIMARY KEY (`id_HS`),
  ADD KEY `id_rama` (`id_rama`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`nivel`);

--
-- Indices de la tabla `objeto`
--
ALTER TABLE `objeto`
  ADD PRIMARY KEY (`id_objeto`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `objeto_caracteristica`
--
ALTER TABLE `objeto_caracteristica`
  ADD PRIMARY KEY (`id_caracteristica`,`id_objeto`),
  ADD KEY `id_objeto` (`id_objeto`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`id_partida`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `partida_objeto`
--
ALTER TABLE `partida_objeto`
  ADD PRIMARY KEY (`id_partida`,`id_objeto`),
  ADD KEY `id_objeto` (`id_objeto`);

--
-- Indices de la tabla `partida_usuari`
--
ALTER TABLE `partida_usuari`
  ADD PRIMARY KEY (`id_usuario`,`id_partida`),
  ADD KEY `id_partida` (`id_partida`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD PRIMARY KEY (`id_personaje`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `nacionalidad` (`nacionalidad`);

--
-- Indices de la tabla `personaje_habilidades`
--
ALTER TABLE `personaje_habilidades`
  ADD PRIMARY KEY (`id_habilidad`,`id_personaje`);

--
-- Indices de la tabla `personaje_hp`
--
ALTER TABLE `personaje_hp`
  ADD PRIMARY KEY (`id_personaje`,`id_HP`),
  ADD KEY `id_HP` (`id_HP`);

--
-- Indices de la tabla `personaje_hs`
--
ALTER TABLE `personaje_hs`
  ADD PRIMARY KEY (`id_personaje`,`id_HS`),
  ADD KEY `id_HS` (`id_HS`);

--
-- Indices de la tabla `personaje_objeto`
--
ALTER TABLE `personaje_objeto`
  ADD PRIMARY KEY (`id_personaje`,`id_objeto`),
  ADD KEY `id_objeto` (`id_objeto`);

--
-- Indices de la tabla `puntos_vida`
--
ALTER TABLE `puntos_vida`
  ADD PRIMARY KEY (`id_constitucion`);

--
-- Indices de la tabla `rama`
--
ALTER TABLE `rama`
  ADD PRIMARY KEY (`id_rama`);

--
-- Indices de la tabla `regeneracion`
--
ALTER TABLE `regeneracion`
  ADD PRIMARY KEY (`id_constitucion`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tamanyo`
--
ALTER TABLE `tamanyo`
  ADD PRIMARY KEY (`id_tamanyo`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nickname` (`nickname`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  MODIFY `id_caracteristica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `habilidades_primarias`
--
ALTER TABLE `habilidades_primarias`
  MODIFY `id_HP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `habilidades_secundarias`
--
ALTER TABLE `habilidades_secundarias`
  MODIFY `id_HS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT de la tabla `objeto`
--
ALTER TABLE `objeto`
  MODIFY `id_objeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `id_partida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personaje`
--
ALTER TABLE `personaje`
  MODIFY `id_personaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rama`
--
ALTER TABLE `rama`
  MODIFY `id_rama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria_hp`
--
ALTER TABLE `categoria_hp`
  ADD CONSTRAINT `categoria_hp_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `categoria_hp_ibfk_2` FOREIGN KEY (`id_HP`) REFERENCES `habilidades_primarias` (`id_HP`);

--
-- Filtros para la tabla `categoria_hs`
--
ALTER TABLE `categoria_hs`
  ADD CONSTRAINT `categoria_hs_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `categoria_hs_ibfk_2` FOREIGN KEY (`id_HS`) REFERENCES `habilidades_secundarias` (`id_HS`);

--
-- Filtros para la tabla `habilidades_secundarias`
--
ALTER TABLE `habilidades_secundarias`
  ADD CONSTRAINT `habilidades_secundarias_ibfk_1` FOREIGN KEY (`id_rama`) REFERENCES `rama` (`id_rama`);

--
-- Filtros para la tabla `objeto`
--
ALTER TABLE `objeto`
  ADD CONSTRAINT `objeto_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`);

--
-- Filtros para la tabla `objeto_caracteristica`
--
ALTER TABLE `objeto_caracteristica`
  ADD CONSTRAINT `objeto_caracteristica_ibfk_1` FOREIGN KEY (`id_caracteristica`) REFERENCES `caracteristica` (`id_caracteristica`),
  ADD CONSTRAINT `objeto_caracteristica_ibfk_2` FOREIGN KEY (`id_objeto`) REFERENCES `objeto` (`id_objeto`);

--
-- Filtros para la tabla `partida`
--
ALTER TABLE `partida`
  ADD CONSTRAINT `partida_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `partida_objeto`
--
ALTER TABLE `partida_objeto`
  ADD CONSTRAINT `partida_objeto_ibfk_1` FOREIGN KEY (`id_partida`) REFERENCES `partida` (`id_partida`),
  ADD CONSTRAINT `partida_objeto_ibfk_2` FOREIGN KEY (`id_objeto`) REFERENCES `objeto` (`id_objeto`);

--
-- Filtros para la tabla `partida_usuari`
--
ALTER TABLE `partida_usuari`
  ADD CONSTRAINT `partida_usuari_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `partida_usuari_ibfk_2` FOREIGN KEY (`id_partida`) REFERENCES `partida` (`id_partida`);

--
-- Filtros para la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD CONSTRAINT `personaje_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `personaje_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `personaje_ibfk_3` FOREIGN KEY (`nacionalidad`) REFERENCES `nacionalidad` (`id`);

--
-- Filtros para la tabla `personaje_hp`
--
ALTER TABLE `personaje_hp`
  ADD CONSTRAINT `personaje_hp_ibfk_1` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`),
  ADD CONSTRAINT `personaje_hp_ibfk_2` FOREIGN KEY (`id_HP`) REFERENCES `habilidades_primarias` (`id_HP`);

--
-- Filtros para la tabla `personaje_hs`
--
ALTER TABLE `personaje_hs`
  ADD CONSTRAINT `personaje_hs_ibfk_1` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`),
  ADD CONSTRAINT `personaje_hs_ibfk_2` FOREIGN KEY (`id_HS`) REFERENCES `habilidades_secundarias` (`id_HS`);

--
-- Filtros para la tabla `personaje_objeto`
--
ALTER TABLE `personaje_objeto`
  ADD CONSTRAINT `personaje_objeto_ibfk_1` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`),
  ADD CONSTRAINT `personaje_objeto_ibfk_2` FOREIGN KEY (`id_objeto`) REFERENCES `objeto` (`id_objeto`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `roles` (`id_tipo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
