-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-03-2015 a las 15:29:59
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`) VALUES
(1, 'El título', 'Este es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del postEste es el cuerpo del post', '2015-01-27 15:05:11', '2015-01-27 15:42:45'),
(2, 'El título one more time', 'Este el el cuerpo del segundo post', '2015-01-27 15:06:23', NULL),
(3, 'El título returns', 'Este es el cuerpo del tercer post del blog', '2015-01-27 15:06:23', NULL),
(5, 'Nuevo post', 'Esto es una prueba para añadir un nuevo post', '2015-01-27 15:30:12', '2015-01-27 15:30:12');
