-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2024 a las 11:36:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mealmarket`
--
CREATE DATABASE IF NOT EXISTS `mealmarket` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mealmarket`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_carrito` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id_carrito`, `id_user`) VALUES
(2, 1),
(1, 2),
(12, 4),
(13, 5),
(30, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_producto`
--

CREATE TABLE `carrito_producto` (
  `id_carritoproducto` int(11) NOT NULL,
  `id_carrito` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carrito_producto`
--

INSERT INTO `carrito_producto` (`id_carritoproducto`, `id_carrito`, `id_producto`, `cantidad`) VALUES
(8, 2, 2, 12),
(9, 2, 4, 1),
(10, 2, 1, 2),
(12, 13, 1, 2),
(13, 13, 5, 1),
(35, 30, 2, 1),
(36, 30, 10, 1),
(37, 30, 14, 1),
(38, 30, 29, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID_FAVORITOS` int(11) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `ID_PRODUCTO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:14:\\\"hola@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 10:54:17', '2024-06-10 10:54:17', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:14:\\\"hola@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 20:48:59', '2024-06-10 20:48:59', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:13:\\\"hola@hola.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 20:55:55', '2024-06-10 20:55:55', NULL),
(4, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:13:\\\"hola@hola.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 20:58:06', '2024-06-10 20:58:06', NULL),
(5, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:13:\\\"hola@hola.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:00:01', '2024-06-10 21:00:01', NULL),
(6, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:13:\\\"hola@hola.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:01:12', '2024-06-10 21:01:12', NULL),
(7, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:13:\\\"hola@hola.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:05:16', '2024-06-10 21:05:16', NULL),
(8, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:9:\\\"hola@gola\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:08:58', '2024-06-10 21:08:58', NULL),
(9, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:9:\\\"hola@hola\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:11:08', '2024-06-10 21:11:08', NULL),
(10, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:12:\\\"hola@example\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:13:05', '2024-06-10 21:13:05', NULL),
(11, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:12:\\\"hola@example\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:16:16', '2024-06-10 21:16:16', NULL),
(12, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:12:\\\"hola@example\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:16:49', '2024-06-10 21:16:49', NULL),
(13, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:9:\\\"hola@hola\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:20:56', '2024-06-10 21:20:56', NULL);
INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(14, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:9:\\\"hola@hola\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:23:50', '2024-06-10 21:23:50', NULL),
(15, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:96:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, hola!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:9:\\\"hola@hola\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 21:26:19', '2024-06-10 21:26:19', NULL),
(16, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;N;i:1;N;i:2;a:0:{}i:3;a:6:{i:0;N;i:1;N;i:2;s:97:\\\"\n\nRegistro Exitoso\n    <h1>Bienvenido, ruben!</h1>\n    <p>¡Tu registro ha sido exitoso!</p>\n    \\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"cjldm2004@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:13:\\\"ruben@msn.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:36:\\\"Verificación de Correo Electrónico\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2024-06-10 22:20:58', '2024-06-10 22:20:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE `opiniones` (
  `ID_OPINION` int(11) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `ID_PRODUCTO` int(11) DEFAULT NULL,
  `OPINION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`ID_OPINION`, `ID_USER`, `ID_PRODUCTO`, `OPINION`) VALUES
(1, 2, 1, 'estan muy buenos'),
(9, 1, 1, 'Son muy utiles los recomiendo 100%'),
(10, 2, 2, 'estan muy buenos'),
(11, 2, 15, 'estan muy buenos'),
(12, 2, 24, 'estan muy buenos'),
(13, 26, 14, 'Esta muy bueno pero creo q lo deberian a ver metido en la bolsa del frio porq llego derretido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password`
--

CREATE TABLE `password` (
  `id_pw` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_user`, `fecha`, `total`) VALUES
(2, 4, '2024-06-05 20:04:29', 2.65),
(3, 4, '2024-06-05 20:06:03', 1.10),
(4, 4, '2024-06-05 20:09:28', 1.55),
(5, 4, '2024-06-05 20:11:56', 1.10),
(6, 4, '2024-06-05 20:18:28', 0.00),
(7, 4, '2024-06-05 20:18:41', 0.00),
(8, 4, '2024-06-08 19:51:18', 2.65),
(9, 4, '2024-06-10 08:16:08', 6.15),
(15, 4, '2024-06-10 22:36:11', 0.00),
(16, 2, '2024-06-16 07:53:33', 12.24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `id_pedidoproducto` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido_producto`
--

INSERT INTO `pedido_producto` (`id_pedidoproducto`, `id_pedido`, `id_producto`, `cantidad`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 3, 2, 1),
(4, 4, 1, 1),
(5, 5, 2, 1),
(6, 8, 1, 1),
(7, 8, 2, 1),
(8, 9, 1, 2),
(9, 9, 5, 1),
(20, 16, 4, 1),
(21, 16, 1, 6),
(22, 16, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id_producto` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `SUPERMARKET` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `IMG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Id_producto`, `Name`, `SUPERMARKET`, `CATEGORY`, `PRICE`, `IMG`) VALUES
(1, 'Cuchillos de plástico Bosque Verde reutilizables', 'mercadona.es', 'limpieza_y_hogar|menaje_y_conservacion_de_alimentos', 1.55, 'https://prod-mercadona.imgix.net/images/72df812725f6b9a373cb988320aeef8f.jpg?fit=crop&h=600&w=600'),
(2, 'Champiñón entero Hacendado', 'mercadona.es', 'conservas_caldos_y_cremas|conservas_de_verdura_y_frutas', 1.10, 'https://prod-mercadona.imgix.net/images/dcd3abae66e2eb748e8c74bc24af6666.jpg?fit=crop&h=600&w=600'),
(4, 'Champiñón Portobello', 'mercadona.es', 'fruta_y_verdura|verdura', 1.84, 'https://prod-mercadona.imgix.net/images/a5c4f663d14eeee08fbb718a9eb245ad.jpg?fit=crop&h=600&w=600'),
(5, 'Café molido Colombia Hacendado', 'mercadona.es', 'cacao_cafe_e_infusiones|cafe_molido_y_en_grano', 3.05, 'https://prod-mercadona.imgix.net/images/55a865231df97b1e9f7ff8ec7701cb8d.jpg?fit=crop&h=600&w=600'),
(6, 'Vino tinto D.O Rioja El Coto crianza', 'mercadona.es', 'bodega|vino_tinto', 6.30, 'https://prod-mercadona.imgix.net/images/9a881adcf524cfefef4ff0d8b8444a76.jpg?fit=crop&h=600&w=600'),
(7, 'Barquillos rellenos sabor nata Hacendado', 'mercadona.es', 'cereales_y_galletas|galletas', 1.00, 'https://prod-mercadona.imgix.net/images/76dd6001d1e674a7c6cac93ba9d2dd09.jpg?fit=crop&h=600&w=600'),
(8, 'Comida perro adulto Supreme Compy salmón fresco con frutas y verduras', 'mercadona.es', 'mascotas|perro', 23.50, 'https://prod-mercadona.imgix.net/images/06855deba17638e02f3d89bbb8d01897.jpg?fit=crop&h=600&w=600'),
(9, 'Cilantro', 'mercadona.es', 'fruta_y_verdura|verdura', 1.25, 'https://prod-mercadona.imgix.net/images/3ed0e8e4b12dd87825ca4b1b9fc788f1.jpg?fit=crop&h=600&w=600'),
(10, 'Recambio crema facial día Textura Rica Regen Skin Deliplus', 'mercadona.es', 'cuidado_facial_y_corporal|cuidado_e_higiene_facial', 4.00, 'https://prod-mercadona.imgix.net/images/1b4bd3c2b85fad8f9d6252c8112a68f9.jpg?fit=crop&h=600&w=600'),
(11, 'Lubina limpia con cabeza', 'mercadona.es', 'marisco_y_pescado|pescado_fresco', 3.91, 'https://prod-mercadona.imgix.net/images/7b996b05f032204332216f5e6a72b129.jpg?fit=crop&h=600&w=600'),
(12, 'Laca de uñas alto brillo Deliplus 39 dulce fresa', 'mercadona.es', 'cuidado_facial_y_corporal|manicura_y_pedicura', 2.50, 'https://prod-mercadona.imgix.net/images/de09f5097e70c3d2ae6391af3adda8dd.jpg?fit=crop&h=600&w=600'),
(13, 'Fideo grueso Hacendado', 'mercadona.es', 'arroz_legumbres_y_pasta|pasta_y_fideos', 0.76, 'https://prod-mercadona.imgix.net/images/0778f8e6272f1c743d1da88f16c4d978.jpg?fit=crop&h=600&w=600'),
(14, 'Crema de queso Camembert Hacendado', 'mercadona.es', 'charcuteria_y_quesos|queso_untable_y_fresco', 1.59, 'https://prod-mercadona.imgix.net/images/fa2ce3e7d22cafa3bbd18fb348a9720d.jpg?fit=crop&h=600&w=600'),
(15, 'Papilla fresa y plátano +8 meses Hacendado', 'mercadona.es', 'bebe|alimentacion_infantil', 0.90, 'https://prod-mercadona.imgix.net/images/fd3ea0f807df7a09737056a49e579a43.jpg?fit=crop&h=600&w=600'),
(16, 'Lejía perfumada con detergente Bosque Verde Limón', 'mercadona.es', 'limpieza_y_hogar|lejia_y_liquidos_fuertes', 1.15, 'https://prod-mercadona.imgix.net/images/400f7fe961e1c244ab06cd5e01dc9bfb.jpg?fit=crop&h=600&w=600'),
(18, 'Tabulé oriental Hacendado', 'mercadona.es', 'pizzas_y_platos_preparados|platos_preparados_frios', 1.50, 'https://prod-mercadona.imgix.net/images/3b83eae273ff65c9b4eab0b2e2b254fc.jpg?fit=crop&h=600&w=600'),
(19, 'Galletas María choco Hacendado', 'mercadona.es', 'cereales_y_galletas|galletas', 1.00, 'https://prod-mercadona.imgix.net/images/e9cb96fbe07dd431f5868c91b8cdd03e.jpg?fit=crop&h=600&w=600'),
(20, 'Picatostes fritos con ajo Hacendado', 'mercadona.es', 'panaderia_y_pasteleria|picos_rosquilletas_y_picatostes', 0.85, 'https://prod-mercadona.imgix.net/images/fe29fab041403bfa8f82b051dca1b1ad.jpg?fit=crop&h=600&w=600'),
(21, 'Pizza romana Hacendado con champiñones salteados', 'mercadona.es', 'pizzas_y_platos_preparados|pizzas', 2.90, 'https://prod-mercadona.imgix.net/images/5d6692ff1330564d25b882d8fdc9b84a.jpg?fit=crop&h=600&w=600'),
(22, 'Espuma cabello Xtra Forte Deliplus fijación 4', 'mercadona.es', 'cuidado_del_cabello|fijacion_cabello', 1.75, 'https://prod-mercadona.imgix.net/images/773a7a7e77fe8e642a6ba81b0d4bcbfa.jpg?fit=crop&h=600&w=600'),
(23, 'Papilla cuatro frutas con avena +8 meses Hacendado', 'mercadona.es', 'bebe|alimentacion_infantil', 2.80, 'https://prod-mercadona.imgix.net/images/0f4d5a383304167962fd60dc27a868b8.jpg?fit=crop&h=600&w=600'),
(24, 'Champiñón laminado limpio', 'mercadona.es', 'fruta_y_verdura|verdura', 1.81, 'https://prod-mercadona.imgix.net/images/54ff851ca2c2df5bd4d76ef38b1b1aeb.jpg?fit=crop&h=600&w=600'),
(25, 'Papel higiénico húmedo WC Bosque Verde', 'mercadona.es', 'cuidado_facial_y_corporal|cuidado_corporal', 0.80, 'https://prod-mercadona.imgix.net/images/286f24c12adab78274a9cb5cca4f1278.jpg?fit=crop&h=600&w=600'),
(26, 'Eau de parfum hombre Borealia Shine', 'mercadona.es', 'cuidado_facial_y_corporal|perfume_y_colonia', 11.00, 'https://prod-mercadona.imgix.net/images/2df438295abbe318df06eb25bfccd6fd.jpg?fit=crop&h=600&w=600'),
(27, 'Agua de peinado cabello Aqua Styling Deliplus', 'mercadona.es', 'cuidado_del_cabello|fijacion_cabello', 2.10, 'https://prod-mercadona.imgix.net/images/843017be15589ed02182270fe2cceeec.jpg?fit=crop&h=600&w=600'),
(28, 'Enjuague bucal Total Action Deliplus', 'mercadona.es', 'cuidado_facial_y_corporal|higiene_bucal', 1.35, 'https://prod-mercadona.imgix.net/images/75e399a5b01823fb7ef6ef242f167034.jpg?fit=crop&h=600&w=600'),
(29, 'Callos a la madrileña Hacendado', 'mercadona.es', 'pizzas_y_platos_preparados|platos_preparados_calientes', 2.60, 'https://prod-mercadona.imgix.net/images/51212c7d966e91e80bf142ed388ecbb0.jpg?fit=crop&h=600&w=600'),
(30, 'Coloración permanente 8 1/2.1 rubio claro ceniza Deliplus', 'mercadona.es', 'cuidado_del_cabello|coloracion_cabello', 3.90, 'https://prod-mercadona.imgix.net/images/e1d10f35a08d14b3669abd9173668973.jpg?fit=crop&h=600&w=600'),
(31, 'Mini tostadas de trigo Minigrill extra finas', 'mercadona.es', 'panaderia_y_pasteleria|pan_tostado_y_rallado', 1.40, 'https://prod-mercadona.imgix.net/images/ff7287c7a29b469273fa714647cae114.jpg?fit=crop&h=600&w=600'),
(32, 'Queso Grana Padano Hacendado en escamas', 'mercadona.es', 'charcuteria_y_quesos|queso_curado_semicurado_y_tierno', 2.60, 'https://prod-mercadona.imgix.net/images/c91798065a7ad0354f5ae9e86c710abd.jpg?fit=crop&h=600&w=600'),
(33, 'Longaniza roja fresca', 'mercadona.es', 'carne|embutido', 1.84, 'https://prod-mercadona.imgix.net/images/fe28c35e96176e497ea0f1be20e743a2.jpg?fit=crop&h=600&w=600'),
(34, 'Bases de pizza sin gluten sin lactosa Hacendado ultracongeladas', 'mercadona.es', 'congelados|pizzas', 4.00, 'https://prod-mercadona.imgix.net/images/e9be19632cc72cc19df993fbfa48ba45.jpg?fit=crop&h=600&w=600'),
(35, 'Pizza atún y bacón Hacendado', 'mercadona.es', 'pizzas_y_platos_preparados|pizzas', 2.90, 'https://prod-mercadona.imgix.net/images/1af2872efbfc5c15598da522f19e15ea.jpg?fit=crop&h=600&w=600'),
(36, 'Café molido mezcla Marcilla crème express', 'mercadona.es', 'cacao_cafe_e_infusiones|cafe_molido_y_en_grano', 4.00, 'https://prod-mercadona.imgix.net/images/5ac9c1a9199409884d954885bc15a4a4.jpg?fit=crop&h=600&w=600'),
(37, 'Cereales solubles con achicoria Hacendado', 'mercadona.es', 'cacao_cafe_e_infusiones|cafe_soluble_y_otras_bebidas', 2.05, 'https://prod-mercadona.imgix.net/images/48f4c7f437b2192d071bd6336ea1e7f9.jpg?fit=crop&h=600&w=600'),
(38, 'Eau de parfum mujer Ella', 'mercadona.es', 'cuidado_facial_y_corporal|perfume_y_colonia', 9.00, 'https://prod-mercadona.imgix.net/images/42610b843d73d89be16ae54b4fcad919.jpg?fit=crop&h=600&w=600'),
(39, 'Sérum oil Curl Perfect Deliplus cabello rizado', 'mercadona.es', 'cuidado_del_cabello|acondicionador_y_mascarilla', 4.00, 'https://prod-mercadona.imgix.net/images/fc95936f4a45533daf431eb177e93735.jpg?fit=crop&h=600&w=600'),
(40, 'Toalla turbante seca pelo microfibra Deliplus', 'mercadona.es', 'cuidado_facial_y_corporal|gel_y_jabon_de_manos', 2.70, 'https://prod-mercadona.imgix.net/images/d8ef8abcb0279c3a048ea78dda00e477.jpg?fit=crop&h=600&w=600'),
(41, 'Pimiento rojo y verde Hacendado ultracongelado', 'mercadona.es', 'congelados|verdura', 1.06, 'https://prod-mercadona.imgix.net/images/44c91559a0dd4bf67cfcd496ca9d81e3.jpg?fit=crop&h=600&w=600'),
(42, 'Colorete compacto Blush Luminoso Deliplus 02 coral', 'mercadona.es', 'maquillaje|colorete_y_polvos', 5.00, 'https://prod-mercadona.imgix.net/images/de8e2e67c81c0320ba5bf5f2e164dddf.jpg?fit=crop&h=600&w=600'),
(43, 'Comida perro adulto Supreme Compy salmón fresco con frutas y verduras', 'mercadona.es', 'mascotas|perro', 5.30, 'https://prod-mercadona.imgix.net/images/1b14358f5b1ee191fe7720a2e2db971e.jpg?fit=crop&h=600&w=600'),
(44, 'Butifarra fresca', 'mercadona.es', 'carne|embutido', 3.39, 'https://prod-mercadona.imgix.net/images/3ca3330c9c93b134535bc73e948341ba.jpg?fit=crop&h=600&w=600'),
(45, 'Galletas María Integral Hacendado', 'mercadona.es', 'cereales_y_galletas|galletas', 1.70, 'https://prod-mercadona.imgix.net/images/7a10f865153c5691732b55b31fb7c023.jpg?fit=crop&h=600&w=600'),
(46, 'Chocolate con leche fundir Hacendado', 'mercadona.es', 'azucar_caramelos_y_chocolate|chocolate', 1.50, 'https://prod-mercadona.imgix.net/images/5230162330fda1f7d9e46152ba7a087d.jpg?fit=crop&h=600&w=600'),
(47, 'Caramelos limón mentol Respiral Halls', 'mercadona.es', 'azucar_caramelos_y_chocolate|chicles_y_caramelos', 1.75, 'https://prod-mercadona.imgix.net/images/62066c26147d22be240e0d93d0d6487d.jpg?fit=crop&h=600&w=600'),
(48, 'Vino blanco Don Simón chardonnay airén', 'mercadona.es', 'bodega|vino_blanco', 1.50, 'https://prod-mercadona.imgix.net/images/87cb15d34069fc58e686494d5815d707.jpg?fit=crop&h=600&w=600'),
(49, 'Tartaletes con relleno de fresa Hacendado', 'mercadona.es', 'cereales_y_galletas|galletas', 1.15, 'https://prod-mercadona.imgix.net/images/ac82b496a41f9ae75007d5cb2d1153db.jpg?fit=crop&h=600&w=600'),
(50, 'Tortas de aceite Inés Rosales', 'mercadona.es', 'panaderia_y_pasteleria|bolleria_envasada', 1.79, 'https://prod-mercadona.imgix.net/images/bcb8a5cfcad3ae65cbb352ddf3ecb3f4.jpg?fit=crop&h=600&w=600'),
(51, 'Refresco Coca-Cola Zero Zero', 'mercadona.es', 'agua_y_refrescos|refresco_de_cola', 4.00, 'https://prod-mercadona.imgix.net/images/1c9ab31d22ec94753a0aedc6753211ea.jpg?fit=crop&h=600&w=600'),
(52, 'Aritos de surimi a la romana Pescanova ultracongelados', 'mercadona.es', 'congelados|rebozados', 2.45, 'https://prod-mercadona.imgix.net/images/6c949512655762d49a337801fa9d406f.jpg?fit=crop&h=600&w=600'),
(53, 'Quinoa Hacendado', 'mercadona.es', 'arroz_legumbres_y_pasta|arroz', 2.40, 'https://prod-mercadona.imgix.net/images/592d283cf4632d143619314f392edc15.jpg?fit=crop&h=600&w=600'),
(54, 'Berlina al cacao', 'mercadona.es', 'panaderia_y_pasteleria|bolleria_de_horno', 1.35, 'https://prod-mercadona.imgix.net/images/59ea911cff1c1c0868030758825cc63b.jpg?fit=crop&h=600&w=600'),
(55, 'CARRETILLA espárragos blancos extra 8/12 lata 150 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 3.05, 'https://www.dia.es/product_images/1252/1252_ISO_0_ES.jpg?imwidth=392'),
(56, 'Filetes de lubina', 'mercadona.es', 'marisco_y_pescado|pescado_en_bandeja', 8.92, 'https://prod-mercadona.imgix.net/images/f287a6d4abe955043e1a598905faf084.jpg?fit=crop&h=600&w=600'),
(57, 'Bolsas Congelación grandes Bosque Verde', 'mercadona.es', 'limpieza_y_hogar|menaje_y_conservacion_de_alimentos', 1.00, 'https://prod-mercadona.imgix.net/images/f6a9cb2bd5ef70eadfa5f4569b27d523.jpg?fit=crop&h=600&w=600'),
(58, 'DIA ICEBERG chicle sabor sandía sin azúcar bolsa 45 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 0.99, 'https://www.dia.es/product_images/267968/267968_ISO_0_ES.jpg?imwidth=392'),
(59, 'Maquillaje fluido Long Lasting Deliplus 04 beige dorado', 'mercadona.es', 'maquillaje|bases_de_maquillaje_y_corrector', 5.50, 'https://prod-mercadona.imgix.net/images/3e6c0f9e2f440afc3e3bed27589e6cfb.jpg?fit=crop&h=600&w=600'),
(60, 'Leche entera Asturiana', 'mercadona.es', 'huevos_leche_y_mantequilla|leche_y_bebidas_vegetales', 10.68, 'https://prod-mercadona.imgix.net/images/026633e72a032de1619222bca6bc3c75.jpg?fit=crop&h=600&w=600'),
(61, 'Arroz basmati aromático Hacendado', 'mercadona.es', 'arroz_legumbres_y_pasta|arroz', 2.64, 'https://prod-mercadona.imgix.net/images/d25c062f26c257d9ca54b5fc219c2b62.jpg?fit=crop&h=600&w=600'),
(62, 'DIA estropajo salvauñas fibra blanca para baño paquete 2 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 1.15, 'https://www.dia.es/product_images/6114/6114_ISO_0_ES.jpg?imwidth=392'),
(63, 'Brócoli Hacendado ultracongelado', 'mercadona.es', 'congelados|verdura', 1.88, 'https://prod-mercadona.imgix.net/images/80c2a7b63c3d5981a3561925baa7c4ab.jpg?fit=crop&h=600&w=600'),
(64, 'Tinto de verano sabor limón La Casera', 'mercadona.es', 'bodega|tinto_de_verano_y_sangria', 2.25, 'https://prod-mercadona.imgix.net/images/1976020dd9de515d27b764ee69974011.jpg?fit=crop&h=600&w=600'),
(65, 'GALLINA BLANCA salsa pimienta verde sobre 50 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 1.70, 'https://www.dia.es/product_images/22568/22568_ISO_0_ES.jpg?imwidth=392'),
(66, 'Aftersun gel con aloe vera Deliplus', 'mercadona.es', 'cuidado_facial_y_corporal|protector_solar_y_aftersun', 2.40, 'https://prod-mercadona.imgix.net/images/fbd8bf4ef8c072489e3bb63d70b6d13d.jpg?fit=crop&h=600&w=600'),
(67, 'Leche de continuación en polvo 2 Nidina Nestlé', 'mercadona.es', 'bebe|alimentacion_infantil', 19.95, 'https://prod-mercadona.imgix.net/images/0fab7ce5d846bd26e0b6a6d0848374bf.jpg?fit=crop&h=600&w=600'),
(68, 'Sardinillas en aceite de oliva Hacendado', 'mercadona.es', 'conservas_caldos_y_cremas|atun_y_otras_conservas_de_pescado', 1.85, 'https://prod-mercadona.imgix.net/images/265e9d11fd8b077ebaec7b43e6da6a0b.jpg?fit=crop&h=600&w=600'),
(69, 'DESTAPA LA HUERTA pimientos del piquillo rojos y verdes en tiras frasco 270 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.85, 'https://www.dia.es/product_images/283026/283026_ISO_0_ES.jpg?imwidth=392'),
(70, 'Mascarilla Ultra Platinum Deliplus cabello gris, rubio y decolorado', 'mercadona.es', 'cuidado_del_cabello|acondicionador_y_mascarilla', 3.95, 'https://prod-mercadona.imgix.net/images/0cb8c66daa9ecdd66daef5f33d7585cf.jpg?fit=crop&h=600&w=600'),
(71, 'Bebida de pomelo Hacendado sin azúcares añadidos', 'mercadona.es', 'zumos|tomate_y_otros_sabores', 1.25, 'https://prod-mercadona.imgix.net/images/5d8b391281f23e3e1c760d595414923e.jpg?fit=crop&h=600&w=600'),
(72, 'MISTOL lavavajillas mano ultra plus botella 650 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 2.49, 'https://www.dia.es/product_images/290995/290995_ISO_0_ES.jpg?imwidth=392'),
(73, 'Rosquillas al cacao', 'mercadona.es', 'panaderia_y_pasteleria|bolleria_de_horno', 1.40, 'https://prod-mercadona.imgix.net/images/0db63e08895ab257ed20410b1845510b.jpg?fit=crop&h=600&w=600'),
(74, 'COLGATE cepillo dental 360 º max white medio blíster 1 ud', 'dia.es', 'cuidado_personal|cuidado_bucal', 4.29, 'https://www.dia.es/product_images/210590/210590_ISO_0_ES.jpg?imwidth=392'),
(75, 'Colgador WC Maxigotas Limón Bosque Verde', 'mercadona.es', 'limpieza_y_hogar|limpieza_bano_y_wc', 1.30, 'https://prod-mercadona.imgix.net/images/7a95c47f66c04f2a5dc6c0d40c59f135.jpg?fit=crop&h=600&w=600'),
(76, 'Bitter Kas sin alcohol', 'mercadona.es', 'agua_y_refrescos|tonica_y_bitter', 0.99, 'https://prod-mercadona.imgix.net/images/5f883d252de97b6e219ba6b8c9a5b3e1.jpg?fit=crop&h=600&w=600'),
(77, 'DIA PLANETA BEBE pañales 8-15 kgs talla 4 paquete 88 uds', 'dia.es', 'bebe|panales', 14.75, 'https://www.dia.es/product_images/268408/268408_ISO_0_ES.jpg?imwidth=392'),
(78, 'Cerveza Heineken', 'mercadona.es', 'bodega|cerveza', 0.82, 'https://prod-mercadona.imgix.net/images/4f1698ff2acaafefb7f4e8977cf72591.jpg?fit=crop&h=600&w=600'),
(79, 'Media piña', 'mercadona.es', 'fruta_y_verdura|fruta', 1.86, 'https://prod-mercadona.imgix.net/images/a4ba7837d43abf0cc90574f3156f1e69.jpg?fit=crop&h=600&w=600'),
(80, 'PEPSI zero azúcar sabor lima lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.85, 'https://www.dia.es/product_images/283126/283126_ISO_0_ES.jpg?imwidth=392'),
(81, 'Coloración permanente 4 castaño medio Deliplus', 'mercadona.es', 'cuidado_del_cabello|coloracion_cabello', 3.90, 'https://prod-mercadona.imgix.net/images/b006a6aee26898f6617264a62d8e1a88.jpg?fit=crop&h=600&w=600'),
(82, 'SOLAN DE CABRAS agua mineral natural botella 5 lt', 'dia.es', 'bebidas|aguas', 2.49, 'https://www.dia.es/product_images/63295/63295_ISO_0_ES.jpg?imwidth=392'),
(83, 'Chocolate líquido a la taza Hacendado', 'mercadona.es', 'cacao_cafe_e_infusiones|cacao_soluble_y_chocolate_a_la_taza', 1.90, 'https://prod-mercadona.imgix.net/images/aabe90ce29b38792865e4d04ee4bbde2.jpg?fit=crop&h=600&w=600'),
(84, 'Merluza a rodajas', 'mercadona.es', 'marisco_y_pescado|pescado_fresco', 13.43, 'https://prod-mercadona.imgix.net/images/f9915fd0e276f93caa4eb284fbbcbc34.jpg?fit=crop&h=600&w=600'),
(85, 'NB PALMOLIVE gel de ducha leche y miel bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.19, 'https://www.dia.es/product_images/198131/198131_ISO_0_ES.jpg?imwidth=392'),
(86, 'Champú infantil Kids 3 en 1 Deliplus', 'mercadona.es', 'cuidado_del_cabello|champu', 1.70, 'https://prod-mercadona.imgix.net/images/daa4bb14dd66cce9899496997f600400.jpg?fit=crop&h=600&w=600'),
(87, 'Atún claro en aceite de oliva Hacendado', 'mercadona.es', 'conservas_caldos_y_cremas|atun_y_otras_conservas_de_pescado', 3.75, 'https://prod-mercadona.imgix.net/images/996e915ce7b13e9a61d63bb6088df22c.jpg?fit=crop&h=600&w=600'),
(88, 'Torreznos sabor barbacoa Hacendado', 'mercadona.es', 'aperitivos|patatas_fritas_y_snacks', 1.25, 'https://prod-mercadona.imgix.net/images/95083add1b82058f3ba020c26e1bc256.jpg?fit=crop&h=600&w=600'),
(89, 'HORNIMANS té rojo con anís y un toque de ciruela estuche 20 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 2.95, 'https://www.dia.es/product_images/41701/41701_ISO_0_ES.jpg?imwidth=392'),
(90, 'Champú Natural Deliplus todo tipo de cabello', 'mercadona.es', 'cuidado_del_cabello|champu', 2.05, 'https://prod-mercadona.imgix.net/images/e0ad86a39e5c601800fa370c8c092330.jpg?fit=crop&h=600&w=600'),
(91, 'Barritas de fruta y miel para canarios Natura', 'mercadona.es', 'mascotas|otros', 1.85, 'https://prod-mercadona.imgix.net/images/0e3cc867a918d2c48fe519804b5413af.jpg?fit=crop&h=600&w=600'),
(92, 'DIA PATATAS UNIDAS patatas gajo bolsa 750 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 1.99, 'https://www.dia.es/product_images/262685/262685_ISO_0_ES.jpg?imwidth=392'),
(93, 'Copos de avena Brüggen', 'mercadona.es', 'cereales_y_galletas|cereales', 1.00, 'https://prod-mercadona.imgix.net/images/1fb7009a927dd6298259e5d75dd3d98c.jpg?fit=crop&h=600&w=600'),
(94, 'Fideos orientales Yakisoba sabor soja Hacendado', 'mercadona.es', 'arroz_legumbres_y_pasta|pasta_y_fideos', 1.30, 'https://prod-mercadona.imgix.net/images/28f4ae33a3283adac91dfd56813e3094.jpg?fit=crop&h=600&w=600'),
(95, 'PATO gel limpiador wc 3 en 1 océano botella 750 ml', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|bano', 2.99, 'https://www.dia.es/product_images/1856/1856_ISO_0_ES.jpg?imwidth=392'),
(96, 'Refresco lima limón Hacendado zero azúcar fresh gas', 'mercadona.es', 'agua_y_refrescos|refresco_de_naranja_y_de_limon', 0.87, 'https://prod-mercadona.imgix.net/images/632489729744d443c9a5aaaaf8b8a645.jpg?fit=crop&h=600&w=600'),
(97, 'Aguacates', 'mercadona.es', 'fruta_y_verdura|fruta', 2.41, 'https://prod-mercadona.imgix.net/images/7d8aa2c77ec2f1adcd38326afd410e31.jpg?fit=crop&h=600&w=600'),
(98, 'LA GERGALEÑA tomate natural rallado tarrina 200 gr', 'dia.es', 'frescos|verduras_y_hortalizas|tomates_pimientos_y_pepinos', 1.29, 'https://www.dia.es/product_images/278354/278354_ISO_0_ES.jpg?imwidth=392'),
(99, 'Bebida láctea de fresa Cuidacol 0% azúcares añadidos', 'mercadona.es', 'postres_y_yogures|yogures_liquidos', 2.70, 'https://prod-mercadona.imgix.net/images/2e3baee6dc65fb2ca478a3896339a5e2.jpg?fit=crop&h=600&w=600'),
(100, 'Sombra de ojos Long Lasting Deliplus 05', 'mercadona.es', 'maquillaje|ojos', 4.25, 'https://prod-mercadona.imgix.net/images/f817de484bab9eb72e585c7abed3fa49.jpg?fit=crop&h=600&w=600'),
(101, 'LA ESPAÑOLA aceite de oliva virgen extra botella 500 ml', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 4.66, 'https://www.dia.es/product_images/280371/280371_ISO_0_ES.jpg?imwidth=392'),
(102, 'Preparado lácteo con cereales crecimiento Hacendado +1 año', 'mercadona.es', 'bebe|alimentacion_infantil', 1.45, 'https://prod-mercadona.imgix.net/images/d20912c3ad645e1e9590a692d4ddce51.jpg?fit=crop&h=600&w=600'),
(103, 'DIA MARI MARINERA caprichos a la romana bolsa 400 gr', 'dia.es', 'congelados|pescado_y_marisco', 1.89, 'https://www.dia.es/product_images/41097/41097_ISO_0_ES.jpg?imwidth=392'),
(104, 'Salteado de patata y salchicha Hacendado ultracongelado', 'mercadona.es', 'congelados|verdura', 1.90, 'https://prod-mercadona.imgix.net/images/07008d7c325a3749185e5463e40e1064.jpg?fit=crop&h=600&w=600'),
(105, 'CAMPO CURERO vino tinto roble DO Toro botella 75 cl', 'dia.es', 'bodega|vino|tinto', 2.99, 'https://www.dia.es/product_images/263722/263722_ISO_0_ES.jpg?imwidth=392'),
(106, 'Mascarilla facial peeling de alga negra Montagne Jeunesse', 'mercadona.es', 'cuidado_facial_y_corporal|cuidado_e_higiene_facial', 1.75, 'https://prod-mercadona.imgix.net/images/d910a72535df35cd9ce73201931e7508.jpg?fit=crop&h=600&w=600'),
(107, 'Golosinas Moras Hacendado', 'mercadona.es', 'azucar_caramelos_y_chocolate|golosinas', 1.10, 'https://prod-mercadona.imgix.net/images/4ad0745ed342d38512e75011499510a4.jpg?fit=crop&h=600&w=600'),
(108, 'NESTEA refresco de té al limón sin azúcar lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.80, 'https://www.dia.es/product_images/12946/12946_ISO_0_ES.jpg?imwidth=392'),
(109, 'Secreto de cerdo ibérico', 'mercadona.es', 'carne|cerdo', 5.93, 'https://prod-mercadona.imgix.net/images/6c30296d4ad8dc6e211eafb26ae92e2a.jpg?fit=crop&h=600&w=600'),
(110, 'LUXIDERMIA calcetín exfoliante para pies envase 2 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|cuidado_de_manos_y_pies', 6.99, 'https://www.dia.es/product_images/291486/291486_ISO_0_ES.jpg?imwidth=392'),
(111, 'DIA IMAQE discos de algodón ovalados bolsa 70 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 1.25, 'https://www.dia.es/product_images/283888/283888_ISO_0_ES.jpg?imwidth=392'),
(112, 'CARMENCITA orégano frasco 7 gr', 'dia.es', 'despensa|sal_y_especias', 1.95, 'https://www.dia.es/product_images/188001/188001_ISO_0_ES.jpg?imwidth=392'),
(113, 'ASTURIANA leche desnatada 0% M.G. sin lactosa envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.19, 'https://www.dia.es/product_images/169355/169355_ISO_0_ES.jpg?imwidth=392'),
(114, 'Sopa juliana deshidratada bandeja 100 gr', 'dia.es', 'frescos|verduras_y_hortalizas|verduras_y_ensaladas_preparadas', 2.36, 'https://www.dia.es/product_images/50310/50310_ISO_0_ES.jpg?imwidth=392'),
(115, 'EL PAVO cannelloni clásico caja 125 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.25, 'https://www.dia.es/product_images/45244/45244_ISO_0_ES.jpg?imwidth=392'),
(116, 'GOURMET mousse para gatos de salmón pack 4 x 57 gr', 'dia.es', 'mascotas|gatos', 3.59, 'https://www.dia.es/product_images/280375/280375_ISO_0_ES.jpg?imwidth=392'),
(117, 'ANETO caldo de pollo bajo en sal envase 1 lt', 'dia.es', 'despensa|sopas|caldos', 3.99, 'https://www.dia.es/product_images/102735/102735_ISO_0_ES.jpg?imwidth=392'),
(118, 'DIA CAPRICHOSO natillas de chocolate con bizcocho pack 4 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.65, 'https://www.dia.es/product_images/219104/219104_ISO_0_ES.jpg?imwidth=392'),
(119, 'ELPOZO imperial con pavo pieza 230 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 3.45, 'https://www.dia.es/product_images/42200/42200_ISO_0_ES.jpg?imwidth=392'),
(120, 'DIA AL PUNTO quinoa con verduras bolsa 400 gr', 'dia.es', 'congelados|precocinados', 2.29, 'https://www.dia.es/product_images/267140/267140_ISO_0_ES.jpg?imwidth=392'),
(121, 'VALOR chocolate negro 70% con galleta belga tableta 200 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 2.79, 'https://www.dia.es/product_images/282312/282312_ISO_0_ES.jpg?imwidth=392'),
(122, 'PAVOFRÍO fiambre de pechuga de pavo en lonchas sobre 70 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.00, 'https://www.dia.es/product_images/125952/125952_ISO_0_ES.jpg?imwidth=392'),
(123, 'COLACAO cacao soluble instantáneo turbo bote 750 gr', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 6.19, 'https://www.dia.es/product_images/204563/204563_ISO_0_ES.jpg?imwidth=392'),
(124, 'KAS bitter lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.89, 'https://www.dia.es/product_images/60725/60725_ISO_0_ES.jpg?imwidth=392'),
(125, 'ROYAL gelatina light sabor fresa 0% azucares caja 31 gr', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 2.80, 'https://www.dia.es/product_images/205482/205482_ISO_0_ES.jpg?imwidth=392'),
(126, 'CONGELADOS DE NAVARRA arándanos bolsa 300 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 2.11, 'https://www.dia.es/product_images/290109/290109_ISO_0_ES.jpg?imwidth=392'),
(127, 'NATIVA leche crecimiento con galleta María +12 meses envase 1 lt', 'dia.es', 'bebe|leche_para_bebes', 1.99, 'https://www.dia.es/product_images/182329/182329_ISO_0_ES.jpg?imwidth=392'),
(128, 'DANI ajo y perejil frasco 150 gr', 'dia.es', 'despensa|sal_y_especias', 4.05, 'https://www.dia.es/product_images/263633/263633_ISO_0_ES.jpg?imwidth=392'),
(129, 'ELPOZO pechuga de pavo en finas lonchas envase 115 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.50, 'https://www.dia.es/product_images/170157/170157_ISO_0_ES.jpg?imwidth=392'),
(130, 'RIO SECO vino blanco sauvignon DO Rueda botella 75 cl', 'dia.es', 'bodega|vino|blanco', 3.49, 'https://www.dia.es/product_images/265816/265816_ISO_0_ES.jpg?imwidth=392'),
(131, 'DIA CAFETERÍA café soluble crema frasco 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 2.65, 'https://www.dia.es/product_images/203923/203923_ISO_0_ES.jpg?imwidth=392'),
(132, 'AUSONIA compresas noche con alas más larga bolsa 9 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 2.26, 'https://www.dia.es/product_images/131303/131303_ISO_0_ES.jpg?imwidth=392'),
(133, 'J&B whisky botella 70 cl', 'dia.es', 'bodega|alcoholes|whisky', 12.50, 'https://www.dia.es/product_images/947/947_ISO_0_ES.jpg?imwidth=392'),
(134, 'DIA harina de fuerza paquete 1 Kg', 'dia.es', 'despensa|pastas_harinas_y_masas|harinas_y_levaduras', 0.92, 'https://www.dia.es/product_images/207695/207695_ISO_0_ES.jpg?imwidth=392'),
(135, 'DIA GALLETECA galletas mini cacao rellena de nata bolsa 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 0.75, 'https://www.dia.es/product_images/236662/236662_ISO_0_ES.jpg?imwidth=392'),
(136, 'LA MASIA aceite de girasol botella 5 lt', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 13.35, 'https://www.dia.es/product_images/282336/282336_ISO_0_ES.jpg?imwidth=392'),
(137, 'COLGATE pasta dentífrica blanqueante tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 2.59, 'https://www.dia.es/product_images/24066/24066_ISO_0_ES.jpg?imwidth=392'),
(138, 'SOLANO caramelos duros tradicionales bolsa 99 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.99, 'https://www.dia.es/product_images/238516/238516_ISO_0_ES.jpg?imwidth=392'),
(139, 'FILMFIX film transparente 80 m', 'dia.es', 'cuidado_del_hogar|conservacion_de_alimentos', 1.65, 'https://www.dia.es/product_images/280132/280132_ISO_0_ES.jpg?imwidth=392'),
(140, 'L\'OREAL crema hidratante noche pieles maduras tarro 50ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 9.99, 'https://www.dia.es/product_images/152051/152051_ISO_0_ES.jpg?imwidth=392'),
(141, 'PIKOTAS caramelo de goma relleno sabor cereza bolsa 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.45, 'https://www.dia.es/product_images/271236/271236_ISO_0_ES.jpg?imwidth=392'),
(142, 'GULLON galleta ligera sin sal y sin azúcar paquete 200 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.39, 'https://www.dia.es/product_images/28696/28696_ISO_0_ES.jpg?imwidth=392'),
(143, 'DIA AL DIANTE macarrón integral paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.04, 'https://www.dia.es/product_images/277305/277305_ISO_0_ES.jpg?imwidth=392'),
(144, 'SAN MIGUEL cerveza radler con limón 0,0% alcohol lata 33 cl', 'dia.es', 'bebidas|cervezas|con_limon', 0.75, 'https://www.dia.es/product_images/125715/125715_ISO_0_ES.jpg?imwidth=392'),
(145, 'POM\'BEL smoothie con frutas del bosque envase 210 ml', 'dia.es', 'bebidas|zumos', 1.49, 'https://www.dia.es/product_images/283052/283052_ISO_0_ES.jpg?imwidth=392'),
(146, 'DIA MARI MARINERA atún claro en aceite de girasol pack 6 latas de 56 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 4.29, 'https://www.dia.es/product_images/262437/262437_ISO_0_ES.jpg?imwidth=392'),
(147, 'TRIDENT Oral b chicle grageas sabor hierbabuena paquete 10 uds', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.59, 'https://www.dia.es/product_images/262220/262220_ISO_0_ES.jpg?imwidth=392'),
(148, 'LA LECHERA leche condensada bote 450 gr', 'dia.es', 'despensa|lacteos_y_huevos|leche', 3.55, 'https://www.dia.es/product_images/41309/41309_ISO_0_ES.jpg?imwidth=392'),
(149, 'ARTIACH Dinosaurus huevos galletas caja 140 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.44, 'https://www.dia.es/product_images/207884/207884_ISO_0_ES.jpg?imwidth=392'),
(150, 'DIA IMAQE desmaquillante de ojos waterproof bote 125 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 2.05, 'https://www.dia.es/product_images/272023/272023_ISO_0_ES.jpg?imwidth=392'),
(151, 'GULLON galletas dibus sharkies cacao SIN GLUTEN caja 250 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.99, 'https://www.dia.es/product_images/221003/221003_ISO_0_ES.jpg?imwidth=392'),
(152, 'TRAPA chocolate negro intenso 70% con almendras tableta 175 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 2.29, 'https://www.dia.es/product_images/288258/288258_ISO_0_ES.jpg?imwidth=392'),
(153, 'DIA SUPER PACO detergente máquina líquido colonia botella 46 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 4.15, 'https://www.dia.es/product_images/274003/274003_ISO_0_ES.jpg?imwidth=392'),
(154, 'DIA NUESTRA ALACENA jamón cocido extra finas lonchas envase 2 x 225 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 3.39, 'https://www.dia.es/product_images/273957/273957_ISO_0_ES.jpg?imwidth=392'),
(155, 'MOURAMA vino tinto Mencia DO Monterrei botella 75 cl', 'dia.es', 'bodega|vino|tinto', 4.99, 'https://www.dia.es/product_images/272362/272362_ISO_0_ES.jpg?imwidth=392'),
(156, 'DIA SELECCIÓN MUNDIAL vinagre balsámico de módena botella 50 cl', 'dia.es', 'despensa|aceites_vinagres_y_alinos|vinagres_y_alinos', 2.20, 'https://www.dia.es/product_images/106144/106144_ISO_0_ES.jpg?imwidth=392'),
(157, 'MAYOR DE CASTILLA vino tinto botella 75 cl', 'dia.es', 'bodega|vino|tinto', 3.30, 'https://www.dia.es/product_images/239843/239843_ISO_0_ES.jpg?imwidth=392'),
(158, 'CASTILLO DE HARO vino rosado DO Rioja 75 cl', 'dia.es', 'bodega|vino|rosado', 2.29, 'https://www.dia.es/product_images/263401/263401_ISO_0_ES.jpg?imwidth=392'),
(159, 'PRIMA mostaza cero azúcar bote 265 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 2.99, 'https://www.dia.es/product_images/292519/292519_ISO_0_ES.jpg?imwidth=392'),
(160, 'BURNED BARREL whisky botella 70 cl', 'dia.es', 'bodega|alcoholes|whisky', 5.49, 'https://www.dia.es/product_images/164521/164521_ISO_0_ES.jpg?imwidth=392'),
(161, 'EL MOLINO DE DIA panecillos tostados paquete 225 gr', 'dia.es', 'despensa|pan|biscotes', 0.85, 'https://www.dia.es/product_images/277675/277675_ISO_0_ES.jpg?imwidth=392'),
(162, 'JOHNSON´S Baby talco dulces sueños para bebés bote 200 gr', 'dia.es', 'bebe|cuidado_del_bebe', 2.29, 'https://www.dia.es/product_images/153669/153669_ISO_0_ES.jpg?imwidth=392'),
(163, 'BAJOZ vino tinto DO Toro botella 75 cl', 'dia.es', 'bodega|vino|tinto', 4.65, 'https://www.dia.es/product_images/115330/115330_ISO_0_ES.jpg?imwidth=392'),
(164, 'NATUR DACSA harina multiusos SIN GLUTEN bolsa 1 kg', 'dia.es', 'despensa|pastas_harinas_y_masas|harinas_y_levaduras', 4.03, 'https://www.dia.es/product_images/288064/288064_ISO_0_ES.jpg?imwidth=392'),
(165, 'DIA sirope de fresa bote 295 gr', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 1.75, 'https://www.dia.es/product_images/161789/161789_ISO_0_ES.jpg?imwidth=392'),
(166, 'BABARIA desodorante para pies spray 150 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|cuidado_de_manos_y_pies', 2.75, 'https://www.dia.es/product_images/235166/235166_ISO_0_ES.jpg?imwidth=392'),
(167, 'DIADERMINE Lift+ FlashEffect cápsulas antiedad efecto inmediato envase 7 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 7.49, 'https://www.dia.es/product_images/152202/152202_ISO_0_ES.jpg?imwidth=392'),
(168, 'DIA ZUMOSFERA zumo de fresas 100% envase 1 lt', 'dia.es', 'bebidas|zumos', 1.99, 'https://www.dia.es/product_images/274802/274802_ISO_0_ES.jpg?imwidth=392'),
(169, 'DIA DELICIOUS mermelada de naranja amarga frasco 320 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 1.55, 'https://www.dia.es/product_images/213265/213265_ISO_0_ES.jpg?imwidth=392'),
(170, 'DIA zumo naranja 100% exprimido sin pulpa botella 1 lt', 'dia.es', 'bebidas|zumos', 1.49, 'https://www.dia.es/product_images/109413/109413_ISO_0_ES.jpg?imwidth=392'),
(171, 'LA FILO bizcocho soletilla paquete 300 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 1.89, 'https://www.dia.es/product_images/162616/162616_ISO_0_ES.jpg?imwidth=392'),
(172, '61 vermouth rojo tempranillo botella 75 cl', 'dia.es', 'bodega|alcoholes|vermouth', 6.99, 'https://www.dia.es/product_images/280263/280263_ISO_0_ES.jpg?imwidth=392'),
(173, 'LA RECETA huevos ecológicos categoría A clase M/L estuche 6 uds', 'dia.es', 'despensa|lacteos_y_huevos|huevos', 2.59, 'https://www.dia.es/product_images/274541/274541_ISO_0_ES.jpg?imwidth=392'),
(174, 'Mandarina hoja bolsa 1kg', 'dia.es', 'frescos|frutas|citricos', 2.49, 'https://www.dia.es/product_images/270377/270377_ISO_0_ES.jpg?imwidth=392'),
(175, 'DIA MARCELO CARAMELO golosinas lágrimas bolsa 250 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.75, 'https://www.dia.es/product_images/161766/161766_ISO_0_ES.jpg?imwidth=392'),
(176, 'DR OETKER pizza mía grande 4 quesos caja 400 gr', 'dia.es', 'congelados|pizzas_bases_y_masas', 5.79, 'https://www.dia.es/product_images/262267/262267_ISO_0_ES.jpg?imwidth=392'),
(177, 'BARILLA espagueti integral caja 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 2.40, 'https://www.dia.es/product_images/222057/222057_ISO_0_ES.jpg?imwidth=392'),
(178, 'VILEDA guantes multi latex sin polvo talla S/M caja 10 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 4.85, 'https://www.dia.es/product_images/5128/5128_ISO_0_ES.jpg?imwidth=392'),
(179, 'DIA HOLA COLA refresco de cola botella 2 lt', 'dia.es', 'bebidas|refrescos', 0.95, 'https://www.dia.es/product_images/10065/10065_ISO_0_ES.jpg?imwidth=392'),
(180, 'DIA VEGECAMPO aceitunas gazpacha frasco 410 gr', 'dia.es', 'despensa|aperitivos', 2.19, 'https://www.dia.es/product_images/275224/275224_ISO_0_ES.jpg?imwidth=392'),
(181, 'YBARRA coliflor natural frasco 400 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.79, 'https://www.dia.es/product_images/84354/84354_ISO_0_ES.jpg?imwidth=392'),
(182, 'DIA cerezas en almíbar frasco 160 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 1.95, 'https://www.dia.es/product_images/223959/223959_ISO_0_ES.jpg?imwidth=392'),
(183, 'ORTIZ pan tostado multicereales paquete 288 gr', 'dia.es', 'despensa|pan|biscotes', 2.59, 'https://www.dia.es/product_images/231242/231242_ISO_0_ES.jpg?imwidth=392'),
(184, 'DIA VEGECAMPO guisantes medianos lata 265 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 0.95, 'https://www.dia.es/product_images/265948/265948_ISO_0_ES.jpg?imwidth=392'),
(185, 'DIA barritas de cereales con manzana y albaricoque estuche 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 1.35, 'https://www.dia.es/product_images/43946/43946_ISO_0_ES.jpg?imwidth=392'),
(186, 'BONTE recambio maquinilla de afeitar 5 hojas hombre 4 uds', 'dia.es', 'cuidado_personal|afeitado', 5.09, 'https://www.dia.es/product_images/176405/176405_ISO_0_ES.jpg?imwidth=392'),
(187, 'DIA VEGECAMPO tomate frito pack 3 unidades 215 gr', 'dia.es', 'despensa|salsas|tomate', 1.30, 'https://www.dia.es/product_images/1221/1221_ISO_0_ES.jpg?imwidth=392'),
(188, 'EL MOLINO DE DIA sobaos pequeños bolsa 340 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 1.39, 'https://www.dia.es/product_images/220229/220229_ISO_0_ES.jpg?imwidth=392'),
(189, 'IROHA parches antiarrugas para el contorno de ojos sachet 2 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 2.99, 'https://www.dia.es/product_images/283006/283006_ISO_0_ES.jpg?imwidth=392'),
(190, 'DOLCE GUSTO café ristretto bonka 16 cápsulas caja 112 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 4.95, 'https://www.dia.es/product_images/168695/168695_ISO_0_ES.jpg?imwidth=392'),
(191, 'McCain patatas fritas forno julienne bolsa 600 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 3.29, 'https://www.dia.es/product_images/139989/139989_ISO_0_ES.jpg?imwidth=392'),
(192, 'COLACAO cacao soluble caja 2.5 Kg', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 15.49, 'https://www.dia.es/product_images/27083/27083_ISO_0_ES.jpg?imwidth=392'),
(193, 'SPONTEX guantes triple capa talla M bolsa 1 par', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 3.29, 'https://www.dia.es/product_images/46144/46144_ISO_0_ES.jpg?imwidth=392'),
(194, 'BIOTOBIO macarrones BIO paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.52, 'https://www.dia.es/product_images/287000/287000_ISO_0_ES.jpg?imwidth=392'),
(195, 'MINERVA sardinas en escabeche lata 85 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.49, 'https://www.dia.es/product_images/289591/289591_ISO_0_ES.jpg?imwidth=392'),
(196, 'DIA ZUMOSFERA bebida leche y frutas Caribe envase 1 lt', 'dia.es', 'bebidas|zumos', 1.25, 'https://www.dia.es/product_images/271652/271652_ISO_0_ES.jpg?imwidth=392'),
(197, 'BARMON\'S ginebra sabor fresa botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 7.85, 'https://www.dia.es/product_images/222418/222418_ISO_0_ES.jpg?imwidth=392'),
(198, 'IBERIA Protect toallitas captura colores caja 15 uds', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 3.59, 'https://www.dia.es/product_images/246775/246775_ISO_0_ES.jpg?imwidth=392'),
(199, 'DIA NUESTRA ALACENA jamón de pavo en finas lonchas envase 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.79, 'https://www.dia.es/product_images/273733/273733_ISO_0_ES.jpg?imwidth=392'),
(200, 'ORIGINAL REMEDIES aceite oliva en crema sin aclarado cabello reseco 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 3.99, 'https://www.dia.es/product_images/206499/206499_ISO_0_ES.jpg?imwidth=392'),
(201, 'AS snack para perros de pollo bolsa 200 gr', 'dia.es', 'mascotas|perros', 1.39, 'https://www.dia.es/product_images/112418/112418_ISO_0_ES.jpg?imwidth=392'),
(202, 'MANDUL donas de chocolate envase 180 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 1.55, 'https://www.dia.es/product_images/291301/291301_ISO_0_ES.jpg?imwidth=392'),
(203, 'CASA TARRADELLAS masa fina para pizza rollo 260 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|masas_y_hojaldres', 1.69, 'https://www.dia.es/product_images/151018/151018_ISO_0_ES.jpg?imwidth=392'),
(204, 'GULLON zero doradas al horno sin azúcar paquete 330 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 3.39, 'https://www.dia.es/product_images/55181/55181_ISO_0_ES.jpg?imwidth=392'),
(205, 'DIA SUPER PACO gel limpiador wc pino botella 1 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|bano', 1.19, 'https://www.dia.es/product_images/269408/269408_ISO_0_ES.jpg?imwidth=392'),
(206, 'POTE sazonador para paella de pescado caja 12,5 gr', 'dia.es', 'despensa|sal_y_especias', 1.99, 'https://www.dia.es/product_images/282302/282302_ISO_0_ES.jpg?imwidth=392'),
(207, 'LOS MOLINOS vino tinto DO Valdepeñas botella 75 cl', 'dia.es', 'bodega|vino|tinto', 2.35, 'https://www.dia.es/product_images/711/711_ISO_0_ES.jpg?imwidth=392'),
(208, 'DIA VEGECAMPO garbanzo pedrosillano paquete 1 Kg', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 2.65, 'https://www.dia.es/product_images/194830/194830_ISO_0_ES.jpg?imwidth=392'),
(209, 'APEROL aperitivo botella 70 cl', 'dia.es', 'bodega|alcoholes|vermouth', 12.99, 'https://www.dia.es/product_images/225895/225895_ISO_0_ES.jpg?imwidth=392'),
(210, 'BONTE espuma rizos perfectos spray 300 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 2.29, 'https://www.dia.es/product_images/40465/40465_ISO_0_ES.jpg?imwidth=392'),
(211, 'SANEX gel de ducha biome protect piel normal bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.65, 'https://www.dia.es/product_images/197473/197473_ISO_0_ES.jpg?imwidth=392'),
(212, 'NATURAL HONEY desodorante fresh extra refrescante spray 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.75, 'https://www.dia.es/product_images/288153/288153_ISO_0_ES.jpg?imwidth=392'),
(213, 'MATSU El Pícaro vino tinto DO Toro botella 75 cl', 'dia.es', 'bodega|vino|tinto', 8.89, 'https://www.dia.es/product_images/282750/282750_ISO_0_ES.jpg?imwidth=392'),
(214, 'CONDOMINIUM vino frizzante moscato rosado 5,5º botella 75 cl', 'dia.es', 'bodega|espumosos', 2.99, 'https://www.dia.es/product_images/222276/222276_ISO_0_ES.jpg?imwidth=392'),
(215, 'TIMOTEI champú y acondicionador 2 en 1 delicado cabello normal bote 400 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 3.49, 'https://www.dia.es/product_images/104819/104819_ISO_0_ES.jpg?imwidth=392'),
(216, 'BOMBAY Citron pressé ginebra con sabor a limón mediterráneo botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 21.99, 'https://www.dia.es/product_images/287938/287938_ISO_0_ES.jpg?imwidth=392'),
(217, 'DIA GALLETECA galletas tostaditas paquete 600 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.95, 'https://www.dia.es/product_images/206129/206129_ISO_0_ES.jpg?imwidth=392'),
(218, 'KELLOGGS barritas special k protein con coco, cacao y anacardos caja 112 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 2.99, 'https://www.dia.es/product_images/245356/245356_ISO_0_ES.jpg?imwidth=392'),
(219, 'NIVEA MEN crema tarro 150 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 3.50, 'https://www.dia.es/product_images/203365/203365_ISO_0_ES.jpg?imwidth=392'),
(220, 'DIA ZUMOSFERA zumo de kiwi 100% envase 1 lt', 'dia.es', 'bebidas|zumos', 1.99, 'https://www.dia.es/product_images/274801/274801_ISO_0_ES.jpg?imwidth=392'),
(221, 'NIKE colonia pink woman spray 30 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|colonias', 3.09, 'https://www.dia.es/product_images/217626/217626_ISO_0_ES.jpg?imwidth=392'),
(222, 'CESAR alimento para perros con pollo tarrina 150 gr', 'dia.es', 'mascotas|perros', 1.35, 'https://www.dia.es/product_images/151455/151455_ISO_0_ES.jpg?imwidth=392'),
(223, 'MENTOS roll frutas pack caramelos masticables sabor frutas paquete 2 x 38 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.80, 'https://www.dia.es/product_images/257843/257843_ISO_0_ES.jpg?imwidth=392'),
(224, 'MILLER cerveza rubia genuine draft botella 33 cl', 'dia.es', 'bebidas|cervezas|especiales', 1.19, 'https://www.dia.es/product_images/277264/277264_ISO_0_ES.jpg?imwidth=392'),
(225, 'Plátano de Canarias bolsa (1.3 Kg aprox.)', 'dia.es', 'frescos|frutas|platanos', 2.59, 'https://www.dia.es/product_images/11468/11468_ISO_0_ES.jpg?imwidth=392'),
(226, 'Barra de pan sésamo y lino 265 gr', 'dia.es', 'despensa|pan|pan_de_horno', 1.09, 'https://www.dia.es/product_images/207313/207313_ISO_0_ES.jpg?imwidth=392'),
(227, 'DIA mermelada extra fresa frasco 650 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.35, 'https://www.dia.es/product_images/20568/20568_ISO_0_ES.jpg?imwidth=392'),
(228, 'JOLCA aceitunas rellenas de anchoa del Cantábrico lata 150 gr', 'dia.es', 'despensa|aperitivos', 2.25, 'https://www.dia.es/product_images/75342/75342_ISO_0_ES.jpg?imwidth=392'),
(229, 'DON LIMPIO limpiador mármol y madera ph neutro botella 1.3 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 4.29, 'https://www.dia.es/product_images/17103/17103_ISO_0_ES.jpg?imwidth=392'),
(230, 'DR. OETKER aroma de vainilla de madagascar bote 35 ml', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 4.55, 'https://www.dia.es/product_images/245067/245067_ISO_0_ES.jpg?imwidth=392'),
(231, 'SPLASH ambientador automático lavanda spray 250 ml', 'dia.es', 'cuidado_del_hogar|ambientadores', 2.09, 'https://www.dia.es/product_images/293444/293444_ISO_0_ES.jpg?imwidth=392'),
(232, 'EL MOLINO DE DIA regañás con aceite de oliva virgen extra bolsa 150 gr', 'dia.es', 'despensa|pan|picos_de_pan', 1.49, 'https://www.dia.es/product_images/166048/166048_ISO_0_ES.jpg?imwidth=392'),
(233, 'BONNE MAMAN tartelettes rellenas de frambuesa caja 135 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.95, 'https://www.dia.es/product_images/288005/288005_ISO_0_ES.jpg?imwidth=392'),
(234, 'ASTURIANA leche semidesnatada sin lactosa envase 1 lt  PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 7.14, 'https://www.dia.es/product_images/148777P6/148777P6_ISO_0_ES.jpg?imwidth=392'),
(235, 'BINACA pasta dentífrica triple protección tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.79, 'https://www.dia.es/product_images/178070/178070_ISO_0_ES.jpg?imwidth=392'),
(236, 'SOMOSIERRA helado sandwich nata y chocolate caja 6 uds 300 gr', 'dia.es', 'congelados|helados', 3.29, 'https://www.dia.es/product_images/15828/15828_ISO_0_ES.jpg?imwidth=392'),
(237, 'DIA IMAQE gel de ducha almendras y miel bote 750 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 1.40, 'https://www.dia.es/product_images/273855/273855_ISO_0_ES.jpg?imwidth=392'),
(238, 'Pomelo unidad (325 gr aprox.)', 'dia.es', 'frescos|frutas|citricos', 0.74, 'https://www.dia.es/product_images/42097/42097_ISO_0_ES.jpg?imwidth=392'),
(239, 'HS champú anticaspa 2 en 1 clásico bote 230 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 2.99, 'https://www.dia.es/product_images/271604/271604_ISO_0_ES.jpg?imwidth=392'),
(240, 'PANTENE Pro-v champú anticaspa bote 225 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 3.19, 'https://www.dia.es/product_images/247786/247786_ISO_0_ES.jpg?imwidth=392'),
(241, 'FAIRY lavavajillas mano maxi poder anti-goteo bote 440 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 4.99, 'https://www.dia.es/product_images/283504/283504_ISO_0_ES.jpg?imwidth=392'),
(242, 'SPRITE lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.53, 'https://www.dia.es/product_images/178275/178275_ISO_0_ES.jpg?imwidth=392'),
(243, 'ALPRO bebida de soja ligera envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|bebidas_vegetales', 2.19, 'https://www.dia.es/product_images/126349/126349_ISO_0_ES.jpg?imwidth=392'),
(244, 'DANI pimienta negra grano frasco 45 gr', 'dia.es', 'despensa|sal_y_especias', 2.35, 'https://www.dia.es/product_images/178104/178104_ISO_0_ES.jpg?imwidth=392'),
(245, 'NESTLE papilla de maíz y arroz sin gluten caja 240 gr', 'dia.es', 'bebe|papillas', 2.59, 'https://www.dia.es/product_images/274738/274738_ISO_0_ES.jpg?imwidth=392'),
(246, 'SELECCIÓN DE DIA medallones de solomillo de pavo bandeja (peso aprox. 450 gr)', 'dia.es', 'frescos|carne|pavo', 5.40, 'https://www.dia.es/product_images/269546/269546_ISO_0_ES.jpg?imwidth=392'),
(247, 'DIA VEGECAMPO tallo de espárrago blanco lata 250 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.35, 'https://www.dia.es/product_images/264140/264140_ISO_0_ES.jpg?imwidth=392'),
(248, 'BOMBAY Original ginebra london dry botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 15.49, 'https://www.dia.es/product_images/109889/109889_ISO_0_ES.jpg?imwidth=392'),
(249, 'MAGNO gel de ducha classic bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.40, 'https://www.dia.es/product_images/155629/155629_ISO_0_ES.jpg?imwidth=392'),
(250, 'VIVISIMA+ café verde + zinc y colina caja 40 cápsulas', 'dia.es', 'despensa|dieteticos|complementos_nutricionales', 3.99, 'https://www.dia.es/product_images/219665/219665_ISO_0_ES.jpg?imwidth=392'),
(251, 'DIA AL PUNTO lentejas con chorizo lata 430 gr', 'dia.es', 'platos_preparados|legumbres', 1.35, 'https://www.dia.es/product_images/27933/27933_ISO_0_ES.jpg?imwidth=392'),
(252, 'DIA IMAQE leche limpiadora calmante dosificador 250 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 1.55, 'https://www.dia.es/product_images/272022/272022_ISO_0_ES.jpg?imwidth=392'),
(253, 'AUSONIA compresas normal alas bolsa 14 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 2.26, 'https://www.dia.es/product_images/131302/131302_ISO_0_ES.jpg?imwidth=392'),
(254, 'COLGATE PLAX enjuague bucal multiprotección botella 500ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 5.39, 'https://www.dia.es/product_images/153995/153995_ISO_0_ES.jpg?imwidth=392'),
(255, 'EL PASTOR perlas de queso rellenas de frambuesa bandeja 125 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.49, 'https://www.dia.es/product_images/267553/267553_ISO_0_ES.jpg?imwidth=392'),
(256, 'DIA SUPER PACO suavizante concentrado floral botella 80 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 2.15, 'https://www.dia.es/product_images/274017/274017_ISO_0_ES.jpg?imwidth=392'),
(257, 'DR.OETKER gelatina en laminas sobre 12 laminas', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 2.25, 'https://www.dia.es/product_images/124236/124236_ISO_0_ES.jpg?imwidth=392');
INSERT INTO `producto` (`Id_producto`, `Name`, `SUPERMARKET`, `CATEGORY`, `PRICE`, `IMG`) VALUES
(258, 'ALBO atún claro en aceite de oliva lata 67 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.10, 'https://www.dia.es/product_images/189186/189186_ISO_0_ES.jpg?imwidth=392'),
(259, 'ORO DE GENAVE aceite de oliva virgen extra ecológico botella 500 ml', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 5.30, 'https://www.dia.es/product_images/280370/280370_ISO_0_ES.jpg?imwidth=392'),
(260, 'SISMICUS vino tinto joven DO Jumilla botella 75 cl', 'dia.es', 'bodega|vino|tinto', 2.65, 'https://www.dia.es/product_images/267011/267011_ISO_0_ES.jpg?imwidth=392'),
(261, 'PEPSI clásica lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.69, 'https://www.dia.es/product_images/7658/7658_ISO_0_ES.jpg?imwidth=392'),
(262, 'DIA VEGECAMPO alubias cocidas frasco 400 gr', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 0.75, 'https://www.dia.es/product_images/1233/1233_ISO_0_ES.jpg?imwidth=392'),
(263, 'AGUINAMAR mejillones cocidos envasado al vacío 1 Kg', 'dia.es', 'frescos|pescado_y_marisco|pescado_y_marisco_fresco', 4.99, 'https://www.dia.es/product_images/81922/81922_ISO_0_ES.jpg?imwidth=392'),
(264, 'FRINSA atún claro en aceite de oliva MSC lata 82 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.65, 'https://www.dia.es/product_images/289594/289594_ISO_0_ES.jpg?imwidth=392'),
(265, 'BONTE cepillo dental para ortodoncia blíster 1 ud', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.89, 'https://www.dia.es/product_images/242830/242830_ISO_0_ES.jpg?imwidth=392'),
(266, 'DOVE desodorante original sin alcohol 0% sales de aluminio spray 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 3.89, 'https://www.dia.es/product_images/277257/277257_ISO_0_ES.jpg?imwidth=392'),
(267, 'NATURE VALLEY barrita de cereales crunchy avena y miel caja 210 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 2.99, 'https://www.dia.es/product_images/250333/250333_ISO_0_ES.jpg?imwidth=392'),
(268, 'CLESA crema bombón 0,7% M.G. pack 4 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.95, 'https://www.dia.es/product_images/180627/180627_ISO_0_ES.jpg?imwidth=392'),
(269, 'DIA SNACK MANIAC palitos de patata bolsa 100 gr', 'dia.es', 'despensa|aperitivos', 1.29, 'https://www.dia.es/product_images/16750/16750_ISO_0_ES.jpg?imwidth=392'),
(270, 'HARIBO gominolas favoritos bolsa 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.89, 'https://www.dia.es/product_images/152677/152677_ISO_0_ES.jpg?imwidth=392'),
(271, 'NORDES ginebra botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 26.19, 'https://www.dia.es/product_images/223716/223716_ISO_0_ES.jpg?imwidth=392'),
(272, 'SELECCIÓN DE DIA cuartos traseros de pollo bandeja (peso aprox. 750 gr)', 'dia.es', 'frescos|carne|pollo', 2.77, 'https://www.dia.es/product_images/18036/18036_ISO_0_ES.jpg?imwidth=392'),
(273, 'DIA LA LLAMA servilleta suave 2 capas paquete 100 uds', 'dia.es', 'cuidado_del_hogar|papel', 1.69, 'https://www.dia.es/product_images/276693/276693_ISO_0_ES.jpg?imwidth=392'),
(274, 'IDEAL leche evaporada sin lactosa envase 525 gr', 'dia.es', 'despensa|lacteos_y_huevos|leche', 2.36, 'https://www.dia.es/product_images/239520/239520_ISO_0_ES.jpg?imwidth=392'),
(275, 'VITAKRAFT snack líquido para gatos con salmón caja 90 gr', 'dia.es', 'mascotas|gatos', 2.85, 'https://www.dia.es/product_images/273656/273656_ISO_0_ES.jpg?imwidth=392'),
(276, 'DIA ZUMOSFERA zumo de piña 100% envase 1 lt', 'dia.es', 'bebidas|zumos', 1.39, 'https://www.dia.es/product_images/693/693_ISO_0_ES.jpg?imwidth=392'),
(277, 'SELECCIÓN DE DIA chuleta de aguja de cerdo bandeja (peso aprox. 650 gr)', 'dia.es', 'frescos|carne|cerdo', 3.89, 'https://www.dia.es/product_images/260861/260861_ISO_0_ES.jpg?imwidth=392'),
(278, 'SAN BENEDETTO refresco de té verde con aloe vera botella 1.5 lt', 'dia.es', 'bebidas|refrescos', 1.25, 'https://www.dia.es/product_images/226048/226048_ISO_0_ES.jpg?imwidth=392'),
(279, 'DIA SUPER PACO suavizante premium bergamota y sándalo botella 60 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 2.49, 'https://www.dia.es/product_images/276650/276650_ISO_0_ES.jpg?imwidth=392'),
(280, 'BONTE champú arroz y avena delicado bote 250 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 1.99, 'https://www.dia.es/product_images/233301/233301_ISO_0_ES.jpg?imwidth=392'),
(281, 'RAPUN trenza de Huesca caja 450 gr', 'dia.es', 'congelados|reposteria', 11.49, 'https://www.dia.es/product_images/196994/196994_ISO_0_ES.jpg?imwidth=392'),
(282, 'PULEVA leche omega 3 con nueces envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.95, 'https://www.dia.es/product_images/121677/121677_ISO_0_ES.jpg?imwidth=392'),
(283, 'FRISKIES snack para perros funtastick sabor jamón /queso bolsa 175 gr', 'dia.es', 'mascotas|perros', 2.25, 'https://www.dia.es/product_images/148455/148455_ISO_0_ES.jpg?imwidth=392'),
(284, 'HORNIMANS infusión de maca con jengibre, canela y naranja estuche 20 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 2.95, 'https://www.dia.es/product_images/288254/288254_ISO_0_ES.jpg?imwidth=392'),
(285, 'NORDIC BLONDE aclarante intensivo con aceite activador caja 1 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 5.99, 'https://www.dia.es/product_images/204613/204613_ISO_0_ES.jpg?imwidth=392'),
(286, 'MILKA helado cono chocolate y vainilla caja 4 uds 270 gr', 'dia.es', 'congelados|helados', 5.49, 'https://www.dia.es/product_images/161716/161716_ISO_0_ES.jpg?imwidth=392'),
(287, 'SMINT pastillas de limón sin azúcar lata 35 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.50, 'https://www.dia.es/product_images/180639/180639_ISO_0_ES.jpg?imwidth=392'),
(288, 'AMBAR cerveza especial SIN GLUTEN botella 33 cl', 'dia.es', 'bebidas|cervezas|especiales', 1.39, 'https://www.dia.es/product_images/187040/187040_ISO_0_ES.jpg?imwidth=392'),
(289, 'AS alimento para perros junior con carne tarrina 150 gr', 'dia.es', 'mascotas|perros', 0.85, 'https://www.dia.es/product_images/158565/158565_ISO_0_ES.jpg?imwidth=392'),
(290, 'BYLY desodorante roll on extra fresh envase 50ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.25, 'https://www.dia.es/product_images/151875/151875_ISO_0_ES.jpg?imwidth=392'),
(291, 'DIQUESI hamburguesas veganas de calabacín y quinoa bandeja 200 gr', 'dia.es', 'platos_preparados|verduras', 2.75, 'https://www.dia.es/product_images/253797/253797_ISO_0_ES.jpg?imwidth=392'),
(292, 'CARMENCITA colorante alimentario frasco 62 gr', 'dia.es', 'despensa|sal_y_especias', 1.95, 'https://www.dia.es/product_images/187993/187993_ISO_0_ES.jpg?imwidth=392'),
(293, 'KELLOGGS cereales smacks caja 450 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 3.95, 'https://www.dia.es/product_images/130841/130841_ISO_0_ES.jpg?imwidth=392'),
(294, 'DIA LA LLAMA papel higiénico 2 capas paquete 12 uds', 'dia.es', 'cuidado_del_hogar|papel', 2.99, 'https://www.dia.es/product_images/276676/276676_ISO_0_ES.jpg?imwidth=392'),
(295, 'DIA MARCELO CARAMELO torcidas regaliz rojo bolsa 225 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.09, 'https://www.dia.es/product_images/161768/161768_ISO_0_ES.jpg?imwidth=392'),
(296, 'DIA NUESTRA ALACENA pechuga de pavo braseado finas lonchas envase 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 2.45, 'https://www.dia.es/product_images/273964/273964_ISO_0_ES.jpg?imwidth=392'),
(297, 'DIA AL PUNTO arroz negro con calamar y gambas bolsa 600 gr', 'dia.es', 'congelados|precocinados', 2.89, 'https://www.dia.es/product_images/208640/208640_ISO_0_ES.jpg?imwidth=392'),
(298, 'BONTE maquinilla de afeitar desechable 3 hojas bolsa 6 uds', 'dia.es', 'cuidado_personal|afeitado', 3.09, 'https://www.dia.es/product_images/228682/228682_ISO_0_ES.jpg?imwidth=392'),
(299, 'BIOZOO barritas para roedores de verduras y frutas bolsa 112 gr', 'dia.es', 'mascotas|otros_animales', 1.79, 'https://www.dia.es/product_images/292170/292170_ISO_0_ES.jpg?imwidth=392'),
(300, 'WHISKAS alimento para gatos selección carnes en salsa bolsa 4 x 85 gr', 'dia.es', 'mascotas|gatos', 2.49, 'https://www.dia.es/product_images/292974/292974_ISO_0_ES.jpg?imwidth=392'),
(301, 'WILKINSON sword Extra 3 maquinilla desechable mujer bolsa 4 uds', 'dia.es', 'cuidado_personal|depilacion', 4.39, 'https://www.dia.es/product_images/245060/245060_ISO_0_ES.jpg?imwidth=392'),
(302, 'AUSONIA Discreet compresas de incontinencia normal paquete 12 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 4.99, 'https://www.dia.es/product_images/212779/212779_ISO_0_ES.jpg?imwidth=392'),
(303, 'OREO galleta doble crema paquete 185 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.99, 'https://www.dia.es/product_images/134625/134625_ISO_0_ES.jpg?imwidth=392'),
(304, 'ARLA FOODS queso protein cottage tarrina 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.26, 'https://www.dia.es/product_images/288046/288046_ISO_0_ES.jpg?imwidth=392'),
(305, 'XTERMIN insecticida moscas y mosquitos sin perfume spray 750 ml', 'dia.es', 'cuidado_del_hogar|insecticidas', 2.49, 'https://www.dia.es/product_images/283883/283883_ISO_0_ES.jpg?imwidth=392'),
(306, 'CUETARA TostaRica Choco Guay galletas rellenas de chocolate y crema caja 168 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.95, 'https://www.dia.es/product_images/145985/145985_ISO_0_ES.jpg?imwidth=392'),
(307, 'PHILADELPHIA queso para untar original tarrina 350 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 3.64, 'https://www.dia.es/product_images/189086/189086_ISO_0_ES.jpg?imwidth=392'),
(308, 'BONTE mascarilla capilar alisadora tarro 300 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 2.49, 'https://www.dia.es/product_images/280014/280014_ISO_0_ES.jpg?imwidth=392'),
(309, 'DIA  stevia líquida botella 125 ml', 'dia.es', 'despensa|desayunos_y_dulces|azucar_y_edulcorantes', 2.19, 'https://www.dia.es/product_images/222282/222282_ISO_0_ES.jpg?imwidth=392'),
(310, 'CLESA crema bombón de chocolate pack 4 unidades 125 g', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 1.95, 'https://www.dia.es/product_images/173384/173384_ISO_0_ES.jpg?imwidth=392'),
(311, 'PUNTOMATIC detergente máquina blanco puro en pastillas 4 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 1.10, 'https://www.dia.es/product_images/152978/152978_ISO_0_ES.jpg?imwidth=392'),
(312, 'BAJOZ ROBLE TORO vino tinto botella 75 cl', 'dia.es', 'bodega|vino|tinto', 5.25, 'https://www.dia.es/product_images/186009/186009_ISO_0_ES.jpg?imwidth=392'),
(313, 'DIA TEMPTATION chocolate negro 74 % con pepitas de cacao tableta 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 1.35, 'https://www.dia.es/product_images/225442/225442_ISO_0_ES.jpg?imwidth=392'),
(314, 'PASCUAL leche desnatada sin lactosa envase 1 lt PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 8.58, 'https://www.dia.es/product_images/119676P6/119676P6_ISO_0_ES.jpg?imwidth=392'),
(315, 'BIFRUTAS PASCUAL bebida con leche tropical pack 6 unidades 200 ml', 'dia.es', 'bebidas|zumos', 2.69, 'https://www.dia.es/product_images/125790/125790_ISO_0_ES.jpg?imwidth=392'),
(316, 'DIA AL PUNTO lasaña boloñesa bandeja 300 gr', 'dia.es', 'congelados|precocinados', 1.39, 'https://www.dia.es/product_images/275223/275223_ISO_0_ES.jpg?imwidth=392'),
(317, 'TULIPAN NEGRO Men desodorante sport barra 75 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.40, 'https://www.dia.es/product_images/234741/234741_ISO_0_ES.jpg?imwidth=392'),
(318, 'VANISH Oxi action quitamanchas en spray 750 ml', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 4.99, 'https://www.dia.es/product_images/282715/282715_ISO_0_ES.jpg?imwidth=392'),
(319, 'PALMOLIVE NB desodorante tacto puro roll on 50 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.19, 'https://www.dia.es/product_images/151723/151723_ISO_0_ES.jpg?imwidth=392'),
(320, 'DOLCE GUSTO café con leche 18 cápsulas caja 180 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 4.95, 'https://www.dia.es/product_images/129910/129910_ISO_0_ES.jpg?imwidth=392'),
(321, 'SOLIS tomate frito envase 350 gr', 'dia.es', 'despensa|salsas|tomate', 0.85, 'https://www.dia.es/product_images/78731/78731_ISO_0_ES.jpg?imwidth=392'),
(322, 'DR OETKER pannini barbacoa caja 250 gr', 'dia.es', 'congelados|pizzas_bases_y_masas', 3.45, 'https://www.dia.es/product_images/25978/25978_ISO_0_ES.jpg?imwidth=392'),
(323, 'L\'OREAL Men expert crema facial hydra 5 acciones dosificador 50 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 7.99, 'https://www.dia.es/product_images/74948/74948_ISO_0_ES.jpg?imwidth=392'),
(324, 'SOLIS tomate frito con aceite de oliva frasco 360 gr', 'dia.es', 'despensa|salsas|tomate', 1.79, 'https://www.dia.es/product_images/119817/119817_ISO_0_ES.jpg?imwidth=392'),
(325, 'AZUCARERA azúcar moreno integral en terrones caja 500 gr', 'dia.es', 'despensa|desayunos_y_dulces|azucar_y_edulcorantes', 1.79, 'https://www.dia.es/product_images/189181/189181_ISO_0_ES.jpg?imwidth=392'),
(326, 'LA VACA QUE RIE queso fundido light 16 porciones caja 250 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.88, 'https://www.dia.es/product_images/1776/1776_ISO_0_ES.jpg?imwidth=392'),
(327, 'VILEDA bayeta microfibra ultra fresh 3 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 4.69, 'https://www.dia.es/product_images/258749/258749_ISO_0_ES.jpg?imwidth=392'),
(328, 'PRIMA mostaza original bote 265 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 2.39, 'https://www.dia.es/product_images/292518/292518_ISO_0_ES.jpg?imwidth=392'),
(329, 'DANONE DANET natillas de chocolate pack 4 unidades 120 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 2.49, 'https://www.dia.es/product_images/76121/76121_ISO_0_ES.jpg?imwidth=392'),
(330, 'DIA SELECCIÓN MUNDIAL escamas de queso parmigianno regianno DOP tarrina 80 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.20, 'https://www.dia.es/product_images/207456/207456_ISO_0_ES.jpg?imwidth=392'),
(331, 'SCHWARZKOPF champú brillo & vitalidad bote 400 ml', 'dia.es', 'bebe|cuidado_del_bebe', 2.39, 'https://www.dia.es/product_images/267618/267618_ISO_0_ES.jpg?imwidth=392'),
(332, 'PASCUAL leche semidesnatada sin lactosa envase 1 lt PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 8.58, 'https://www.dia.es/product_images/119675P6/119675P6_ISO_0_ES.jpg?imwidth=392'),
(333, 'FAIRY lavavajillas mano concentrado extra higiene botella 500 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 4.99, 'https://www.dia.es/product_images/275403/275403_ISO_0_ES.jpg?imwidth=392'),
(334, 'ZESPRI kiwi gold bandeja 500 gr', 'dia.es', 'frescos|frutas|frutas_tropicales', 3.29, 'https://www.dia.es/product_images/237458/237458_ISO_0_ES.jpg?imwidth=392'),
(335, 'BUJANDA pimientos del piquillo rojos y verdes frasco 220 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.99, 'https://www.dia.es/product_images/232799/232799_ISO_0_ES.jpg?imwidth=392'),
(336, 'Tomate ensalada unidad (350 gr aprox.)', 'dia.es', 'frescos|verduras_y_hortalizas|tomates_pimientos_y_pepinos', 1.01, 'https://www.dia.es/product_images/110/110_ISO_0_ES.jpg?imwidth=392'),
(337, 'PURINA snack para perros medianos dentalife bolsa 115 gr', 'dia.es', 'mascotas|perros', 2.59, 'https://www.dia.es/product_images/233618/233618_ISO_0_ES.jpg?imwidth=392'),
(338, 'M&M\'s cacahuete 45 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 1.20, 'https://www.dia.es/product_images/126410/126410_ISO_0_ES.jpg?imwidth=392'),
(339, 'SELECCIÓN DE DIA Filete 1ºA de ternera (peso aprox. 425 gr)', 'dia.es', 'frescos|carne|vacuno', 6.37, 'https://www.dia.es/product_images/181288/181288_ISO_0_ES.jpg?imwidth=392'),
(340, 'PEDIGREE snack para perros dentaxtix grandes bolsa 154 gr', 'dia.es', 'mascotas|perros', 2.19, 'https://www.dia.es/product_images/288807/288807_ISO_0_ES.jpg?imwidth=392'),
(341, 'DIA GRANDIA cereales muesli con frutas paquete 500 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 2.65, 'https://www.dia.es/product_images/37203/37203_ISO_0_ES.jpg?imwidth=392'),
(342, 'PAZO SERANTELLO vino blanco albariño DO Rias Baixas botella 75 cl', 'dia.es', 'bodega|vino|blanco', 6.25, 'https://www.dia.es/product_images/275396/275396_ISO_0_ES.jpg?imwidth=392'),
(343, 'GRANJA SAN FRANCISCO miel de flores antigoteo bote 350 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 5.55, 'https://www.dia.es/product_images/17255/17255_ISO_0_ES.jpg?imwidth=392'),
(344, 'LU PRINCIPE Maxi choc galletas rellenas de crema chocolate pack 3 x 250 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 5.99, 'https://www.dia.es/product_images/189843/189843_ISO_0_ES.jpg?imwidth=392'),
(345, 'DIA SALSEO salsa césar bote 300 ml', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 1.29, 'https://www.dia.es/product_images/129425/129425_ISO_0_ES.jpg?imwidth=392'),
(346, 'DIA IMAQE gel de ducha zero envase 1 lt', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 1.69, 'https://www.dia.es/product_images/273849/273849_ISO_0_ES.jpg?imwidth=392'),
(347, 'FONTANEDA galletas digestive finas con chocolate con leche caja 170 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.45, 'https://www.dia.es/product_images/258932/258932_ISO_0_ES.jpg?imwidth=392'),
(348, 'FRIT RAVICH dátiles bandeja 500 gr', 'dia.es', 'despensa|aperitivos', 3.29, 'https://www.dia.es/product_images/125796/125796_ISO_0_ES.jpg?imwidth=392'),
(349, 'HORNIMANS té classic estuche 40 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 3.35, 'https://www.dia.es/product_images/240824/240824_ISO_0_ES.jpg?imwidth=392'),
(350, 'LA ASTURIANA judión cocido frasco 350 gr', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 1.99, 'https://www.dia.es/product_images/61787/61787_ISO_0_ES.jpg?imwidth=392'),
(351, 'DIA MARI MARINERA carne de mejillón cocido bolsa 250 gr', 'dia.es', 'congelados|pescado_y_marisco', 2.15, 'https://www.dia.es/product_images/233107/233107_ISO_0_ES.jpg?imwidth=392'),
(352, 'DIA MARI MARINERA sardinillas en aceite de girasol pack de 2 latas de 62 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.75, 'https://www.dia.es/product_images/129042/129042_ISO_0_ES.jpg?imwidth=392'),
(353, 'KRISSIA palitos de surimi paquete 12 uds 180 gr', 'dia.es', 'frescos|pescado_y_marisco|gulas_y_surimi', 2.99, 'https://www.dia.es/product_images/35499/35499_ISO_0_ES.jpg?imwidth=392'),
(354, 'BREKKIES alimento para gatos con salmón y atún rellenas de gamba bolsa 900 gr', 'dia.es', 'mascotas|gatos', 4.29, 'https://www.dia.es/product_images/277528/277528_ISO_0_ES.jpg?imwidth=392'),
(355, 'GALLO pesto frasco 190 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 2.79, 'https://www.dia.es/product_images/198553/198553_ISO_0_ES.jpg?imwidth=392'),
(356, 'DIA IMAQE crema de manos hidratante con aloe vera tubo 125 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|cuidado_de_manos_y_pies', 1.15, 'https://www.dia.es/product_images/271089/271089_ISO_0_ES.jpg?imwidth=392'),
(357, 'CREMLUX caldo de carne envase 1 lt', 'dia.es', 'despensa|sopas|caldos', 1.09, 'https://www.dia.es/product_images/285969/285969_ISO_0_ES.jpg?imwidth=392'),
(358, 'DIA cacao instantáneo bolsa 1.2 Kg', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 4.45, 'https://www.dia.es/product_images/221720/221720_ISO_0_ES.jpg?imwidth=392'),
(359, 'RED BULL bebida energética sabor sandía lata 25 cl', 'dia.es', 'bebidas|bebidas_isotonicas_y_energeticas', 1.59, 'https://www.dia.es/product_images/271471/271471_ISO_0_ES.jpg?imwidth=392'),
(360, 'DIA MARI MARINERA bonito en escabeche lata 73 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.85, 'https://www.dia.es/product_images/259991/259991_ISO_0_ES.jpg?imwidth=392'),
(361, 'VIVESOY bebida de soja ligera envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|bebidas_vegetales', 1.89, 'https://www.dia.es/product_images/121894/121894_ISO_0_ES.jpg?imwidth=392'),
(362, 'COCA-COLA zero pack 12 latas 33 cl', 'dia.es', 'bebidas|refrescos', 9.12, 'https://www.dia.es/product_images/79802/79802_ISO_0_ES.jpg?imwidth=392'),
(363, 'BONTE esponjas jabonosas desechables bolsa 10 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 1.25, 'https://www.dia.es/product_images/231828/231828_ISO_0_ES.jpg?imwidth=392'),
(364, 'AMBAR cerveza tostada 0.0% alcohol lata 33 cl', 'dia.es', 'bebidas|cervezas|sin_alcohol', 0.85, 'https://www.dia.es/product_images/274605/274605_ISO_0_ES.jpg?imwidth=392'),
(365, 'SANEX gel de ducha biome protect natural piel seca bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.79, 'https://www.dia.es/product_images/197472/197472_ISO_0_ES.jpg?imwidth=392'),
(366, 'CALVO sardinillas en aceite de oliva baja en sal lata 60 g', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.85, 'https://www.dia.es/product_images/181199/181199_ISO_0_ES.jpg?imwidth=392'),
(367, 'DIA té english breakfast estuche 25 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 0.95, 'https://www.dia.es/product_images/1526/1526_ISO_0_ES.jpg?imwidth=392'),
(368, 'DIA SUPER PACO detergente máquina líquido pieles sensibles botella 66 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 5.09, 'https://www.dia.es/product_images/274013/274013_ISO_0_ES.jpg?imwidth=392'),
(369, 'DIA IMAQE toallitas desmaquillantes para pieles sensibles con extractos de rosas envase 30 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 1.35, 'https://www.dia.es/product_images/272019/272019_ISO_0_ES.jpg?imwidth=392'),
(370, 'SPONTEX bayeta multifacil super absorbente bolsa 2 + 1 gratis', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 2.99, 'https://www.dia.es/product_images/181903/181903_ISO_0_ES.jpg?imwidth=392'),
(371, 'OREO tarta de queso con galletas oreo caja 350 gr', 'dia.es', 'congelados|helados', 7.59, 'https://www.dia.es/product_images/213216/213216_ISO_0_ES.jpg?imwidth=392'),
(372, 'DIA IMAQE crema antiedad de día pro-collagen tarro 50 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 6.09, 'https://www.dia.es/product_images/272041/272041_ISO_0_ES.jpg?imwidth=392'),
(373, 'SEAGRAM\'S ginebra botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 18.99, 'https://www.dia.es/product_images/182580/182580_ISO_0_ES.jpg?imwidth=392'),
(374, 'DIA NUESTRA ALACENA pechuga de pavo sandwich envase 250 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 2.59, 'https://www.dia.es/product_images/273732/273732_ISO_0_ES.jpg?imwidth=392'),
(375, 'DIA NUESTRA ALACENA salami extra pack 2 x 100 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 1.32, 'https://www.dia.es/product_images/274141/274141_ISO_0_ES.jpg?imwidth=392'),
(376, 'DIA LACTEA leche entera envase 1 lt PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 5.46, 'https://www.dia.es/product_images/608P6/608P6_ISO_0_ES.jpg?imwidth=392'),
(377, 'TEKEFINGER tequeños de queso caja 190 gr', 'dia.es', 'congelados|precocinados', 2.99, 'https://www.dia.es/product_images/290600/290600_ISO_0_ES.jpg?imwidth=392'),
(378, 'EL MOLINO DE DIA pan integral multicereales para sandwich bolsa 310 gr', 'dia.es', 'despensa|pan|pan_de_hamburguesas_y_perritos', 1.55, 'https://www.dia.es/product_images/220180/220180_ISO_0_ES.jpg?imwidth=392'),
(379, 'DIA LACTEA leche fresca entera botella 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.05, 'https://www.dia.es/product_images/271329/271329_ISO_0_ES.jpg?imwidth=392'),
(380, 'DIA SUPER PACO gel desatascador para tuberías botella 1 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|cocina', 2.05, 'https://www.dia.es/product_images/274783/274783_ISO_0_ES.jpg?imwidth=392'),
(381, 'DIA té chai estuche 25 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 1.85, 'https://www.dia.es/product_images/250023/250023_ISO_0_ES.jpg?imwidth=392'),
(382, 'EL MOLINO DE DIA pan de molde rústico bolsa 600 gr', 'dia.es', 'despensa|pan|pan_de_molde', 1.85, 'https://www.dia.es/product_images/67431/67431_ISO_0_ES.jpg?imwidth=392'),
(383, 'PEPSI clásica botella 1.75 lt', 'dia.es', 'bebidas|refrescos', 1.59, 'https://www.dia.es/product_images/7659/7659_ISO_0_ES.jpg?imwidth=392'),
(384, 'VIVISIMA+ colágeno hidrolizado y magnesio lata 250 gr', 'dia.es', 'despensa|dieteticos|complementos_nutricionales', 4.89, 'https://www.dia.es/product_images/271182/271182_ISO_0_ES.jpg?imwidth=392'),
(385, 'FINDUS menestra de la huerta bolsa 750 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 4.61, 'https://www.dia.es/product_images/41017/41017_ISO_0_ES.jpg?imwidth=392'),
(386, 'SUN&VEGS hierbabuena envase 70 gr', 'dia.es', 'frescos|verduras_y_hortalizas|otras_verduras', 1.25, 'https://www.dia.es/product_images/275734/275734_ISO_0_ES.jpg?imwidth=392'),
(387, 'DIA VEGECAMPO ensalada china frasco 180 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.15, 'https://www.dia.es/product_images/53199/53199_ISO_0_ES.jpg?imwidth=392'),
(388, 'FLOTA lavavajillas mano active power botella 1100 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 1.69, 'https://www.dia.es/product_images/151954/151954_ISO_0_ES.jpg?imwidth=392'),
(389, 'EL COTO vino tinto crianza DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 6.30, 'https://www.dia.es/product_images/102921/102921_ISO_0_ES.jpg?imwidth=392'),
(390, 'REINA gelatina multifrutas, limón y naranja pack 6 unidades 100 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.59, 'https://www.dia.es/product_images/255620/255620_ISO_0_ES.jpg?imwidth=392'),
(391, 'DIA MARCELO CARAMELO torcidas regaliz negro bolsa 225 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.15, 'https://www.dia.es/product_images/161772/161772_ISO_0_ES.jpg?imwidth=392'),
(392, 'SAN BENEDETTO Enjoy refresco tropical sin gas botella 1.5 lt', 'dia.es', 'bebidas|refrescos', 1.29, 'https://www.dia.es/product_images/263608/263608_ISO_0_ES.jpg?imwidth=392'),
(393, 'DANONE ACTIMEL yogur líquido fresa pack 12 unidades 100 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 6.15, 'https://www.dia.es/product_images/131735/131735_ISO_0_ES.jpg?imwidth=392'),
(394, 'LA MOLISANA tagliatelle nido nº103 paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 3.06, 'https://www.dia.es/product_images/280324/280324_ISO_0_ES.jpg?imwidth=392'),
(395, 'CHEETOS gustosines bolsa 96 gr', 'dia.es', 'despensa|aperitivos', 1.99, 'https://www.dia.es/product_images/40279/40279_ISO_0_ES.jpg?imwidth=392'),
(396, 'DIA MARI MARINERA filetes de abadejo de Alaska bolsa 850 gr', 'dia.es', 'congelados|pescado_y_marisco', 7.89, 'https://www.dia.es/product_images/235129/235129_ISO_0_ES.jpg?imwidth=392'),
(397, 'DIA lejía densa hogar botella 2 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 1.17, 'https://www.dia.es/product_images/129117/129117_ISO_0_ES.jpg?imwidth=392'),
(398, 'DIA cacao soluble bolsa 1,5 kg', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 5.75, 'https://www.dia.es/product_images/57965/57965_ISO_0_ES.jpg?imwidth=392'),
(399, 'VETERANO brandy botella 1 lt', 'dia.es', 'bodega|alcoholes|brandy', 9.29, 'https://www.dia.es/product_images/129569/129569_ISO_0_ES.jpg?imwidth=392'),
(400, 'DANI hoja de romero bolsa 40 gr', 'dia.es', 'despensa|sal_y_especias', 0.79, 'https://www.dia.es/product_images/226052/226052_ISO_0_ES.jpg?imwidth=392'),
(401, 'HANSAPLAST tiritas resistentes al agua caja 40 unidades', 'dia.es', 'cuidado_personal|botiquin', 2.49, 'https://www.dia.es/product_images/183099/183099_ISO_0_ES.jpg?imwidth=392'),
(402, 'NIVEA crema reafirmante Q10 piel seca bote 400 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 6.49, 'https://www.dia.es/product_images/154432/154432_ISO_0_ES.jpg?imwidth=392'),
(403, 'DIA agua mineral natural botella 1.5 lt', 'dia.es', 'bebidas|aguas', 0.27, 'https://www.dia.es/product_images/26995/26995_ISO_0_ES.jpg?imwidth=392'),
(404, 'NEUTREX lejía futura botella 1.9 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 2.95, 'https://www.dia.es/product_images/283977/283977_ISO_0_ES.jpg?imwidth=392'),
(405, 'SHANDY cerveza con limón lata 33 cl', 'dia.es', 'bebidas|cervezas|con_limon', 0.89, 'https://www.dia.es/product_images/66511/66511_ISO_0_ES.jpg?imwidth=392'),
(406, 'SOLAN DE CABRAS agua mineral natural botella 1.5 lt', 'dia.es', 'bebidas|aguas', 0.87, 'https://www.dia.es/product_images/56684/56684_ISO_0_ES.jpg?imwidth=392'),
(407, 'MAGNO gel de ducha marine bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.69, 'https://www.dia.es/product_images/155630/155630_ISO_0_ES.jpg?imwidth=392'),
(408, 'JOLCA aceitunas gazpacha frasco 500 gr', 'dia.es', 'despensa|aperitivos', 4.05, 'https://www.dia.es/product_images/182584/182584_ISO_0_ES.jpg?imwidth=392'),
(409, 'BIMBO bagels clásicos bolsa 300 gr', 'dia.es', 'despensa|pan|pan_de_molde', 2.99, 'https://www.dia.es/product_images/280156/280156_ISO_0_ES.jpg?imwidth=392'),
(410, 'HERO surtido de confituras mini caja 200 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.79, 'https://www.dia.es/product_images/233098/233098_ISO_0_ES.jpg?imwidth=392'),
(411, 'BORGES vinagre balsámico de módena botella 250 ml', 'dia.es', 'despensa|aceites_vinagres_y_alinos|vinagres_y_alinos', 2.29, 'https://www.dia.es/product_images/68383/68383_ISO_0_ES.jpg?imwidth=392'),
(412, 'GALLINA BLANCA caldo casero de pollo 100% natural envase 1 lt', 'dia.es', 'despensa|sopas|caldos', 2.20, 'https://www.dia.es/product_images/150913/150913_ISO_0_ES.jpg?imwidth=392'),
(413, 'Cebolla morada malla 500 gr', 'dia.es', 'frescos|verduras_y_hortalizas|ajos_cebollas_y_puerros', 1.15, 'https://www.dia.es/product_images/57885/57885_ISO_0_ES.jpg?imwidth=392'),
(414, 'BONTE mascarilla capilar rizos perfectos tarro 300 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 2.49, 'https://www.dia.es/product_images/280012/280012_ISO_0_ES.jpg?imwidth=392'),
(415, 'LA TOJA jabón de afeitar con sales minerales barra 50 ml', 'dia.es', 'cuidado_personal|afeitado', 2.19, 'https://www.dia.es/product_images/151885/151885_ISO_0_ES.jpg?imwidth=392'),
(416, 'FRISKIES alimento para perros en gelatina multipack 12 x 100 gr', 'dia.es', 'mascotas|perros', 6.99, 'https://www.dia.es/product_images/282952/282952_ISO_0_ES.jpg?imwidth=392'),
(417, 'MILKA galletas mini cookies bolsa 110 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.90, 'https://www.dia.es/product_images/267607/267607_ISO_0_ES.jpg?imwidth=392'),
(418, 'DIA VEGECAMPO banderillas picantes frasco 140 gr', 'dia.es', 'despensa|aperitivos', 1.49, 'https://www.dia.es/product_images/142059/142059_ISO_0_ES.jpg?imwidth=392'),
(419, 'COCINARTE filete de merluza empanado bolsa 600 gr', 'dia.es', 'congelados|pescado_y_marisco', 4.89, 'https://www.dia.es/product_images/291764/291764_ISO_0_ES.jpg?imwidth=392'),
(420, 'GALLINA BLANCA sopa de pollo con fideos finos bajo en sal sobre 68 gr', 'dia.es', 'despensa|sopas|sopas', 0.95, 'https://www.dia.es/product_images/118021/118021_ISO_0_ES.jpg?imwidth=392'),
(421, 'GALLINA BLANCA caldo casero de verduras envase 1 lt', 'dia.es', 'despensa|sopas|caldos', 2.19, 'https://www.dia.es/product_images/189160/189160_ISO_0_ES.jpg?imwidth=392'),
(422, 'DALIA pimentón de la vera lata 70 gr', 'dia.es', 'despensa|sal_y_especias', 1.59, 'https://www.dia.es/product_images/187395/187395_ISO_0_ES.jpg?imwidth=392'),
(423, 'TROLLI golosinas besos de fresa bolsa 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.09, 'https://www.dia.es/product_images/280275/280275_ISO_0_ES.jpg?imwidth=392'),
(424, 'NIVEA Creme crema hidratante universal todo tipo de pieles lata 400 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 5.99, 'https://www.dia.es/product_images/151644/151644_ISO_0_ES.jpg?imwidth=392'),
(425, 'MARCILLA café ristretto 20 cápsulas caja 104 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 6.19, 'https://www.dia.es/product_images/264767/264767_ISO_0_ES.jpg?imwidth=392'),
(426, 'SAIMAZA café molido mezcla paquete 250 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 2.89, 'https://www.dia.es/product_images/245/245_ISO_0_ES.jpg?imwidth=392'),
(427, 'AUSONIA Discreet compresas de incontinencia maxi paquete 12 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 7.79, 'https://www.dia.es/product_images/212781/212781_ISO_0_ES.jpg?imwidth=392'),
(428, 'DIA SELECCIÓN MUNDIAL queso rallado grana padano bolsa 100 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 1.89, 'https://www.dia.es/product_images/182969/182969_ISO_0_ES.jpg?imwidth=392'),
(429, 'HS champú anticaspa suave y sedoso bote 230 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 2.99, 'https://www.dia.es/product_images/194774/194774_ISO_0_ES.jpg?imwidth=392'),
(430, 'MANUEL DE MONTEJO salchichón ibérico sobre 90 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 2.45, 'https://www.dia.es/product_images/284227/284227_ISO_0_ES.jpg?imwidth=392'),
(431, 'DIA ZUMOSFERA zumo tropical sin azúcares añadidos envase 1 lt', 'dia.es', 'bebidas|zumos', 0.75, 'https://www.dia.es/product_images/205791/205791_ISO_0_ES.jpg?imwidth=392'),
(432, 'DIA TEMPTATION helado de chocolate con trozos barqueta 500 gr', 'dia.es', 'congelados|helados', 2.79, 'https://www.dia.es/product_images/13200/13200_ISO_0_ES.jpg?imwidth=392'),
(433, 'WIMBI bebida refrescante mojito botella 33 cl', 'dia.es', 'bodega|alcoholes|ron', 1.69, 'https://www.dia.es/product_images/285363/285363_ISO_0_ES.jpg?imwidth=392'),
(434, 'TOQUE ESPECIAL sal rosa del Himalaya con molinillo frasco 100 gr', 'dia.es', 'despensa|sal_y_especias', 1.99, 'https://www.dia.es/product_images/214697/214697_ISO_0_ES.jpg?imwidth=392'),
(435, 'DIA agua mineral con gas botella 1.5 lt', 'dia.es', 'bebidas|aguas', 0.40, 'https://www.dia.es/product_images/99265/99265_ISO_0_ES.jpg?imwidth=392'),
(436, 'ORTIZ mini tostas rectangulares paquete 100 gr', 'dia.es', 'despensa|pan|biscotes', 1.99, 'https://www.dia.es/product_images/104447/104447_ISO_0_ES.jpg?imwidth=392'),
(437, 'DIA  PLANETA BEBE pants pañales 15-25 kg talla XL paquete 18 uds', 'dia.es', 'bebe|panales', 7.29, 'https://www.dia.es/product_images/268411/268411_ISO_0_ES.jpg?imwidth=392'),
(438, 'TRAPA bombones rellenos de cereza al licor caja 120 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 1.25, 'https://www.dia.es/product_images/293458/293458_ISO_0_ES.jpg?imwidth=392'),
(439, 'BONTE gel limpiador facial pieles mixtas a grasas dosificador 250 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 4.49, 'https://www.dia.es/product_images/220748/220748_ISO_0_ES.jpg?imwidth=392'),
(440, 'DIA LACTEA batido de chocolate pack 6 unidades 200 ml', 'dia.es', 'bebidas|batidos_y_horchata', 1.75, 'https://www.dia.es/product_images/115833/115833_ISO_0_ES.jpg?imwidth=392'),
(441, 'AMBAR cerveza 1900 botella 33 cl', 'dia.es', 'bebidas|cervezas|especiales', 1.59, 'https://www.dia.es/product_images/46643/46643_ISO_0_ES.jpg?imwidth=392'),
(442, 'SELECCIÓN DE DIA costillas troceadas de cerdo bandeja 500 gr', 'dia.es', 'frescos|carne|cerdo', 4.29, 'https://www.dia.es/product_images/276127/276127_ISO_0_ES.jpg?imwidth=392'),
(443, 'DIA fregona hilo microfibras especial para suelos delicados bolsa 1 ud', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 1.59, 'https://www.dia.es/product_images/51000/51000_ISO_0_ES.jpg?imwidth=392'),
(444, 'DIA VEGECAMPO lentejas castellana paquete 1 Kg', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 1.99, 'https://www.dia.es/product_images/157/157_ISO_0_ES.jpg?imwidth=392'),
(445, 'SELECCIÓN DE DIA preparado de carne picada de vacuno bandeja 500 gr', 'dia.es', 'frescos|carne|vacuno', 4.29, 'https://www.dia.es/product_images/261239/261239_ISO_0_ES.jpg?imwidth=392'),
(446, 'CALVO atún claro en aceite de oliva bajo en sal pack 3 latas de 52 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 4.35, 'https://www.dia.es/product_images/39255/39255_ISO_0_ES.jpg?imwidth=392'),
(447, 'CAPRICHO ANDALUZ set aliño aceite de oliva y vinagre bolsa 5+5 uds', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 1.99, 'https://www.dia.es/product_images/167309/167309_ISO_0_ES.jpg?imwidth=392'),
(448, 'DIA LACTEA leche desnatada sin lactosa envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 0.97, 'https://www.dia.es/product_images/185450/185450_ISO_0_ES.jpg?imwidth=392'),
(449, 'CAREFREE protege slips normal cotton fragancia fresca caja 40 + 4 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 2.07, 'https://www.dia.es/product_images/116098/116098_ISO_0_ES.jpg?imwidth=392'),
(450, 'LICOR DEL POLO pasta dentífrica clorofila tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.99, 'https://www.dia.es/product_images/56052/56052_ISO_0_ES.jpg?imwidth=392'),
(451, 'CAMPO CURERO vino tinto viñas viejas DO Toro botella 75 cl', 'dia.es', 'bodega|vino|tinto', 3.99, 'https://www.dia.es/product_images/262763/262763_ISO_0_ES.jpg?imwidth=392'),
(452, 'DIA VEGECAMPO pimientos del piquillo enteros lata 150 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.35, 'https://www.dia.es/product_images/17949/17949_ISO_0_ES.jpg?imwidth=392'),
(453, 'CARBONELL aceite  de oliva virgen extra botella 1 lt', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 8.59, 'https://www.dia.es/product_images/70791/70791_ISO_0_ES.jpg?imwidth=392'),
(454, 'Cebolla dulce malla 1 Kg', 'dia.es', 'frescos|verduras_y_hortalizas|ajos_cebollas_y_puerros', 2.25, 'https://www.dia.es/product_images/132920/132920_ISO_0_ES.jpg?imwidth=392'),
(455, 'SELECCIÓN DE DIA lomo extra adobado bandeja 300 gr', 'dia.es', 'frescos|carne|cerdo', 1.99, 'https://www.dia.es/product_images/164337/164337_ISO_0_ES.jpg?imwidth=392'),
(456, 'SMINT pastillas eucalipto sin azúcar lata 35 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.50, 'https://www.dia.es/product_images/149804/149804_ISO_0_ES.jpg?imwidth=392'),
(457, 'COLGATE cepillo dental extracleam blister 4 unidades', 'dia.es', 'cuidado_personal|cuidado_bucal', 3.39, 'https://www.dia.es/product_images/76715/76715_ISO_0_ES.jpg?imwidth=392'),
(458, 'AS Selection alimento para perros mini rico en salmón bolsa 2 Kg', 'dia.es', 'mascotas|perros', 6.75, 'https://www.dia.es/product_images/208166/208166_ISO_0_ES.jpg?imwidth=392'),
(459, 'Patata lavada malla 5 Kg', 'dia.es', 'frescos|verduras_y_hortalizas|patatas_y_zanahorias', 3.69, 'https://www.dia.es/product_images/17601/17601_ISO_0_ES.jpg?imwidth=392'),
(460, 'CABO DE PEÑAS berberechos al natural 45-55 piezas lata 63 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 4.39, 'https://www.dia.es/product_images/252467/252467_ISO_0_ES.jpg?imwidth=392'),
(461, 'GERBER manzana albaricoque y melocotón tarrito 125 gr', 'dia.es', 'bebe|potitos_y_tarritos', 1.80, 'https://www.dia.es/product_images/286893/286893_ISO_0_ES.jpg?imwidth=392'),
(462, 'JUNIORSMILE fresa y plátano pouch 100 gr', 'dia.es', 'bebe|potitos_y_tarritos', 0.95, 'https://www.dia.es/product_images/179518/179518_ISO_0_ES.jpg?imwidth=392'),
(463, 'BICENTURY tortita de maiz queso & albahaca paquete 123 gr', 'dia.es', 'despensa|dieteticos|perdida_de_peso', 2.29, 'https://www.dia.es/product_images/179407/179407_ISO_0_ES.jpg?imwidth=392'),
(464, 'FRITOS sabor barbacoa bolsa 146 gr', 'dia.es', 'despensa|aperitivos', 1.99, 'https://www.dia.es/product_images/11620/11620_ISO_0_ES.jpg?imwidth=392'),
(465, 'SOMAT abrillantador para máquina lavavajillas bote 500 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 3.57, 'https://www.dia.es/product_images/219227/219227_ISO_0_ES.jpg?imwidth=392'),
(466, 'FLORA margarina proactiv barqueta 225 gr', 'dia.es', 'despensa|lacteos_y_huevos|mantequilla_y_margarina', 3.09, 'https://www.dia.es/product_images/65292/65292_ISO_0_ES.jpg?imwidth=392'),
(467, 'KELLOGGS cereales special k con frutas rojas caja 300 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 4.05, 'https://www.dia.es/product_images/37838/37838_ISO_0_ES.jpg?imwidth=392'),
(468, 'BREKKIES Delicious alimento para perros con salmón bolsa 2.7 Kg', 'dia.es', 'mascotas|perros', 9.39, 'https://www.dia.es/product_images/285498/285498_ISO_0_ES.jpg?imwidth=392'),
(469, 'ESGIR Crunchy crumbs rebozado crujiente SIN GLUTEN bolsa 200 gr', 'dia.es', 'despensa|pan|pan_rallado', 1.85, 'https://www.dia.es/product_images/162439/162439_ISO_0_ES.jpg?imwidth=392'),
(470, 'DIA AL PUNTO ensaladilla rusa tarrina 160 gr', 'dia.es', 'platos_preparados|ensaladas', 1.95, 'https://www.dia.es/product_images/284385/284385_ISO_0_ES.jpg?imwidth=392'),
(471, 'CUETARA Napolitanas bizcochitos con relleno sabor canela caja 6 uds', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 3.05, 'https://www.dia.es/product_images/235003/235003_ISO_0_ES.jpg?imwidth=392'),
(472, 'AUSONIA compresas noche super plus bolsa 9 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 2.54, 'https://www.dia.es/product_images/151881/151881_ISO_0_ES.jpg?imwidth=392'),
(473, 'PAZO DE VILANE huevos camperos estuche 12 uds', 'dia.es', 'despensa|lacteos_y_huevos|huevos', 3.55, 'https://www.dia.es/product_images/241893/241893_ISO_0_ES.jpg?imwidth=392'),
(474, 'EL MOLINO DE DIA magdalenas cuadradas individuales bolsa 350 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 1.65, 'https://www.dia.es/product_images/105303/105303_ISO_0_ES.jpg?imwidth=392'),
(475, 'BIAZOO snack para perros tiras de ternera bolsa 80 gr', 'dia.es', 'mascotas|perros', 2.05, 'https://www.dia.es/product_images/289685/289685_ISO_0_ES.jpg?imwidth=392'),
(476, 'DIA MARI MARINERA gambón crudo caja 800 gr', 'dia.es', 'congelados|pescado_y_marisco', 9.99, 'https://www.dia.es/product_images/273235/273235_ISO_0_ES.jpg?imwidth=392'),
(477, 'DIA SNACK MANIAC conos de maíz sabor queso y bacon bolsa 100 gr', 'dia.es', 'despensa|aperitivos', 0.90, 'https://www.dia.es/product_images/16073/16073_ISO_0_ES.jpg?imwidth=392'),
(478, 'NESTLE cereales nesquik paquete 375 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 3.65, 'https://www.dia.es/product_images/55685/55685_ISO_0_ES.jpg?imwidth=392'),
(479, 'PROTOS vino blanco verdejo DO Rueda botella 75 cl', 'dia.es', 'bodega|vino|blanco', 7.65, 'https://www.dia.es/product_images/132500/132500_ISO_0_ES.jpg?imwidth=392'),
(480, 'BONTE mousse volumen total fuerte spray 300 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 2.29, 'https://www.dia.es/product_images/139904/139904_ISO_0_ES.jpg?imwidth=392'),
(481, 'FRUITS ATTRACTION Colonia de vainilla spray 100 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|colonias', 4.85, 'https://www.dia.es/product_images/249083/249083_ISO_0_ES.jpg?imwidth=392'),
(482, 'NESTLE Yogolino sabor natural pack 4x100 gr', 'dia.es', 'bebe|bebidas_galletas_y_yogures', 3.19, 'https://www.dia.es/product_images/159174/159174_ISO_0_ES.jpg?imwidth=392'),
(483, 'SELECCIÓN DE DIA chorizo oreado bandeja 300 gr', 'dia.es', 'frescos|carne|cerdo', 2.29, 'https://www.dia.es/product_images/273359/273359_ISO_0_ES.jpg?imwidth=392'),
(484, 'WIPP EXPRESS detergente máquina líquido limpio y liso botella 60 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 16.95, 'https://www.dia.es/product_images/282717/282717_ISO_0_ES.jpg?imwidth=392'),
(485, 'DIA VEGECAMPO rúcula bolsa 50 gr', 'dia.es', 'frescos|verduras_y_hortalizas|verduras_y_ensaladas_preparadas', 0.72, 'https://www.dia.es/product_images/212745/212745_ISO_0_ES.jpg?imwidth=392'),
(486, 'ECOCESTA tortitas de espelta bio bolsa 108 gr', 'dia.es', 'despensa|dieteticos|perdida_de_peso', 1.69, 'https://www.dia.es/product_images/257255/257255_ISO_0_ES.jpg?imwidth=392'),
(487, 'DIA AL PUNTO hummus clásico tarrina 220 gr', 'dia.es', 'platos_preparados|legumbres', 1.15, 'https://www.dia.es/product_images/278849/278849_ISO_0_ES.jpg?imwidth=392'),
(488, 'COLGATE pasta dentífrica max fresh gel flúor tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 2.09, 'https://www.dia.es/product_images/724/724_ISO_0_ES.jpg?imwidth=392'),
(489, 'NATUR TIERRA arándano rojo americano antioxidante envase 30 cápsulas', 'dia.es', 'despensa|dieteticos|complementos_nutricionales', 5.99, 'https://www.dia.es/product_images/183257/183257_ISO_0_ES.jpg?imwidth=392'),
(490, 'NATREEN STEVIA edulcorante líquido frasco 125 ml', 'dia.es', 'despensa|desayunos_y_dulces|azucar_y_edulcorantes', 5.39, 'https://www.dia.es/product_images/161981/161981_ISO_0_ES.jpg?imwidth=392'),
(491, 'AS paté para perros rico en ave y con ternera tarro 300 gr', 'dia.es', 'mascotas|perros', 1.09, 'https://www.dia.es/product_images/70294/70294_ISO_0_ES.jpg?imwidth=392'),
(492, 'LICOR DEL POLO enjuague bucal triple accion sabor original botella 500 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 4.59, 'https://www.dia.es/product_images/152030/152030_ISO_0_ES.jpg?imwidth=392'),
(493, 'LA ASTURIANA garbanzos cocidos frasco 210 gr', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 0.99, 'https://www.dia.es/product_images/166948/166948_ISO_0_ES.jpg?imwidth=392'),
(494, 'DIA PLANETA BEBE pañales 4-9 kgs talla 3 paquete 102 uds', 'dia.es', 'bebe|panales', 15.09, 'https://www.dia.es/product_images/268407/268407_ISO_0_ES.jpg?imwidth=392'),
(495, 'DANI berberechos al natural 35/45 piezas lata 63 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 5.19, 'https://www.dia.es/product_images/280358/280358_ISO_0_ES.jpg?imwidth=392'),
(496, 'KEMPHOR pasta dentífrica blanqueante con carbón activo tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 3.90, 'https://www.dia.es/product_images/273057/273057_ISO_0_ES.jpg?imwidth=392'),
(497, 'HARIBO ositos de oro bolsa 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.89, 'https://www.dia.es/product_images/159655/159655_ISO_0_ES.jpg?imwidth=392'),
(498, 'AS alimento para gatos senior bolsa 1,5 Kg', 'dia.es', 'mascotas|gatos', 3.99, 'https://www.dia.es/product_images/204128/204128_ISO_0_ES.jpg?imwidth=392'),
(499, 'PANTENE laca fijación ultra fuerte spray 250 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 4.19, 'https://www.dia.es/product_images/268770/268770_ISO_0_ES.jpg?imwidth=392'),
(500, 'SEÑORÍO DE ONDAS vino tinto reserva DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 3.29, 'https://www.dia.es/product_images/49601/49601_ISO_0_ES.jpg?imwidth=392'),
(501, 'RIOJAVINA vinagre de limpieza botella 1 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 0.99, 'https://www.dia.es/product_images/288759/288759_ISO_0_ES.jpg?imwidth=392'),
(502, 'EL MOLINO DE DIA palmeritas de hojaldre al cacao bolsa 260 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 2.15, 'https://www.dia.es/product_images/82570/82570_ISO_0_ES.jpg?imwidth=392'),
(503, 'ERISTOFF vodka pink botella 70 cl', 'dia.es', 'bodega|alcoholes|vodka', 11.55, 'https://www.dia.es/product_images/282948/282948_ISO_0_ES.jpg?imwidth=392'),
(504, 'DIA ZUMOSFERA bebida de fruta con leche melón y sandía pack 3 unidades 330 ml', 'dia.es', 'bebidas|zumos', 1.55, 'https://www.dia.es/product_images/271648/271648_ISO_0_ES.jpg?imwidth=392'),
(505, 'DONNA DELICIA galletas rellenas con crema de avellanas caja 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.49, 'https://www.dia.es/product_images/282605/282605_ISO_0_ES.jpg?imwidth=392'),
(506, 'DIA CAPRICHOSO cheesecake pack 2 unidades 90 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.75, 'https://www.dia.es/product_images/208224/208224_ISO_0_ES.jpg?imwidth=392'),
(507, 'DIA RAMBLERS cerveza especial lata 33 cl', 'dia.es', 'bebidas|cervezas|especiales', 0.39, 'https://www.dia.es/product_images/36797/36797_ISO_0_ES.jpg?imwidth=392'),
(508, 'WEIDER barritas de proteínas sabor avellanas caja 3 uds', 'dia.es', 'despensa|dieteticos|complementos_nutricionales', 3.49, 'https://www.dia.es/product_images/240925/240925_ISO_0_ES.jpg?imwidth=392'),
(509, 'PASCUAL leche semidesnatada sin lactosa envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.43, 'https://www.dia.es/product_images/119675/119675_ISO_0_ES.jpg?imwidth=392'),
(510, 'DIA IMAQE Naturals agua micelar bote 200 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 3.59, 'https://www.dia.es/product_images/272028/272028_ISO_0_ES.jpg?imwidth=392'),
(511, 'EL MOLINO DE DIA pan de molde integral 100% bolsa 820 gr', 'dia.es', 'despensa|pan|pan_de_molde', 1.39, 'https://www.dia.es/product_images/266075/266075_ISO_0_ES.jpg?imwidth=392'),
(512, 'POLIDENT crema fijadora para protesis dental tubo 40 gr', 'dia.es', 'cuidado_personal|cuidado_bucal', 4.80, 'https://www.dia.es/product_images/58349/58349_ISO_0_ES.jpg?imwidth=392'),
(513, 'OLD EL PASO sazonador para fajitas sobre 30 gr', 'dia.es', 'despensa|cocina_internacional|mejicana', 1.30, 'https://www.dia.es/product_images/139419/139419_ISO_0_ES.jpg?imwidth=392'),
(514, 'MIRANDOLI vino tinto reserva DO Utiel Requena botella 75 cl', 'dia.es', 'bodega|vino|tinto', 3.09, 'https://www.dia.es/product_images/266001/266001_ISO_0_ES.jpg?imwidth=392'),
(515, 'FASUTINO VII vino tinto cvc DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 3.99, 'https://www.dia.es/product_images/48138/48138_ISO_0_ES.jpg?imwidth=392'),
(516, 'MANDUL rondo clásico de naranja envase 400 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 2.75, 'https://www.dia.es/product_images/291300/291300_ISO_0_ES.jpg?imwidth=392'),
(517, 'EL MOLINO DE DIA picos camperos con aceite de oliva virgen extra bolsa 200 gr', 'dia.es', 'despensa|pan|picos_de_pan', 1.45, 'https://www.dia.es/product_images/181332/181332_ISO_0_ES.jpg?imwidth=392'),
(518, 'SPONTEX guantes desechables talla S caja 20 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 2.55, 'https://www.dia.es/product_images/235924/235924_ISO_0_ES.jpg?imwidth=392'),
(519, 'DIA CAPRICHOSO natillas sabor vainilla pack 6 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.55, 'https://www.dia.es/product_images/129000/129000_ISO_0_ES.jpg?imwidth=392'),
(520, 'DIA LA LLAMA servilleta 100%  reciclada 2 capas paquete 50 uds', 'dia.es', 'cuidado_del_hogar|papel', 1.69, 'https://www.dia.es/product_images/276695/276695_ISO_0_ES.jpg?imwidth=392');
INSERT INTO `producto` (`Id_producto`, `Name`, `SUPERMARKET`, `CATEGORY`, `PRICE`, `IMG`) VALUES
(521, 'DIA IMAQE desodorante con extracto de rosa mosqueta roll on 50 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 0.85, 'https://www.dia.es/product_images/274533/274533_ISO_0_ES.jpg?imwidth=392'),
(522, 'HERO Diet mermelada de melocotón frasco 280 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.59, 'https://www.dia.es/product_images/246214/246214_ISO_0_ES.jpg?imwidth=392'),
(523, 'DR. OETKER coco rallado bolsa 125 gr', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 2.30, 'https://www.dia.es/product_images/227497/227497_ISO_0_ES.jpg?imwidth=392'),
(524, 'NIVEA crema de día hidratante antiarrugas todo tipo de piel tarro 50 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 7.99, 'https://www.dia.es/product_images/129437/129437_ISO_0_ES.jpg?imwidth=392'),
(525, 'EL MOLINO DE DIA picatostes fritos bolsa 75 gr', 'dia.es', 'despensa|pan|picos_de_pan', 0.69, 'https://www.dia.es/product_images/60049/60049_ISO_0_ES.jpg?imwidth=392'),
(526, 'VITAKRAFT alimento para gatos con pescado caja 6 x 85 gr', 'dia.es', 'mascotas|gatos', 4.15, 'https://www.dia.es/product_images/273262/273262_ISO_0_ES.jpg?imwidth=392'),
(527, 'CAMPOFRIO salchichas frankfurt de pavo pack 3 x 140 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.99, 'https://www.dia.es/product_images/288206/288206_ISO_0_ES.jpg?imwidth=392'),
(528, 'SANEX gel de ducha biome protect atopiderm nutri repair bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 4.69, 'https://www.dia.es/product_images/271017/271017_ISO_0_ES.jpg?imwidth=392'),
(529, 'HERO frutas variadas tarrito 2 x 235 gr', 'dia.es', 'bebe|potitos_y_tarritos', 3.19, 'https://www.dia.es/product_images/285494/285494_ISO_0_ES.jpg?imwidth=392'),
(530, 'MILKA chocolate con oreo tableta 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 1.29, 'https://www.dia.es/product_images/148491/148491_ISO_0_ES.jpg?imwidth=392'),
(531, 'LA NOREÑENSE albóndigas de pollo lata 415 gr', 'dia.es', 'despensa|conservas|conservas_de_carne', 1.75, 'https://www.dia.es/product_images/285846/285846_ISO_0_ES.jpg?imwidth=392'),
(532, 'Tomate Cherokee bandeja 400 gr', 'dia.es', 'frescos|verduras_y_hortalizas|tomates_pimientos_y_pepinos', 1.89, 'https://www.dia.es/product_images/273860/273860_ISO_0_ES.jpg?imwidth=392'),
(533, 'COLGATE pasta dentífrica sensitive blanqueador tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 2.95, 'https://www.dia.es/product_images/214760/214760_ISO_0_ES.jpg?imwidth=392'),
(534, 'QUELY quelitas crujientes paquete 200 gr', 'dia.es', 'despensa|pan|biscotes', 1.59, 'https://www.dia.es/product_images/114191/114191_ISO_0_ES.jpg?imwidth=392'),
(535, 'DIA LACTEA queso emmental rallado bolsa 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.07, 'https://www.dia.es/product_images/16296/16296_ISO_0_ES.jpg?imwidth=392'),
(536, 'FAIRY lavavajillas máquina platinum plus limón bolsa 16 cápsulas', 'dia.es', 'cuidado_del_hogar|lavavajillas', 7.99, 'https://www.dia.es/product_images/257617/257617_ISO_0_ES.jpg?imwidth=392'),
(537, 'ORAL B cabezal de recambio para cepillo cross action envase 2 uds', 'dia.es', 'cuidado_personal|cuidado_bucal', 14.99, 'https://www.dia.es/product_images/212719/212719_ISO_0_ES.jpg?imwidth=392'),
(538, 'HERO Baby buenas noches guisantes con jamón tarrito 2x190 gr', 'dia.es', 'bebe|potitos_y_tarritos', 3.59, 'https://www.dia.es/product_images/64804/64804_ISO_0_ES.jpg?imwidth=392'),
(539, 'GANCEDO callos a la madrileña envase 500 gr', 'dia.es', 'platos_preparados|carne', 3.97, 'https://www.dia.es/product_images/285228/285228_ISO_0_ES.jpg?imwidth=392'),
(540, 'SKITTLES caramelos ácidos crazy sours bolsa 174 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.99, 'https://www.dia.es/product_images/194763/194763_ISO_0_ES.jpg?imwidth=392'),
(541, 'LUENGO lentenja pardina paquete 500 gr', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 1.95, 'https://www.dia.es/product_images/1878/1878_ISO_0_ES.jpg?imwidth=392'),
(542, 'DIA infusión menta poleo estuche 25 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 0.95, 'https://www.dia.es/product_images/1529/1529_ISO_0_ES.jpg?imwidth=392'),
(543, 'BAYECO guantes de latex talla M caja 30 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 2.99, 'https://www.dia.es/product_images/291041/291041_ISO_0_ES.jpg?imwidth=392'),
(544, 'DIA MARI MARINERA sardinas picantonas lata 82 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.25, 'https://www.dia.es/product_images/222373/222373_ISO_0_ES.jpg?imwidth=392'),
(545, 'TOPAZ vino blanco Pedro Ximénez DO Jerez botella 75 cl', 'dia.es', 'bodega|vino|generoso_y_dulce', 5.99, 'https://www.dia.es/product_images/265304/265304_ISO_0_ES.jpg?imwidth=392'),
(546, 'Nuez premium malla 330 gr', 'dia.es', 'despensa|aperitivos', 1.99, 'https://www.dia.es/product_images/273761/273761_ISO_0_ES.jpg?imwidth=392'),
(547, 'BYLY desodorante sensitive roll on 50 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 1.95, 'https://www.dia.es/product_images/151874/151874_ISO_0_ES.jpg?imwidth=392'),
(548, 'DIA MARI MARINERA maravillas de mar al ajillo lata 50 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.49, 'https://www.dia.es/product_images/89983/89983_ISO_0_ES.jpg?imwidth=392'),
(549, 'CASTILLO DE VELASCO vino de cocina DO Montilla Moriles botella 75 cl', 'dia.es', 'bodega|vino|blanco', 1.99, 'https://www.dia.es/product_images/275266/275266_ISO_0_ES.jpg?imwidth=392'),
(550, 'HERO nanos plátano, fresa y manzana pouch 100 gr', 'dia.es', 'bebe|potitos_y_tarritos', 1.35, 'https://www.dia.es/product_images/155755/155755_ISO_0_ES.jpg?imwidth=392'),
(551, 'ANDRÉS picos pan rustic bolsa 140 gr', 'dia.es', 'despensa|pan|picos_de_pan', 1.59, 'https://www.dia.es/product_images/224515/224515_ISO_0_ES.jpg?imwidth=392'),
(552, 'SCOTCH BRITE estropajo metálico bolsa 3 + 1 ud', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 2.39, 'https://www.dia.es/product_images/215910/215910_ISO_0_ES.jpg?imwidth=392'),
(553, 'DIA SELECCIÓN MUNDIAL salmón ahumado sobre 100 gr', 'dia.es', 'frescos|pescado_y_marisco|ahumados_y_salazones', 3.99, 'https://www.dia.es/product_images/263686/263686_ISO_0_ES.jpg?imwidth=392'),
(554, 'DONNA DELICIA galletas rellenas con chocolate caja 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.49, 'https://www.dia.es/product_images/282604/282604_ISO_0_ES.jpg?imwidth=392'),
(555, 'AQUARIUS bebida refrescante de naranja zero botella 1.5 lt', 'dia.es', 'bebidas|bebidas_isotonicas_y_energeticas', 1.95, 'https://www.dia.es/product_images/124653/124653_ISO_0_ES.jpg?imwidth=392'),
(556, 'ZOCO pacharán botella 70 cl', 'dia.es', 'bodega|licores|pacharan', 9.05, 'https://www.dia.es/product_images/248455/248455_ISO_0_ES.jpg?imwidth=392'),
(557, 'EL MOLINO DE DIA pan de molde 100% integral bolsa 460 gr', 'dia.es', 'despensa|pan|pan_de_molde', 1.05, 'https://www.dia.es/product_images/266136/266136_ISO_0_ES.jpg?imwidth=392'),
(558, 'BLUME vino blanco DO Rueda botella 75 cl', 'dia.es', 'bodega|vino|blanco', 5.95, 'https://www.dia.es/product_images/46217/46217_ISO_0_ES.jpg?imwidth=392'),
(559, 'DIA MARI MARINERA filetes de caballa del sur en aceite de oliva lata 85 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.25, 'https://www.dia.es/product_images/284386/284386_ISO_0_ES.jpg?imwidth=392'),
(560, 'DIA MIELOVE miel de romero bote 350 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 3.59, 'https://www.dia.es/product_images/222953/222953_ISO_0_ES.jpg?imwidth=392'),
(561, 'DIA AL PUNTO gazpacho pack 3 unidades de 330 ml', 'dia.es', 'platos_preparados|gazpachos_y_salmorejos', 2.25, 'https://www.dia.es/product_images/82955/82955_ISO_0_ES.jpg?imwidth=392'),
(562, 'DIA LACTEA leche condensada bote 1 Kg', 'dia.es', 'despensa|lacteos_y_huevos|leche', 3.99, 'https://www.dia.es/product_images/6006/6006_ISO_0_ES.jpg?imwidth=392'),
(563, 'DIA caldo de pollo estuche 24 pastillas', 'dia.es', 'despensa|sopas|caldos', 1.25, 'https://www.dia.es/product_images/150521/150521_ISO_0_ES.jpg?imwidth=392'),
(564, 'DIA NUESTRA ALACENA taco de jamón curado pieza 300 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 4.99, 'https://www.dia.es/product_images/274061/274061_ISO_0_ES.jpg?imwidth=392'),
(565, 'DIA FIDIAS yogur griego con plátano y caramelo pack 4 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 1.89, 'https://www.dia.es/product_images/264771/264771_ISO_0_ES.jpg?imwidth=392'),
(566, 'DIA MEYOMI vela perfumada vainilla caja 120 gr', 'dia.es', 'cuidado_del_hogar|ambientadores', 1.95, 'https://www.dia.es/product_images/288943/288943_ISO_0_ES.jpg?imwidth=392'),
(567, 'FINI golosinas torcidas rellenas pica pica bolsa 180 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.09, 'https://www.dia.es/product_images/272844/272844_ISO_0_ES.jpg?imwidth=392'),
(568, 'CASTILLO DE HARO vino tinto reserva DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 6.99, 'https://www.dia.es/product_images/263404/263404_ISO_0_ES.jpg?imwidth=392'),
(569, 'MCCAIN patatas fritas golden long bolsa 1 Kg', 'dia.es', 'congelados|verduras_y_hortalizas', 3.45, 'https://www.dia.es/product_images/23106/23106_ISO_0_ES.jpg?imwidth=392'),
(570, 'SELECCIÓN DE DIA medallón de cadera vacuno bandeja (peso aprox. 450 gr)', 'dia.es', 'frescos|carne|vacuno', 7.65, 'https://www.dia.es/product_images/277913/277913_ISO_0_ES.jpg?imwidth=392'),
(571, 'NESCAFE café farmers origins Colombia caja 10 cápsulas 53 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 3.79, 'https://www.dia.es/product_images/293054/293054_ISO_0_ES.jpg?imwidth=392'),
(572, 'AMOOS papel multiusos Jumbo 2 capas 1 rollo', 'dia.es', 'cuidado_del_hogar|papel', 2.99, 'https://www.dia.es/product_images/289919/289919_ISO_0_ES.jpg?imwidth=392'),
(573, 'FONTANEDA galletas digestive finas con chocolate negro caja 170 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.45, 'https://www.dia.es/product_images/258933/258933_ISO_0_ES.jpg?imwidth=392'),
(574, 'LU PRINCIPE mini galletas rellenas de chocolate pack 4 bolsitas paquete 160 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.90, 'https://www.dia.es/product_images/117161/117161_ISO_0_ES.jpg?imwidth=392'),
(575, 'TENSO PRO limpiador jabonoso madera botella 1 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 1.95, 'https://www.dia.es/product_images/289425/289425_ISO_0_ES.jpg?imwidth=392'),
(576, 'EL AGUILA cerveza dorada lata 33 cl', 'dia.es', 'bebidas|cervezas|nacionales', 0.89, 'https://www.dia.es/product_images/263304/263304_ISO_0_ES.jpg?imwidth=392'),
(577, 'SCHWEPPES tónica pink lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.99, 'https://www.dia.es/product_images/268916/268916_ISO_0_ES.jpg?imwidth=392'),
(578, 'MAHOU 5 ESTRELLAS cerveza radler con limón lata 33 cl', 'dia.es', 'bebidas|cervezas|con_limon', 0.89, 'https://www.dia.es/product_images/249193/249193_ISO_0_ES.jpg?imwidth=392'),
(579, 'PANTENE Pro-v mascarilla suave y liso anti encrespamiento tarro 300 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 4.89, 'https://www.dia.es/product_images/144667/144667_ISO_0_ES.jpg?imwidth=392'),
(580, 'DIA NATURMUNDO tortitas de maíz paquete 130 gr', 'dia.es', 'despensa|dieteticos|perdida_de_peso', 1.19, 'https://www.dia.es/product_images/166802/166802_ISO_0_ES.jpg?imwidth=392'),
(581, 'DIA DELICIOUS mermelada de frutas silvestres frasco 320 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.15, 'https://www.dia.es/product_images/212873/212873_ISO_0_ES.jpg?imwidth=392'),
(582, 'DIA SUEÑOS gelatina de fresa, limón y multifruta pack 6 unidades 100 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.05, 'https://www.dia.es/product_images/139596/139596_ISO_0_ES.jpg?imwidth=392'),
(583, 'LA PIEL crema liquida color marrón bote 50 ml', 'dia.es', 'cuidado_del_hogar|calzado', 1.25, 'https://www.dia.es/product_images/283344/283344_ISO_0_ES.jpg?imwidth=392'),
(584, 'NESCAFE café soluble 3 en 1 estuche 10 sobres 180 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 2.79, 'https://www.dia.es/product_images/143005/143005_ISO_0_ES.jpg?imwidth=392'),
(585, 'COLOR SENSATION tinte Rubio Caramelo Nº 6,35 caja 1 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 4.59, 'https://www.dia.es/product_images/155542/155542_ISO_0_ES.jpg?imwidth=392'),
(586, 'DIA MARI MARINERA chipirones rellenos en salsa americana lata 72 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.45, 'https://www.dia.es/product_images/51262/51262_ISO_0_ES.jpg?imwidth=392'),
(587, 'CAMPO VIEJO vino tinto crianza DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 5.77, 'https://www.dia.es/product_images/50657/50657_ISO_0_ES.jpg?imwidth=392'),
(588, 'ULTIMA alimento para gatos especial digestión delicada bolsa 1.5 Kg', 'dia.es', 'mascotas|gatos', 9.99, 'https://www.dia.es/product_images/172753/172753_ISO_0_ES.jpg?imwidth=392'),
(589, 'BETIK vaso desechable compostable de 1 lt envase 10 uds', 'dia.es', 'cuidado_del_hogar|bazar', 3.35, 'https://www.dia.es/product_images/284197/284197_ISO_0_ES.jpg?imwidth=392'),
(590, 'DIA AROM\'ARTE  café espresso intenso caja 20 cápsulas', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 2.69, 'https://www.dia.es/product_images/273821/273821_ISO_0_ES.jpg?imwidth=392'),
(591, 'DIA AL PUNTO pizza carbonara envase 400 gr', 'dia.es', 'platos_preparados|pizzas_refrigeradas', 2.75, 'https://www.dia.es/product_images/119533/119533_ISO_0_ES.jpg?imwidth=392'),
(592, 'FINDUS nuggets de pescado extracrujientes caja 245 gr', 'dia.es', 'congelados|pescado_y_marisco', 3.29, 'https://www.dia.es/product_images/291397/291397_ISO_0_ES.jpg?imwidth=392'),
(593, 'MIRANDOLI vino tinto crianza DO Utiel Requena botella 75 cl', 'dia.es', 'bodega|vino|tinto', 2.39, 'https://www.dia.es/product_images/266000/266000_ISO_0_ES.jpg?imwidth=392'),
(594, 'BALLANTINES whisky escocés blended 10 años botella 70 cl', 'dia.es', 'bodega|alcoholes|whisky', 20.99, 'https://www.dia.es/product_images/279891/279891_ISO_0_ES.jpg?imwidth=392'),
(595, 'ULTIMA alimento para gatos tracto urinario con pollo bolsa 750 gr', 'dia.es', 'mascotas|gatos', 5.89, 'https://www.dia.es/product_images/271305/271305_ISO_0_ES.jpg?imwidth=392'),
(596, 'BINACA pasta dentífrica antiplaca tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 2.50, 'https://www.dia.es/product_images/17451/17451_ISO_0_ES.jpg?imwidth=392'),
(597, 'MAGGI fideos fusian India curry sobre 118 gr', 'dia.es', 'despensa|cocina_internacional|otras', 2.09, 'https://www.dia.es/product_images/285600/285600_ISO_0_ES.jpg?imwidth=392'),
(598, 'Longaniza fresca sin tripa bandeja 375 gr', 'dia.es', 'frescos|carne|cerdo', 2.19, 'https://www.dia.es/product_images/262408/262408_ISO_0_ES.jpg?imwidth=392'),
(599, 'NATURAL HONEY gel de ducha pure micelar bote 650 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 2.39, 'https://www.dia.es/product_images/258198/258198_ISO_0_ES.jpg?imwidth=392'),
(600, 'NATIVA leche infantil inicio 1 bote 800 gr', 'dia.es', 'bebe|leche_para_bebes', 9.95, 'https://www.dia.es/product_images/129742/129742_ISO_0_ES.jpg?imwidth=392'),
(601, 'EL MOLINO DE DIA pan rallado bolsa 750 gr', 'dia.es', 'despensa|pan|pan_rallado', 0.95, 'https://www.dia.es/product_images/56050/56050_ISO_0_ES.jpg?imwidth=392'),
(602, 'VIVISIMA+ chitosan envase 50 capsulas', 'dia.es', 'despensa|dieteticos|perdida_de_peso', 3.99, 'https://www.dia.es/product_images/145579/145579_ISO_0_ES.jpg?imwidth=392'),
(603, 'NESTLE jardinera de ternera tarrito 190 gr', 'dia.es', 'bebe|potitos_y_tarritos', 1.59, 'https://www.dia.es/product_images/268320/268320_ISO_0_ES.jpg?imwidth=392'),
(604, 'SEÑORIO DE ONDAS vino tinto gran reserva DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 7.99, 'https://www.dia.es/product_images/222263/222263_ISO_0_ES.jpg?imwidth=392'),
(605, 'BONTE pasta dentífrica herbal tubo 100 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.10, 'https://www.dia.es/product_images/166181/166181_ISO_0_ES.jpg?imwidth=392'),
(606, 'DIA ZUMOSFERA bebida de frutas con leche caribe pack 6 unidades 200 ml', 'dia.es', 'bebidas|zumos', 1.55, 'https://www.dia.es/product_images/158331/158331_ISO_0_ES.jpg?imwidth=392'),
(607, 'DIA SELECCIÓN MUNDIAL pasta penne paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.29, 'https://www.dia.es/product_images/275006/275006_ISO_0_ES.jpg?imwidth=392'),
(608, 'DIA lejía con detergente limón botella 2 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 1.19, 'https://www.dia.es/product_images/252380/252380_ISO_0_ES.jpg?imwidth=392'),
(609, 'PALETTE intensive age color tinte Rubio Claro Nº 9.0 caja 1 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 4.99, 'https://www.dia.es/product_images/292048/292048_ISO_0_ES.jpg?imwidth=392'),
(610, 'EL MOLINO DE DIA Barra de pan de picos 260 gr', 'dia.es', 'despensa|pan|pan_de_horno', 0.66, 'https://www.dia.es/product_images/121237/121237_ISO_0_ES.jpg?imwidth=392'),
(611, 'BIMBO pan de molde blanco grande bolsa 375 gr', 'dia.es', 'despensa|pan|pan_de_molde', 1.59, 'https://www.dia.es/product_images/207028/207028_ISO_0_ES.jpg?imwidth=392'),
(612, 'YBARRA espinacas frasco 425 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.49, 'https://www.dia.es/product_images/175198/175198_ISO_0_ES.jpg?imwidth=392'),
(613, 'AIRWICK ambientador automático fresh matic nenuco aparato + recambio 1 ud', 'dia.es', 'cuidado_del_hogar|ambientadores', 8.79, 'https://www.dia.es/product_images/19577/19577_ISO_0_ES.jpg?imwidth=392'),
(614, 'DODOT toallitas para bebés aqua pure pack 3 uds 48 uds', 'dia.es', 'bebe|toallitas', 10.49, 'https://www.dia.es/product_images/256775/256775_ISO_0_ES.jpg?imwidth=392'),
(615, 'ELPOZO salchichas king de pavo envase 330 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 2.29, 'https://www.dia.es/product_images/256940/256940_ISO_0_ES.jpg?imwidth=392'),
(616, 'DIAMANTE Vino blanco semidulce DO Rioja 75 cl', 'dia.es', 'bodega|vino|blanco', 4.30, 'https://www.dia.es/product_images/70959/70959_ISO_0_ES.jpg?imwidth=392'),
(617, 'DIA IMAQE gel de ducha con leche de coco bote 750 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 1.49, 'https://www.dia.es/product_images/273951/273951_ISO_0_ES.jpg?imwidth=392'),
(618, 'DIA ZUMOSFERA zumo de mandarina 100% envase 1 lt', 'dia.es', 'bebidas|zumos', 1.99, 'https://www.dia.es/product_images/274803/274803_ISO_0_ES.jpg?imwidth=392'),
(619, 'DIA IMAQE Naturals crema facial hidratante de día tarro 50 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 5.05, 'https://www.dia.es/product_images/272039/272039_ISO_0_ES.jpg?imwidth=392'),
(620, 'RIO SECO vino blanco verdejo DO Rueda botella 75 cl', 'dia.es', 'bodega|vino|blanco', 4.39, 'https://www.dia.es/product_images/265815/265815_ISO_0_ES.jpg?imwidth=392'),
(621, 'DIAMIR pimientos rojos pack 3 latas de 60 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.75, 'https://www.dia.es/product_images/202646/202646_ISO_0_ES.jpg?imwidth=392'),
(622, 'ALHAMBRA cerveza especial pack 6 botellas 20 cl', 'dia.es', 'bebidas|cervezas|nacionales', 3.49, 'https://www.dia.es/product_images/283778/283778_ISO_0_ES.jpg?imwidth=392'),
(623, 'VEGEDIA bebida de avena con calcio envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|bebidas_vegetales', 1.09, 'https://www.dia.es/product_images/207399/207399_ISO_0_ES.jpg?imwidth=392'),
(624, 'DANONE ACTIVIA bífidus de mango, papaya y soja pack 4 unidades 120 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 3.09, 'https://www.dia.es/product_images/59554/59554_ISO_0_ES.jpg?imwidth=392'),
(625, 'SCOTCH BRITE estropajo classic verde paquete 3 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 2.65, 'https://www.dia.es/product_images/165102/165102_ISO_0_ES.jpg?imwidth=392'),
(626, 'GALLO pesto rosso frasco 190 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 2.53, 'https://www.dia.es/product_images/253536/253536_ISO_0_ES.jpg?imwidth=392'),
(627, 'Ajo morado malla 400 gr', 'dia.es', 'frescos|verduras_y_hortalizas|ajos_cebollas_y_puerros', 1.89, 'https://www.dia.es/product_images/171596/171596_ISO_0_ES.jpg?imwidth=392'),
(628, 'LA PIARA paté de atún lata 2 x 75 gr', 'dia.es', 'despensa|pates_y_foies', 3.99, 'https://www.dia.es/product_images/129843/129843_ISO_0_ES.jpg?imwidth=392'),
(629, 'DIA alimento  para gatos bocaditos pollo y legumbres lata 400 gr', 'dia.es', 'mascotas|gatos', 0.75, 'https://www.dia.es/product_images/129013/129013_ISO_0_ES.jpg?imwidth=392'),
(630, 'GILLETTE fusion proglide maquinilla de afeitar recambio blíster 3 uds', 'dia.es', 'cuidado_personal|afeitado', 17.99, 'https://www.dia.es/product_images/271800/271800_ISO_0_ES.jpg?imwidth=392'),
(631, 'DIA IMAQE champú coco bote 400 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 2.55, 'https://www.dia.es/product_images/290118/290118_ISO_0_ES.jpg?imwidth=392'),
(632, 'LA SALVE cerveza lata 33 cl', 'dia.es', 'bebidas|cervezas|nacionales', 0.75, 'https://www.dia.es/product_images/277453/277453_ISO_0_ES.jpg?imwidth=392'),
(633, 'PAVOFRÍO fiambre de pechuga de pavo braseada envase 70 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.00, 'https://www.dia.es/product_images/220711/220711_ISO_0_ES.jpg?imwidth=392'),
(634, 'DON SIMON La huerta zumo de arándano, manzana y uva botella 750 ml', 'dia.es', 'bebidas|zumos', 2.39, 'https://www.dia.es/product_images/261862/261862_ISO_0_ES.jpg?imwidth=392'),
(635, 'BON MENU alimento para perros selección de carnes bolsa 10 Kg', 'dia.es', 'mascotas|perros', 20.79, 'https://www.dia.es/product_images/188110/188110_ISO_0_ES.jpg?imwidth=392'),
(636, 'WILKINSON maquinilla desechable extra 2 sensittive paquete 15 ud', 'dia.es', 'cuidado_personal|afeitado', 6.99, 'https://www.dia.es/product_images/185493/185493_ISO_0_ES.jpg?imwidth=392'),
(637, 'CASTILLO DE ALBAI vino tinto DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 4.35, 'https://www.dia.es/product_images/103843/103843_ISO_0_ES.jpg?imwidth=392'),
(638, 'BABYSMILE frutas variadas tarrito 2 x200 gr', 'dia.es', 'bebe|potitos_y_tarritos', 2.05, 'https://www.dia.es/product_images/151111/151111_ISO_0_ES.jpg?imwidth=392'),
(639, 'DANONE DANACOL yogur líquido fresa pack 6 unidades 100 g', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 4.49, 'https://www.dia.es/product_images/6527/6527_ISO_0_ES.jpg?imwidth=392'),
(640, 'DIA stevia edulcorante de mesa 150 comprimidos', 'dia.es', 'despensa|desayunos_y_dulces|azucar_y_edulcorantes', 1.89, 'https://www.dia.es/product_images/210776/210776_ISO_0_ES.jpg?imwidth=392'),
(641, 'KELLOGG\'S cereales extra barista paquete 350 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 3.89, 'https://www.dia.es/product_images/293070/293070_ISO_0_ES.jpg?imwidth=392'),
(642, 'DIA NUESTRA ALACENA lomo embuchado en lonchas pack 2 x 70 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 2.59, 'https://www.dia.es/product_images/274063/274063_ISO_0_ES.jpg?imwidth=392'),
(643, 'GERALDINO vino blanco de uva moscatel botella 75 cl', 'dia.es', 'bodega|vino|generoso_y_dulce', 3.60, 'https://www.dia.es/product_images/19361/19361_ISO_0_ES.jpg?imwidth=392'),
(644, 'Cebolla malla 2 Kg', 'dia.es', 'frescos|verduras_y_hortalizas|ajos_cebollas_y_puerros', 3.25, 'https://www.dia.es/product_images/19404/19404_ISO_0_ES.jpg?imwidth=392'),
(645, 'EL VENTERO queso fresco envase 500 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 3.80, 'https://www.dia.es/product_images/291399/291399_ISO_0_ES.jpg?imwidth=392'),
(646, 'VELERO ron añejo botella 70 cl', 'dia.es', 'bodega|alcoholes|ron', 5.65, 'https://www.dia.es/product_images/28695/28695_ISO_0_ES.jpg?imwidth=392'),
(647, 'DANTZA judía verde ecológica frasco 355 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 2.45, 'https://www.dia.es/product_images/169004/169004_ISO_0_ES.jpg?imwidth=392'),
(648, 'DIA ICEBERG chicles de fresa bote 98 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.99, 'https://www.dia.es/product_images/271744/271744_ISO_0_ES.jpg?imwidth=392'),
(649, 'L\'OREAL crema intensiva de día antiarrugas 45+ tarro 50 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 7.95, 'https://www.dia.es/product_images/218760/218760_ISO_0_ES.jpg?imwidth=392'),
(650, 'PASCUAL leche entera calcio envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.72, 'https://www.dia.es/product_images/125269/125269_ISO_0_ES.jpg?imwidth=392'),
(651, 'PRINGLES patatas fritas sour cream & onion tubo 165 gr', 'dia.es', 'despensa|aperitivos', 2.39, 'https://www.dia.es/product_images/18356/18356_ISO_0_ES.jpg?imwidth=392'),
(652, 'DIA CAFETERÍA café soluble clásico frasco 200 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 2.55, 'https://www.dia.es/product_images/34615/34615_ISO_0_ES.jpg?imwidth=392'),
(653, 'BONTE pasta dentífrica extra fresh tubo 100 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.10, 'https://www.dia.es/product_images/166179/166179_ISO_0_ES.jpg?imwidth=392'),
(654, 'AMBAR cerveza ipa lata 44 cl', 'dia.es', 'bebidas|cervezas|especiales', 1.79, 'https://www.dia.es/product_images/249322/249322_ISO_0_ES.jpg?imwidth=392'),
(655, 'CARMENCITA paellero sazonador para paella con azafrán caja 5 sobres', 'dia.es', 'despensa|sal_y_especias', 2.69, 'https://www.dia.es/product_images/11964/11964_ISO_0_ES.jpg?imwidth=392'),
(656, 'DOVE locion corporal intensiva piel extra seca bote 400 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 4.79, 'https://www.dia.es/product_images/100919/100919_ISO_0_ES.jpg?imwidth=392'),
(657, 'LA MOLISANA pasta farfalle rigate nº66 paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.94, 'https://www.dia.es/product_images/280323/280323_ISO_0_ES.jpg?imwidth=392'),
(658, 'KOIPE Fritos aceite de girasol botella 1 lt', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 2.83, 'https://www.dia.es/product_images/198607/198607_ISO_0_ES.jpg?imwidth=392'),
(659, 'CELTA leche entera envase 1.5 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.63, 'https://www.dia.es/product_images/1786/1786_ISO_0_ES.jpg?imwidth=392'),
(660, 'M&M\'S chocolate con leche relleno de cereales crispy tableta 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 2.79, 'https://www.dia.es/product_images/277442/277442_ISO_0_ES.jpg?imwidth=392'),
(661, 'REESE\'S mini tarrinas de chocolate rellenas de crema de cacahuete bolsa 90 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 2.45, 'https://www.dia.es/product_images/273106/273106_ISO_0_ES.jpg?imwidth=392'),
(662, 'LAMBRUSCO FLAMINIA vino rosado botella 75 cl', 'dia.es', 'bodega|espumosos', 3.09, 'https://www.dia.es/product_images/144629/144629_ISO_0_ES.jpg?imwidth=392'),
(663, 'MONSTER bebida energética ultra lata 50 cl', 'dia.es', 'bebidas|bebidas_isotonicas_y_energeticas', 1.70, 'https://www.dia.es/product_images/230828/230828_ISO_0_ES.jpg?imwidth=392'),
(664, 'EL MOLINO DE DIA regañás bolsa 250 gr', 'dia.es', 'despensa|pan|picos_de_pan', 0.99, 'https://www.dia.es/product_images/273116/273116_ISO_0_ES.jpg?imwidth=392'),
(665, 'DIA IMAQE bomba de baño melocotón caja 100 gr', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 2.05, 'https://www.dia.es/product_images/290291/290291_ISO_0_ES.jpg?imwidth=392'),
(666, 'COLGATE Total pasta dentífrica blanqueador tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 3.09, 'https://www.dia.es/product_images/254484/254484_ISO_0_ES.jpg?imwidth=392'),
(667, 'ORBIT chicle grageas sabor eucalipto bote 84 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 3.39, 'https://www.dia.es/product_images/170373/170373_ISO_0_ES.jpg?imwidth=392'),
(668, 'AROME DE FLEUR colonia flores blancas spray 150 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|colonias', 5.99, 'https://www.dia.es/product_images/276193/276193_ISO_0_ES.jpg?imwidth=392'),
(669, 'HARIBO golosinas de regaliz black edition bolsa 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.89, 'https://www.dia.es/product_images/198262/198262_ISO_0_ES.jpg?imwidth=392'),
(670, 'SANEX gel de ducha zero % family dosificador 750 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 4.99, 'https://www.dia.es/product_images/278701/278701_ISO_0_ES.jpg?imwidth=392'),
(671, 'SELECCIÓN DE DIA pechugas enteras de pollo bandeja (peso aprox. 750 gr)', 'dia.es', 'frescos|carne|pollo', 4.46, 'https://www.dia.es/product_images/17936/17936_ISO_0_ES.jpg?imwidth=392'),
(672, 'Tomate canario malla 750 gr', 'dia.es', 'frescos|verduras_y_hortalizas|tomates_pimientos_y_pepinos', 1.99, 'https://www.dia.es/product_images/272686/272686_ISO_0_ES.jpg?imwidth=392'),
(673, 'BONTE aceite corporal argán botella 500 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 2.49, 'https://www.dia.es/product_images/182891/182891_ISO_0_ES.jpg?imwidth=392'),
(674, 'PALETTE INTENSIVE CREME tinte Rubio Medio Nº 7 caja 1 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 4.59, 'https://www.dia.es/product_images/171397/171397_ISO_0_ES.jpg?imwidth=392'),
(675, 'DIA EL CENCERRO queso semicurado en lonchas envase 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.39, 'https://www.dia.es/product_images/263228/263228_ISO_0_ES.jpg?imwidth=392'),
(676, 'AQUABONA agua mineral natural botella 1.5 lt', 'dia.es', 'bebidas|aguas', 0.59, 'https://www.dia.es/product_images/53267/53267_ISO_0_ES.jpg?imwidth=392'),
(677, 'ELVIVE champú total repair 5 cabello dañado bote 285 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 3.00, 'https://www.dia.es/product_images/269282/269282_ISO_0_ES.jpg?imwidth=392'),
(678, 'TDOY AIR ambientador perlas  lima bote 110 gr', 'dia.es', 'cuidado_del_hogar|ambientadores', 1.79, 'https://www.dia.es/product_images/289027/289027_ISO_0_ES.jpg?imwidth=392'),
(679, 'BUITONI masa para empanadillas y postres paquete 16 uds 280 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|masas_y_hojaldres', 1.83, 'https://www.dia.es/product_images/79177/79177_ISO_0_ES.jpg?imwidth=392'),
(680, 'DIA mermelada extra melocotón frasco 650 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.35, 'https://www.dia.es/product_images/20586/20586_ISO_0_ES.jpg?imwidth=392'),
(681, 'LA VIEJA FABRICA mermelada de naranja amarga frasco 375 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.45, 'https://www.dia.es/product_images/40086/40086_ISO_0_ES.jpg?imwidth=392'),
(682, 'VIAKAL limpiador antical pistola 700 ml', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|bano', 4.79, 'https://www.dia.es/product_images/82790/82790_ISO_0_ES.jpg?imwidth=392'),
(683, 'EL MOLINO DE DIA pan de molde blanco sin corteza bolsa 450 gr', 'dia.es', 'despensa|pan|pan_de_molde', 1.31, 'https://www.dia.es/product_images/48666/48666_ISO_0_ES.jpg?imwidth=392'),
(684, 'BARMON\'S ginebra cítrica botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 7.75, 'https://www.dia.es/product_images/272364/272364_ISO_0_ES.jpg?imwidth=392'),
(685, 'ISABEL atún en aceite de girasol lata 600 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 7.99, 'https://www.dia.es/product_images/1243/1243_ISO_0_ES.jpg?imwidth=392'),
(686, 'DANONE DANONINO petit suisse fresa y plátano pack 6 unidades 50 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 1.44, 'https://www.dia.es/product_images/203876/203876_ISO_0_ES.jpg?imwidth=392'),
(687, 'HARIBO regaliz negro mega torcidas bolsa 160 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.89, 'https://www.dia.es/product_images/291561/291561_ISO_0_ES.jpg?imwidth=392'),
(688, 'KIT KAT chocolatina chocolate blanco 41,5 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 1.29, 'https://www.dia.es/product_images/183917/183917_ISO_0_ES.jpg?imwidth=392'),
(689, 'ALHAMBRA cerveza tradicional lata 33 cl', 'dia.es', 'bebidas|cervezas|nacionales', 0.75, 'https://www.dia.es/product_images/54101/54101_ISO_0_ES.jpg?imwidth=392'),
(690, 'ALPRO skyr yogur de soja sabor fresa vaso 400 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 2.95, 'https://www.dia.es/product_images/283606/283606_ISO_0_ES.jpg?imwidth=392'),
(691, 'DIA UPSS refresco de naranja sin gas lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.49, 'https://www.dia.es/product_images/43868/43868_ISO_0_ES.jpg?imwidth=392'),
(692, 'DIA MARI MARINERA colas de gambón pelado crudo envase 200 gr', 'dia.es', 'congelados|pescado_y_marisco', 5.25, 'https://www.dia.es/product_images/148888/148888_ISO_0_ES.jpg?imwidth=392'),
(693, 'ISABEL mejillones en salsa vieira 13/18 piezas lata 69 grs', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.05, 'https://www.dia.es/product_images/52097/52097_ISO_0_ES.jpg?imwidth=392'),
(694, 'DIA EL CENCERRO queso semicurado cuña 300 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 3.55, 'https://www.dia.es/product_images/263378/263378_ISO_0_ES.jpg?imwidth=392'),
(695, 'EVAX Liberty compresa super con alas caja 10 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 3.30, 'https://www.dia.es/product_images/236738/236738_ISO_0_ES.jpg?imwidth=392'),
(696, 'VIVISIMA+ alcachofa con boldo caja 50 cápsulas', 'dia.es', 'despensa|dieteticos|complementos_nutricionales', 3.99, 'https://www.dia.es/product_images/219661/219661_ISO_0_ES.jpg?imwidth=392'),
(697, 'SERPIS aceitunas rellenas de anchoas lata 130 gr', 'dia.es', 'despensa|aperitivos', 1.99, 'https://www.dia.es/product_images/125055/125055_ISO_0_ES.jpg?imwidth=392'),
(698, 'SELECCIÓN DE DIA entrecot de lomo bajo de vacuno bandeja (peso aprox. 450 gr)', 'dia.es', 'frescos|carne|vacuno', 8.68, 'https://www.dia.es/product_images/276321/276321_ISO_0_ES.jpg?imwidth=392'),
(699, 'L\'OR  café sontuoso caja 20 cápsulas', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 8.19, 'https://www.dia.es/product_images/290660/290660_ISO_0_ES.jpg?imwidth=392'),
(700, 'DIA VEGECAMPO ensalada mezclum bolsa 150 gr', 'dia.es', 'frescos|verduras_y_hortalizas|verduras_y_ensaladas_preparadas', 0.95, 'https://www.dia.es/product_images/224474/224474_ISO_0_ES.jpg?imwidth=392'),
(701, 'PALETTE INTENSIVE CREME tinte Rubio Claro Nº 8 caja 1 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 4.59, 'https://www.dia.es/product_images/142614/142614_ISO_0_ES.jpg?imwidth=392'),
(702, 'DIA GLADIADOR bebida espirituosa tipo brandy botella 1 lt', 'dia.es', 'bodega|alcoholes|brandy', 6.39, 'https://www.dia.es/product_images/142499/142499_ISO_0_ES.jpg?imwidth=392'),
(703, 'JOHNSON´S gel de baño dulces sueños dosificador 750 ml', 'dia.es', 'bebe|cuidado_del_bebe', 4.20, 'https://www.dia.es/product_images/255944/255944_ISO_0_ES.jpg?imwidth=392'),
(704, 'GALLINA BLANCA sofrito tomate y cebolla frasco 350 gr', 'dia.es', 'despensa|salsas|tomate', 2.15, 'https://www.dia.es/product_images/85943/85943_ISO_0_ES.jpg?imwidth=392'),
(705, 'NAKD barrita de cereales con caramelo y sal caja 4 x 35 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 3.19, 'https://www.dia.es/product_images/275988/275988_ISO_0_ES.jpg?imwidth=392'),
(706, 'DOVE desodorante go fresh spray 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 3.69, 'https://www.dia.es/product_images/82383/82383_ISO_0_ES.jpg?imwidth=392'),
(707, 'BABYSMILE toallitas húmedas para bebés envase 24 uds', 'dia.es', 'bebe|toallitas', 0.89, 'https://www.dia.es/product_images/61284/61284_ISO_0_ES.jpg?imwidth=392'),
(708, 'PUERTA DE ALCALÁ vino tinto DO Madrid botella 75 cl', 'dia.es', 'bodega|vino|tinto', 3.09, 'https://www.dia.es/product_images/45963/45963_ISO_0_ES.jpg?imwidth=392'),
(709, 'DIA SUPER PACO bolsa de basura con autocierre comunidad 120 lt rollo 10 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 2.89, 'https://www.dia.es/product_images/275080/275080_ISO_0_ES.jpg?imwidth=392'),
(710, 'DIA NUESTRA ALACENA chorizo de pavo en lonchas envase 2 x 75 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 2.85, 'https://www.dia.es/product_images/273994/273994_ISO_0_ES.jpg?imwidth=392'),
(711, 'DIA ZUMOSFERA zumo de piña y uva 100% pack 3 unidades 200 ml', 'dia.es', 'bebidas|zumos', 1.35, 'https://www.dia.es/product_images/277772/277772_ISO_0_ES.jpg?imwidth=392'),
(712, 'NEUTREX quitamanchas oxy color botella 950 ml', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 3.99, 'https://www.dia.es/product_images/289191/289191_ISO_0_ES.jpg?imwidth=392'),
(713, 'DIA LACTEA leche desnatada calcio envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 0.94, 'https://www.dia.es/product_images/46626/46626_ISO_0_ES.jpg?imwidth=392'),
(714, 'DIA EL CENCERRO queso fresco light tarrina 250 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.25, 'https://www.dia.es/product_images/290657/290657_ISO_0_ES.jpg?imwidth=392'),
(715, 'FREIXENET cava semiseco carta nevada botella 75 cl', 'dia.es', 'bodega|espumosos', 5.95, 'https://www.dia.es/product_images/84786/84786_ISO_0_ES.jpg?imwidth=392'),
(716, 'FONTANEDA galleta digestive chocolate con leche 300 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 3.29, 'https://www.dia.es/product_images/86973/86973_ISO_0_ES.jpg?imwidth=392'),
(717, 'NATURAL HONEY loción corporal reparadora elixir de argán bote 330 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 4.69, 'https://www.dia.es/product_images/154931/154931_ISO_0_ES.jpg?imwidth=392'),
(718, 'OATIBIX cereales de avena suave bolsa 500 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 1.75, 'https://www.dia.es/product_images/205225/205225_ISO_0_ES.jpg?imwidth=392'),
(719, 'DIA ZUMOSFERA bebida de frutas con leche mediterráneo pack 6 unidades 200 ml', 'dia.es', 'bebidas|zumos', 1.25, 'https://www.dia.es/product_images/146653/146653_ISO_0_ES.jpg?imwidth=392'),
(720, 'KNORR crema de verduras de la huerta envase 500 ml', 'dia.es', 'despensa|sopas|cremas_y_pures', 2.25, 'https://www.dia.es/product_images/261934/261934_ISO_0_ES.jpg?imwidth=392'),
(721, 'ASTURIANA nata para  montar envase 1lt', 'dia.es', 'despensa|lacteos_y_huevos|nata', 4.85, 'https://www.dia.es/product_images/145492/145492_ISO_0_ES.jpg?imwidth=392'),
(722, 'LANJARON agua mineral natural botella 1.5 lt', 'dia.es', 'bebidas|aguas', 0.73, 'https://www.dia.es/product_images/47768/47768_ISO_0_ES.jpg?imwidth=392'),
(723, 'DIA ALMAZARA DEL OLIVAR aceite de oliva suave garrafa 5 lt', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 24.75, 'https://www.dia.es/product_images/49895/49895_ISO_0_ES.jpg?imwidth=392'),
(724, 'DODOT toallitas para bebés aqua pure envase 48 uds', 'dia.es', 'bebe|toallitas', 3.59, 'https://www.dia.es/product_images/257070/257070_ISO_0_ES.jpg?imwidth=392'),
(725, 'ISABEL mejillones en escabeche 13/18 piezas lata 69 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.99, 'https://www.dia.es/product_images/28245/28245_ISO_0_ES.jpg?imwidth=392'),
(726, 'Mandarina malla 1 Kg', 'dia.es', 'frescos|frutas|citricos', 2.49, 'https://www.dia.es/product_images/11464/11464_ISO_0_ES.jpg?imwidth=392'),
(727, 'DIA VEGECAMPO menestra de verduras bolsa 1 kg', 'dia.es', 'congelados|verduras_y_hortalizas', 1.20, 'https://www.dia.es/product_images/1389/1389_ISO_0_ES.jpg?imwidth=392'),
(728, 'DON SIMON zumo melocotón uva y manzana envase 1 lt', 'dia.es', 'bebidas|zumos', 1.49, 'https://www.dia.es/product_images/112643/112643_ISO_0_ES.jpg?imwidth=392'),
(729, 'VIÑA DANZA vino tinto joven DO Valdepeñas botella 75 cl', 'dia.es', 'bodega|vino|tinto', 1.79, 'https://www.dia.es/product_images/263598/263598_ISO_0_ES.jpg?imwidth=392'),
(730, 'DIA SELECCIÓN MUNDIAL queso cheddar irlandés en lonchas envase 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 1.96, 'https://www.dia.es/product_images/263221/263221_ISO_0_ES.jpg?imwidth=392'),
(731, 'ELPOZO bacon en lonchas envase 110 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.50, 'https://www.dia.es/product_images/162311/162311_ISO_0_ES.jpg?imwidth=392'),
(732, 'EL MOLINO DE DIA pan tostado normal paquete 270 gr', 'dia.es', 'despensa|pan|biscotes', 0.99, 'https://www.dia.es/product_images/5386/5386_ISO_0_ES.jpg?imwidth=392'),
(733, 'ROYAL preparado para pastel fresco sabor limón caja 103 gr', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 1.70, 'https://www.dia.es/product_images/5373/5373_ISO_0_ES.jpg?imwidth=392'),
(734, 'SELECCIÓN DE DIA Entrecot de vacuno (peso aprox. 400 gr)', 'dia.es', 'frescos|carne|vacuno', 8.80, 'https://www.dia.es/product_images/211502/211502_ISO_0_ES.jpg?imwidth=392'),
(735, 'DIA FIDIAS yogur al estilo griego con fresas pack 6 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 1.85, 'https://www.dia.es/product_images/135291/135291_ISO_0_ES.jpg?imwidth=392'),
(736, 'BONTE toallitas desodorantes dermo care envase 12 uds', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 1.05, 'https://www.dia.es/product_images/220324/220324_ISO_0_ES.jpg?imwidth=392'),
(737, 'DIA pastillas antipolillas perfume lavanda paquete 20 + 4 uds', 'dia.es', 'cuidado_del_hogar|insecticidas', 1.45, 'https://www.dia.es/product_images/105986/105986_ISO_0_ES.jpg?imwidth=392'),
(738, 'EL MOLINO DE DIA mojicón envasados individualmente bolsa 500 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 2.19, 'https://www.dia.es/product_images/129570/129570_ISO_0_ES.jpg?imwidth=392'),
(739, 'Aguacate bio bandeja 400 gr', 'dia.es', 'frescos|frutas|frutas_tropicales', 2.69, 'https://www.dia.es/product_images/245089/245089_ISO_0_ES.jpg?imwidth=392'),
(740, 'Tomate cherry pera bandeja 250 gr', 'dia.es', 'frescos|verduras_y_hortalizas|tomates_pimientos_y_pepinos', 1.49, 'https://www.dia.es/product_images/161628/161628_ISO_0_ES.jpg?imwidth=392'),
(741, 'CREMLUX caldo para paella de marisco envase 1lt', 'dia.es', 'despensa|sopas|caldos', 2.35, 'https://www.dia.es/product_images/285968/285968_ISO_0_ES.jpg?imwidth=392'),
(742, 'GALLO pasta de estrellas paquete 450 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.38, 'https://www.dia.es/product_images/187463/187463_ISO_0_ES.jpg?imwidth=392'),
(743, 'LYSOL desinfectante de cocinas spray 750 ml', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|cocina', 3.29, 'https://www.dia.es/product_images/291139/291139_ISO_0_ES.jpg?imwidth=392'),
(744, 'NIVEA desodorante protege y cuida roll on 50 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.15, 'https://www.dia.es/product_images/218235/218235_ISO_0_ES.jpg?imwidth=392'),
(745, 'KOMVIDA bebida de kombucha con jengibre y limón botella 250 ml', 'dia.es', 'bebidas|refrescos', 2.65, 'https://www.dia.es/product_images/277589/277589_ISO_0_ES.jpg?imwidth=392'),
(746, 'FRUITS ATTRACTION colonia de coco spray 100 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|colonias', 4.85, 'https://www.dia.es/product_images/249084/249084_ISO_0_ES.jpg?imwidth=392'),
(747, 'Jengibre bandeja 200 gr', 'dia.es', 'frescos|verduras_y_hortalizas|otras_verduras', 1.59, 'https://www.dia.es/product_images/249946/249946_ISO_0_ES.jpg?imwidth=392'),
(748, 'DOÑA DOLORES anchoas del Cantábrico en aceite de oliva pack 3 x 25 gr', 'dia.es', 'frescos|pescado_y_marisco|ahumados_y_salazones', 3.39, 'https://www.dia.es/product_images/291162/291162_ISO_0_ES.jpg?imwidth=392'),
(749, 'BUDWEISER cerveza pack 6 botellas 25 cl', 'dia.es', 'bebidas|cervezas|especiales', 4.89, 'https://www.dia.es/product_images/11953/11953_ISO_0_ES.jpg?imwidth=392'),
(750, 'DIA TEMPTATION helado bombón chocolate negro caja 4 uds 334 gr', 'dia.es', 'congelados|helados', 1.99, 'https://www.dia.es/product_images/19520/19520_ISO_0_ES.jpg?imwidth=392'),
(751, 'EL MOLINO DE DIA picos integrales bolsa 250 gr', 'dia.es', 'despensa|pan|picos_de_pan', 0.69, 'https://www.dia.es/product_images/59304/59304_ISO_0_ES.jpg?imwidth=392'),
(752, 'ROYAL cuajada sabor lácteo para preparar caja 5 sobres de 12 gr', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 2.19, 'https://www.dia.es/product_images/27367/27367_ISO_0_ES.jpg?imwidth=392'),
(753, 'SPONTEX bayeta microfibra tamaño 36 x 38 cm lote 5 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 6.29, 'https://www.dia.es/product_images/127626/127626_ISO_0_ES.jpg?imwidth=392'),
(754, 'SANTA ANA patatas fritas bolsa 150 gr', 'dia.es', 'despensa|aperitivos', 1.69, 'https://www.dia.es/product_images/56879/56879_ISO_0_ES.jpg?imwidth=392'),
(755, 'EL MOLINO DE DIA pan tostado integral bajo en sal y azúcar paquete 324 gr', 'dia.es', 'despensa|pan|biscotes', 1.65, 'https://www.dia.es/product_images/279207/279207_ISO_0_ES.jpg?imwidth=392'),
(756, 'DIA ARROZONA arroz largo de 1ª categoría paquete 1 Kg', 'dia.es', 'despensa|arroz_y_legumbres|arroz', 1.35, 'https://www.dia.es/product_images/5873/5873_ISO_0_ES.jpg?imwidth=392'),
(757, 'NOCILLA cookies de chocolate paquete 6 uds 120 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.49, 'https://www.dia.es/product_images/279333/279333_ISO_0_ES.jpg?imwidth=392'),
(758, 'LISTERINE enjuague bucal zero 500 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 6.19, 'https://www.dia.es/product_images/147862/147862_ISO_0_ES.jpg?imwidth=392'),
(759, 'NIVEA crema corporal manteca de karité piel seca bote 400 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 4.99, 'https://www.dia.es/product_images/57446/57446_ISO_0_ES.jpg?imwidth=392'),
(760, 'NB PALMOLIVE gel de ducha almendra y leche bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.19, 'https://www.dia.es/product_images/153332/153332_ISO_0_ES.jpg?imwidth=392'),
(761, 'DIA CAPRICHOSO postre de chocolate con caramelo salado tarrina 450 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 2.99, 'https://www.dia.es/product_images/287388/287388_ISO_0_ES.jpg?imwidth=392'),
(762, 'ULTIMA Nature alimento para perros medianos con cordero bolsa 3 Kg', 'dia.es', 'mascotas|perros', 18.89, 'https://www.dia.es/product_images/231410/231410_ISO_0_ES.jpg?imwidth=392'),
(763, 'DIA yogur natural al estilo griego 1 Kg', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 2.45, 'https://www.dia.es/product_images/165956/165956_ISO_0_ES.jpg?imwidth=392'),
(764, 'DIA SUPER PACO lavavajillas máquina poder plus en cápsulas bolsa 25 uds', 'dia.es', 'cuidado_del_hogar|lavavajillas', 4.99, 'https://www.dia.es/product_images/274028/274028_ISO_0_ES.jpg?imwidth=392'),
(765, 'CORNETTO helado cono clásico caja 6 uds 360 gr', 'dia.es', 'congelados|helados', 4.99, 'https://www.dia.es/product_images/247179/247179_ISO_0_ES.jpg?imwidth=392'),
(766, 'DIA MARI MARINERA filete de salmón salvaje envase 360 gr', 'dia.es', 'congelados|pescado_y_marisco', 6.99, 'https://www.dia.es/product_images/274389/274389_ISO_0_ES.jpg?imwidth=392'),
(767, 'ULTIMA Nature alimento para gatos adultos con pollo bolsa 1.25 Kg', 'dia.es', 'mascotas|gatos', 11.59, 'https://www.dia.es/product_images/234208/234208_ISO_0_ES.jpg?imwidth=392'),
(768, 'HERO Diet mermelada de fresas frasco 280 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.49, 'https://www.dia.es/product_images/246213/246213_ISO_0_ES.jpg?imwidth=392'),
(769, 'NATURAL HONEY aceite corporal elixir de argán botella 300 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 3.99, 'https://www.dia.es/product_images/155249/155249_ISO_0_ES.jpg?imwidth=392'),
(770, 'Pera conferencia unidad (200 gr aprox.)', 'dia.es', 'frescos|frutas|peras', 0.38, 'https://www.dia.es/product_images/71/71_ISO_0_ES.jpg?imwidth=392'),
(771, 'BONTE cepillo interdentales extrafinos envase 6 uds', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.59, 'https://www.dia.es/product_images/176401/176401_ISO_0_ES.jpg?imwidth=392'),
(772, 'Lechuga iceberg pieza 1 ud', 'dia.es', 'frescos|verduras_y_hortalizas|lechugas_escarolas_y_endivias', 1.09, 'https://www.dia.es/product_images/11462/11462_ISO_0_ES.jpg?imwidth=392'),
(773, 'DIA EL CENCERRO queso mozzarella en lonchas envase 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.05, 'https://www.dia.es/product_images/263222/263222_ISO_0_ES.jpg?imwidth=392'),
(774, 'BONTE protege slips plegado normal caja 30 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 1.75, 'https://www.dia.es/product_images/122086/122086_ISO_0_ES.jpg?imwidth=392'),
(775, 'ELVIVE aceite extraordinario dosificador 100 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 9.95, 'https://www.dia.es/product_images/155612/155612_ISO_0_ES.jpg?imwidth=392'),
(776, 'DIA caldo de pescado envase 1 lt', 'dia.es', 'despensa|sopas|caldos', 1.20, 'https://www.dia.es/product_images/27865/27865_ISO_0_ES.jpg?imwidth=392'),
(777, 'VIAKAL limpiador antical botella 750 ml', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|bano', 4.79, 'https://www.dia.es/product_images/73318/73318_ISO_0_ES.jpg?imwidth=392'),
(778, 'LANJARON agua mineral natural botella tapón sport 33 cl', 'dia.es', 'bebidas|aguas', 0.65, 'https://www.dia.es/product_images/231993/231993_ISO_0_ES.jpg?imwidth=392'),
(779, 'DIA SUPER PACO bolsas de papel para bocadillo caja 25 uds', 'dia.es', 'cuidado_del_hogar|conservacion_de_alimentos', 2.09, 'https://www.dia.es/product_images/288350/288350_ISO_0_ES.jpg?imwidth=392'),
(780, 'KELLOGGS cereales chocos caja 450 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 3.95, 'https://www.dia.es/product_images/166535/166535_ISO_0_ES.jpg?imwidth=392'),
(781, 'DIA FIDIAS yogur al estilo griego con fresa pack 4 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 1.69, 'https://www.dia.es/product_images/115176/115176_ISO_0_ES.jpg?imwidth=392'),
(782, 'AMSTEL cerveza pack 6 botellas 25 cl', 'dia.es', 'bebidas|cervezas|nacionales', 3.29, 'https://www.dia.es/product_images/185/185_ISO_0_ES.jpg?imwidth=392'),
(783, 'ORIGINAL REMEDIES champú oliva frasco 250 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 3.29, 'https://www.dia.es/product_images/206487/206487_ISO_0_ES.jpg?imwidth=392');
INSERT INTO `producto` (`Id_producto`, `Name`, `SUPERMARKET`, `CATEGORY`, `PRICE`, `IMG`) VALUES
(784, 'WERTHER`S Original caramelos toffees blandos recubiertos bolsa 120 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.10, 'https://www.dia.es/product_images/212331/212331_ISO_0_ES.jpg?imwidth=392'),
(785, 'DOVE desodorante original spray 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 3.69, 'https://www.dia.es/product_images/32842/32842_ISO_0_ES.jpg?imwidth=392'),
(786, 'OREO galletas mini golden caja 160 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.99, 'https://www.dia.es/product_images/273426/273426_ISO_0_ES.jpg?imwidth=392'),
(787, 'DIA MARI MARINERA tacos de potón en salsa marinera lata 72 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.29, 'https://www.dia.es/product_images/275473/275473_ISO_0_ES.jpg?imwidth=392'),
(788, 'FRUGO bebida energética wild pink lata 33 cl', 'dia.es', 'bebidas|bebidas_isotonicas_y_energeticas', 1.00, 'https://www.dia.es/product_images/280279/280279_ISO_0_ES.jpg?imwidth=392'),
(789, 'PULEVA batido de cacao zero pack 6 unidades 200 ml', 'dia.es', 'bebidas|batidos_y_horchata', 3.05, 'https://www.dia.es/product_images/274810/274810_ISO_0_ES.jpg?imwidth=392'),
(790, 'DON SIMON bebida de leche con frutas tropical zero envase 1 lt', 'dia.es', 'bebidas|zumos', 1.49, 'https://www.dia.es/product_images/189713/189713_ISO_0_ES.jpg?imwidth=392'),
(791, 'PASSPORT whisky botella 70 cl', 'dia.es', 'bodega|alcoholes|whisky', 11.99, 'https://www.dia.es/product_images/114427/114427_ISO_0_ES.jpg?imwidth=392'),
(792, 'CARRETILLA espárragos blancos extra 8/12 lata 150 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 3.05, 'https://www.dia.es/product_images/1252/1252_ISO_0_ES.jpg?imwidth=392'),
(793, 'DIA ICEBERG chicle sabor sandía sin azúcar bolsa 45 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 0.99, 'https://www.dia.es/product_images/267968/267968_ISO_0_ES.jpg?imwidth=392'),
(794, 'DIA estropajo salvauñas fibra blanca para baño paquete 2 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 1.15, 'https://www.dia.es/product_images/6114/6114_ISO_0_ES.jpg?imwidth=392'),
(795, 'GALLINA BLANCA salsa pimienta verde sobre 50 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 1.70, 'https://www.dia.es/product_images/22568/22568_ISO_0_ES.jpg?imwidth=392'),
(796, 'DESTAPA LA HUERTA pimientos del piquillo rojos y verdes en tiras frasco 270 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.85, 'https://www.dia.es/product_images/283026/283026_ISO_0_ES.jpg?imwidth=392'),
(797, 'MISTOL lavavajillas mano ultra plus botella 650 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 2.49, 'https://www.dia.es/product_images/290995/290995_ISO_0_ES.jpg?imwidth=392'),
(798, 'COLGATE cepillo dental 360 º max white medio blíster 1 ud', 'dia.es', 'cuidado_personal|cuidado_bucal', 4.29, 'https://www.dia.es/product_images/210590/210590_ISO_0_ES.jpg?imwidth=392'),
(799, 'DIA PLANETA BEBE pañales 8-15 kgs talla 4 paquete 88 uds', 'dia.es', 'bebe|panales', 14.75, 'https://www.dia.es/product_images/268408/268408_ISO_0_ES.jpg?imwidth=392'),
(800, 'PEPSI zero azúcar sabor lima lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.85, 'https://www.dia.es/product_images/283126/283126_ISO_0_ES.jpg?imwidth=392'),
(801, 'SOLAN DE CABRAS agua mineral natural botella 5 lt', 'dia.es', 'bebidas|aguas', 2.49, 'https://www.dia.es/product_images/63295/63295_ISO_0_ES.jpg?imwidth=392'),
(802, 'NB PALMOLIVE gel de ducha leche y miel bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.19, 'https://www.dia.es/product_images/198131/198131_ISO_0_ES.jpg?imwidth=392'),
(803, 'HORNIMANS té rojo con anís y un toque de ciruela estuche 20 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 2.95, 'https://www.dia.es/product_images/41701/41701_ISO_0_ES.jpg?imwidth=392'),
(804, 'DIA PATATAS UNIDAS patatas gajo bolsa 750 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 1.99, 'https://www.dia.es/product_images/262685/262685_ISO_0_ES.jpg?imwidth=392'),
(805, 'PATO gel limpiador wc 3 en 1 océano botella 750 ml', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|bano', 2.99, 'https://www.dia.es/product_images/1856/1856_ISO_0_ES.jpg?imwidth=392'),
(806, 'LA GERGALEÑA tomate natural rallado tarrina 200 gr', 'dia.es', 'frescos|verduras_y_hortalizas|tomates_pimientos_y_pepinos', 1.29, 'https://www.dia.es/product_images/278354/278354_ISO_0_ES.jpg?imwidth=392'),
(807, 'LA ESPAÑOLA aceite de oliva virgen extra botella 500 ml', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 4.66, 'https://www.dia.es/product_images/280371/280371_ISO_0_ES.jpg?imwidth=392'),
(808, 'DIA MARI MARINERA caprichos a la romana bolsa 400 gr', 'dia.es', 'congelados|pescado_y_marisco', 1.89, 'https://www.dia.es/product_images/41097/41097_ISO_0_ES.jpg?imwidth=392'),
(809, 'CAMPO CURERO vino tinto roble DO Toro botella 75 cl', 'dia.es', 'bodega|vino|tinto', 2.99, 'https://www.dia.es/product_images/263722/263722_ISO_0_ES.jpg?imwidth=392'),
(810, 'NESTEA refresco de té al limón sin azúcar lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.80, 'https://www.dia.es/product_images/12946/12946_ISO_0_ES.jpg?imwidth=392'),
(811, 'LUXIDERMIA calcetín exfoliante para pies envase 2 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|cuidado_de_manos_y_pies', 6.99, 'https://www.dia.es/product_images/291486/291486_ISO_0_ES.jpg?imwidth=392'),
(812, 'DIA IMAQE discos de algodón ovalados bolsa 70 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 1.25, 'https://www.dia.es/product_images/283888/283888_ISO_0_ES.jpg?imwidth=392'),
(813, 'CARMENCITA orégano frasco 7 gr', 'dia.es', 'despensa|sal_y_especias', 1.95, 'https://www.dia.es/product_images/188001/188001_ISO_0_ES.jpg?imwidth=392'),
(814, 'ASTURIANA leche desnatada 0% M.G. sin lactosa envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.19, 'https://www.dia.es/product_images/169355/169355_ISO_0_ES.jpg?imwidth=392'),
(815, 'Sopa juliana deshidratada bandeja 100 gr', 'dia.es', 'frescos|verduras_y_hortalizas|verduras_y_ensaladas_preparadas', 2.36, 'https://www.dia.es/product_images/50310/50310_ISO_0_ES.jpg?imwidth=392'),
(816, 'EL PAVO cannelloni clásico caja 125 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.25, 'https://www.dia.es/product_images/45244/45244_ISO_0_ES.jpg?imwidth=392'),
(817, 'GOURMET mousse para gatos de salmón pack 4 x 57 gr', 'dia.es', 'mascotas|gatos', 3.59, 'https://www.dia.es/product_images/280375/280375_ISO_0_ES.jpg?imwidth=392'),
(818, 'ANETO caldo de pollo bajo en sal envase 1 lt', 'dia.es', 'despensa|sopas|caldos', 3.99, 'https://www.dia.es/product_images/102735/102735_ISO_0_ES.jpg?imwidth=392'),
(819, 'DIA CAPRICHOSO natillas de chocolate con bizcocho pack 4 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.65, 'https://www.dia.es/product_images/219104/219104_ISO_0_ES.jpg?imwidth=392'),
(820, 'ELPOZO imperial con pavo pieza 230 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 3.45, 'https://www.dia.es/product_images/42200/42200_ISO_0_ES.jpg?imwidth=392'),
(821, 'DIA AL PUNTO quinoa con verduras bolsa 400 gr', 'dia.es', 'congelados|precocinados', 2.29, 'https://www.dia.es/product_images/267140/267140_ISO_0_ES.jpg?imwidth=392'),
(822, 'VALOR chocolate negro 70% con galleta belga tableta 200 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 2.79, 'https://www.dia.es/product_images/282312/282312_ISO_0_ES.jpg?imwidth=392'),
(823, 'PAVOFRÍO fiambre de pechuga de pavo en lonchas sobre 70 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.00, 'https://www.dia.es/product_images/125952/125952_ISO_0_ES.jpg?imwidth=392'),
(824, 'COLACAO cacao soluble instantáneo turbo bote 750 gr', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 6.19, 'https://www.dia.es/product_images/204563/204563_ISO_0_ES.jpg?imwidth=392'),
(825, 'KAS bitter lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.89, 'https://www.dia.es/product_images/60725/60725_ISO_0_ES.jpg?imwidth=392'),
(826, 'ROYAL gelatina light sabor fresa 0% azucares caja 31 gr', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 2.80, 'https://www.dia.es/product_images/205482/205482_ISO_0_ES.jpg?imwidth=392'),
(827, 'CONGELADOS DE NAVARRA arándanos bolsa 300 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 2.11, 'https://www.dia.es/product_images/290109/290109_ISO_0_ES.jpg?imwidth=392'),
(828, 'NATIVA leche crecimiento con galleta María +12 meses envase 1 lt', 'dia.es', 'bebe|leche_para_bebes', 1.99, 'https://www.dia.es/product_images/182329/182329_ISO_0_ES.jpg?imwidth=392'),
(829, 'DANI ajo y perejil frasco 150 gr', 'dia.es', 'despensa|sal_y_especias', 4.05, 'https://www.dia.es/product_images/263633/263633_ISO_0_ES.jpg?imwidth=392'),
(830, 'ELPOZO pechuga de pavo en finas lonchas envase 115 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.50, 'https://www.dia.es/product_images/170157/170157_ISO_0_ES.jpg?imwidth=392'),
(831, 'RIO SECO vino blanco sauvignon DO Rueda botella 75 cl', 'dia.es', 'bodega|vino|blanco', 3.49, 'https://www.dia.es/product_images/265816/265816_ISO_0_ES.jpg?imwidth=392'),
(832, 'DIA CAFETERÍA café soluble crema frasco 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 2.65, 'https://www.dia.es/product_images/203923/203923_ISO_0_ES.jpg?imwidth=392'),
(833, 'AUSONIA compresas noche con alas más larga bolsa 9 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 2.26, 'https://www.dia.es/product_images/131303/131303_ISO_0_ES.jpg?imwidth=392'),
(834, 'J&B whisky botella 70 cl', 'dia.es', 'bodega|alcoholes|whisky', 12.50, 'https://www.dia.es/product_images/947/947_ISO_0_ES.jpg?imwidth=392'),
(835, 'DIA harina de fuerza paquete 1 Kg', 'dia.es', 'despensa|pastas_harinas_y_masas|harinas_y_levaduras', 0.92, 'https://www.dia.es/product_images/207695/207695_ISO_0_ES.jpg?imwidth=392'),
(836, 'DIA GALLETECA galletas mini cacao rellena de nata bolsa 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 0.75, 'https://www.dia.es/product_images/236662/236662_ISO_0_ES.jpg?imwidth=392'),
(837, 'LA MASIA aceite de girasol botella 5 lt', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 13.35, 'https://www.dia.es/product_images/282336/282336_ISO_0_ES.jpg?imwidth=392'),
(838, 'COLGATE pasta dentífrica blanqueante tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 2.59, 'https://www.dia.es/product_images/24066/24066_ISO_0_ES.jpg?imwidth=392'),
(839, 'SOLANO caramelos duros tradicionales bolsa 99 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.99, 'https://www.dia.es/product_images/238516/238516_ISO_0_ES.jpg?imwidth=392'),
(840, 'FILMFIX film transparente 80 m', 'dia.es', 'cuidado_del_hogar|conservacion_de_alimentos', 1.65, 'https://www.dia.es/product_images/280132/280132_ISO_0_ES.jpg?imwidth=392'),
(841, 'L\'OREAL crema hidratante noche pieles maduras tarro 50ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 9.99, 'https://www.dia.es/product_images/152051/152051_ISO_0_ES.jpg?imwidth=392'),
(842, 'PIKOTAS caramelo de goma relleno sabor cereza bolsa 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.45, 'https://www.dia.es/product_images/271236/271236_ISO_0_ES.jpg?imwidth=392'),
(843, 'GULLON galleta ligera sin sal y sin azúcar paquete 200 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.39, 'https://www.dia.es/product_images/28696/28696_ISO_0_ES.jpg?imwidth=392'),
(844, 'DIA AL DIANTE macarrón integral paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.04, 'https://www.dia.es/product_images/277305/277305_ISO_0_ES.jpg?imwidth=392'),
(845, 'SAN MIGUEL cerveza radler con limón 0,0% alcohol lata 33 cl', 'dia.es', 'bebidas|cervezas|con_limon', 0.75, 'https://www.dia.es/product_images/125715/125715_ISO_0_ES.jpg?imwidth=392'),
(846, 'POM\'BEL smoothie con frutas del bosque envase 210 ml', 'dia.es', 'bebidas|zumos', 1.49, 'https://www.dia.es/product_images/283052/283052_ISO_0_ES.jpg?imwidth=392'),
(847, 'DIA MARI MARINERA atún claro en aceite de girasol pack 6 latas de 56 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 4.29, 'https://www.dia.es/product_images/262437/262437_ISO_0_ES.jpg?imwidth=392'),
(848, 'TRIDENT Oral b chicle grageas sabor hierbabuena paquete 10 uds', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.59, 'https://www.dia.es/product_images/262220/262220_ISO_0_ES.jpg?imwidth=392'),
(849, 'LA LECHERA leche condensada bote 450 gr', 'dia.es', 'despensa|lacteos_y_huevos|leche', 3.55, 'https://www.dia.es/product_images/41309/41309_ISO_0_ES.jpg?imwidth=392'),
(850, 'ARTIACH Dinosaurus huevos galletas caja 140 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.44, 'https://www.dia.es/product_images/207884/207884_ISO_0_ES.jpg?imwidth=392'),
(851, 'DIA IMAQE desmaquillante de ojos waterproof bote 125 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 2.05, 'https://www.dia.es/product_images/272023/272023_ISO_0_ES.jpg?imwidth=392'),
(852, 'GULLON galletas dibus sharkies cacao SIN GLUTEN caja 250 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.99, 'https://www.dia.es/product_images/221003/221003_ISO_0_ES.jpg?imwidth=392'),
(853, 'TRAPA chocolate negro intenso 70% con almendras tableta 175 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 2.29, 'https://www.dia.es/product_images/288258/288258_ISO_0_ES.jpg?imwidth=392'),
(854, 'DIA SUPER PACO detergente máquina líquido colonia botella 46 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 4.15, 'https://www.dia.es/product_images/274003/274003_ISO_0_ES.jpg?imwidth=392'),
(855, 'DIA NUESTRA ALACENA jamón cocido extra finas lonchas envase 2 x 225 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 3.39, 'https://www.dia.es/product_images/273957/273957_ISO_0_ES.jpg?imwidth=392'),
(856, 'MOURAMA vino tinto Mencia DO Monterrei botella 75 cl', 'dia.es', 'bodega|vino|tinto', 4.99, 'https://www.dia.es/product_images/272362/272362_ISO_0_ES.jpg?imwidth=392'),
(857, 'DIA SELECCIÓN MUNDIAL vinagre balsámico de módena botella 50 cl', 'dia.es', 'despensa|aceites_vinagres_y_alinos|vinagres_y_alinos', 2.20, 'https://www.dia.es/product_images/106144/106144_ISO_0_ES.jpg?imwidth=392'),
(858, 'MAYOR DE CASTILLA vino tinto botella 75 cl', 'dia.es', 'bodega|vino|tinto', 3.30, 'https://www.dia.es/product_images/239843/239843_ISO_0_ES.jpg?imwidth=392'),
(859, 'CASTILLO DE HARO vino rosado DO Rioja 75 cl', 'dia.es', 'bodega|vino|rosado', 2.29, 'https://www.dia.es/product_images/263401/263401_ISO_0_ES.jpg?imwidth=392'),
(860, 'PRIMA mostaza cero azúcar bote 265 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 2.99, 'https://www.dia.es/product_images/292519/292519_ISO_0_ES.jpg?imwidth=392'),
(861, 'BURNED BARREL whisky botella 70 cl', 'dia.es', 'bodega|alcoholes|whisky', 5.49, 'https://www.dia.es/product_images/164521/164521_ISO_0_ES.jpg?imwidth=392'),
(862, 'EL MOLINO DE DIA panecillos tostados paquete 225 gr', 'dia.es', 'despensa|pan|biscotes', 0.85, 'https://www.dia.es/product_images/277675/277675_ISO_0_ES.jpg?imwidth=392'),
(863, 'JOHNSON´S Baby talco dulces sueños para bebés bote 200 gr', 'dia.es', 'bebe|cuidado_del_bebe', 2.29, 'https://www.dia.es/product_images/153669/153669_ISO_0_ES.jpg?imwidth=392'),
(864, 'BAJOZ vino tinto DO Toro botella 75 cl', 'dia.es', 'bodega|vino|tinto', 4.65, 'https://www.dia.es/product_images/115330/115330_ISO_0_ES.jpg?imwidth=392'),
(865, 'NATUR DACSA harina multiusos SIN GLUTEN bolsa 1 kg', 'dia.es', 'despensa|pastas_harinas_y_masas|harinas_y_levaduras', 4.03, 'https://www.dia.es/product_images/288064/288064_ISO_0_ES.jpg?imwidth=392'),
(866, 'DIA sirope de fresa bote 295 gr', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 1.75, 'https://www.dia.es/product_images/161789/161789_ISO_0_ES.jpg?imwidth=392'),
(867, 'BABARIA desodorante para pies spray 150 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|cuidado_de_manos_y_pies', 2.75, 'https://www.dia.es/product_images/235166/235166_ISO_0_ES.jpg?imwidth=392'),
(868, 'DIADERMINE Lift+ FlashEffect cápsulas antiedad efecto inmediato envase 7 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 7.49, 'https://www.dia.es/product_images/152202/152202_ISO_0_ES.jpg?imwidth=392'),
(869, 'DIA ZUMOSFERA zumo de fresas 100% envase 1 lt', 'dia.es', 'bebidas|zumos', 1.99, 'https://www.dia.es/product_images/274802/274802_ISO_0_ES.jpg?imwidth=392'),
(870, 'DIA DELICIOUS mermelada de naranja amarga frasco 320 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 1.55, 'https://www.dia.es/product_images/213265/213265_ISO_0_ES.jpg?imwidth=392'),
(871, 'DIA zumo naranja 100% exprimido sin pulpa botella 1 lt', 'dia.es', 'bebidas|zumos', 1.49, 'https://www.dia.es/product_images/109413/109413_ISO_0_ES.jpg?imwidth=392'),
(872, 'LA FILO bizcocho soletilla paquete 300 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 1.89, 'https://www.dia.es/product_images/162616/162616_ISO_0_ES.jpg?imwidth=392'),
(873, '61 vermouth rojo tempranillo botella 75 cl', 'dia.es', 'bodega|alcoholes|vermouth', 6.99, 'https://www.dia.es/product_images/280263/280263_ISO_0_ES.jpg?imwidth=392'),
(874, 'LA RECETA huevos ecológicos categoría A clase M/L estuche 6 uds', 'dia.es', 'despensa|lacteos_y_huevos|huevos', 2.59, 'https://www.dia.es/product_images/274541/274541_ISO_0_ES.jpg?imwidth=392'),
(875, 'Mandarina hoja bolsa 1kg', 'dia.es', 'frescos|frutas|citricos', 2.49, 'https://www.dia.es/product_images/270377/270377_ISO_0_ES.jpg?imwidth=392'),
(876, 'DIA MARCELO CARAMELO golosinas lágrimas bolsa 250 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.75, 'https://www.dia.es/product_images/161766/161766_ISO_0_ES.jpg?imwidth=392'),
(877, 'DR OETKER pizza mía grande 4 quesos caja 400 gr', 'dia.es', 'congelados|pizzas_bases_y_masas', 5.79, 'https://www.dia.es/product_images/262267/262267_ISO_0_ES.jpg?imwidth=392'),
(878, 'BARILLA espagueti integral caja 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 2.40, 'https://www.dia.es/product_images/222057/222057_ISO_0_ES.jpg?imwidth=392'),
(879, 'VILEDA guantes multi latex sin polvo talla S/M caja 10 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 4.85, 'https://www.dia.es/product_images/5128/5128_ISO_0_ES.jpg?imwidth=392'),
(880, 'DIA HOLA COLA refresco de cola botella 2 lt', 'dia.es', 'bebidas|refrescos', 0.95, 'https://www.dia.es/product_images/10065/10065_ISO_0_ES.jpg?imwidth=392'),
(881, 'DIA VEGECAMPO aceitunas gazpacha frasco 410 gr', 'dia.es', 'despensa|aperitivos', 2.19, 'https://www.dia.es/product_images/275224/275224_ISO_0_ES.jpg?imwidth=392'),
(882, 'YBARRA coliflor natural frasco 400 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.79, 'https://www.dia.es/product_images/84354/84354_ISO_0_ES.jpg?imwidth=392'),
(883, 'DIA cerezas en almíbar frasco 160 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 1.95, 'https://www.dia.es/product_images/223959/223959_ISO_0_ES.jpg?imwidth=392'),
(884, 'ORTIZ pan tostado multicereales paquete 288 gr', 'dia.es', 'despensa|pan|biscotes', 2.59, 'https://www.dia.es/product_images/231242/231242_ISO_0_ES.jpg?imwidth=392'),
(885, 'DIA VEGECAMPO guisantes medianos lata 265 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 0.95, 'https://www.dia.es/product_images/265948/265948_ISO_0_ES.jpg?imwidth=392'),
(886, 'DIA barritas de cereales con manzana y albaricoque estuche 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 1.35, 'https://www.dia.es/product_images/43946/43946_ISO_0_ES.jpg?imwidth=392'),
(887, 'BONTE recambio maquinilla de afeitar 5 hojas hombre 4 uds', 'dia.es', 'cuidado_personal|afeitado', 5.09, 'https://www.dia.es/product_images/176405/176405_ISO_0_ES.jpg?imwidth=392'),
(888, 'DIA VEGECAMPO tomate frito pack 3 unidades 215 gr', 'dia.es', 'despensa|salsas|tomate', 1.30, 'https://www.dia.es/product_images/1221/1221_ISO_0_ES.jpg?imwidth=392'),
(889, 'EL MOLINO DE DIA sobaos pequeños bolsa 340 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 1.39, 'https://www.dia.es/product_images/220229/220229_ISO_0_ES.jpg?imwidth=392'),
(890, 'IROHA parches antiarrugas para el contorno de ojos sachet 2 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 2.99, 'https://www.dia.es/product_images/283006/283006_ISO_0_ES.jpg?imwidth=392'),
(891, 'DOLCE GUSTO café ristretto bonka 16 cápsulas caja 112 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 4.95, 'https://www.dia.es/product_images/168695/168695_ISO_0_ES.jpg?imwidth=392'),
(892, 'McCain patatas fritas forno julienne bolsa 600 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 3.29, 'https://www.dia.es/product_images/139989/139989_ISO_0_ES.jpg?imwidth=392'),
(893, 'COLACAO cacao soluble caja 2.5 Kg', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 15.49, 'https://www.dia.es/product_images/27083/27083_ISO_0_ES.jpg?imwidth=392'),
(894, 'SPONTEX guantes triple capa talla M bolsa 1 par', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 3.29, 'https://www.dia.es/product_images/46144/46144_ISO_0_ES.jpg?imwidth=392'),
(895, 'BIOTOBIO macarrones BIO paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 1.52, 'https://www.dia.es/product_images/287000/287000_ISO_0_ES.jpg?imwidth=392'),
(896, 'MINERVA sardinas en escabeche lata 85 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.49, 'https://www.dia.es/product_images/289591/289591_ISO_0_ES.jpg?imwidth=392'),
(897, 'DIA ZUMOSFERA bebida leche y frutas Caribe envase 1 lt', 'dia.es', 'bebidas|zumos', 1.25, 'https://www.dia.es/product_images/271652/271652_ISO_0_ES.jpg?imwidth=392'),
(898, 'BARMON\'S ginebra sabor fresa botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 7.85, 'https://www.dia.es/product_images/222418/222418_ISO_0_ES.jpg?imwidth=392'),
(899, 'IBERIA Protect toallitas captura colores caja 15 uds', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 3.59, 'https://www.dia.es/product_images/246775/246775_ISO_0_ES.jpg?imwidth=392'),
(900, 'DIA NUESTRA ALACENA jamón de pavo en finas lonchas envase 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 1.79, 'https://www.dia.es/product_images/273733/273733_ISO_0_ES.jpg?imwidth=392'),
(901, 'ORIGINAL REMEDIES aceite oliva en crema sin aclarado cabello reseco 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 3.99, 'https://www.dia.es/product_images/206499/206499_ISO_0_ES.jpg?imwidth=392'),
(902, 'AS snack para perros de pollo bolsa 200 gr', 'dia.es', 'mascotas|perros', 1.39, 'https://www.dia.es/product_images/112418/112418_ISO_0_ES.jpg?imwidth=392'),
(903, 'MANDUL donas de chocolate envase 180 gr', 'dia.es', 'despensa|desayunos_y_dulces|bolleria', 1.55, 'https://www.dia.es/product_images/291301/291301_ISO_0_ES.jpg?imwidth=392'),
(904, 'CASA TARRADELLAS masa fina para pizza rollo 260 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|masas_y_hojaldres', 1.69, 'https://www.dia.es/product_images/151018/151018_ISO_0_ES.jpg?imwidth=392'),
(905, 'GULLON zero doradas al horno sin azúcar paquete 330 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 3.39, 'https://www.dia.es/product_images/55181/55181_ISO_0_ES.jpg?imwidth=392'),
(906, 'DIA SUPER PACO gel limpiador wc pino botella 1 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|bano', 1.19, 'https://www.dia.es/product_images/269408/269408_ISO_0_ES.jpg?imwidth=392'),
(907, 'POTE sazonador para paella de pescado caja 12,5 gr', 'dia.es', 'despensa|sal_y_especias', 1.99, 'https://www.dia.es/product_images/282302/282302_ISO_0_ES.jpg?imwidth=392'),
(908, 'LOS MOLINOS vino tinto DO Valdepeñas botella 75 cl', 'dia.es', 'bodega|vino|tinto', 2.35, 'https://www.dia.es/product_images/711/711_ISO_0_ES.jpg?imwidth=392'),
(909, 'DIA VEGECAMPO garbanzo pedrosillano paquete 1 Kg', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 2.65, 'https://www.dia.es/product_images/194830/194830_ISO_0_ES.jpg?imwidth=392'),
(910, 'APEROL aperitivo botella 70 cl', 'dia.es', 'bodega|alcoholes|vermouth', 12.99, 'https://www.dia.es/product_images/225895/225895_ISO_0_ES.jpg?imwidth=392'),
(911, 'BONTE espuma rizos perfectos spray 300 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 2.29, 'https://www.dia.es/product_images/40465/40465_ISO_0_ES.jpg?imwidth=392'),
(912, 'SANEX gel de ducha biome protect piel normal bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.65, 'https://www.dia.es/product_images/197473/197473_ISO_0_ES.jpg?imwidth=392'),
(913, 'NATURAL HONEY desodorante fresh extra refrescante spray 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.75, 'https://www.dia.es/product_images/288153/288153_ISO_0_ES.jpg?imwidth=392'),
(914, 'MATSU El Pícaro vino tinto DO Toro botella 75 cl', 'dia.es', 'bodega|vino|tinto', 8.89, 'https://www.dia.es/product_images/282750/282750_ISO_0_ES.jpg?imwidth=392'),
(915, 'CONDOMINIUM vino frizzante moscato rosado 5,5º botella 75 cl', 'dia.es', 'bodega|espumosos', 2.99, 'https://www.dia.es/product_images/222276/222276_ISO_0_ES.jpg?imwidth=392'),
(916, 'TIMOTEI champú y acondicionador 2 en 1 delicado cabello normal bote 400 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 3.49, 'https://www.dia.es/product_images/104819/104819_ISO_0_ES.jpg?imwidth=392'),
(917, 'BOMBAY Citron pressé ginebra con sabor a limón mediterráneo botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 21.99, 'https://www.dia.es/product_images/287938/287938_ISO_0_ES.jpg?imwidth=392'),
(918, 'DIA GALLETECA galletas tostaditas paquete 600 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.95, 'https://www.dia.es/product_images/206129/206129_ISO_0_ES.jpg?imwidth=392'),
(919, 'KELLOGGS barritas special k protein con coco, cacao y anacardos caja 112 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 2.99, 'https://www.dia.es/product_images/245356/245356_ISO_0_ES.jpg?imwidth=392'),
(920, 'NIVEA MEN crema tarro 150 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|hidratacion_corporal', 3.50, 'https://www.dia.es/product_images/203365/203365_ISO_0_ES.jpg?imwidth=392'),
(921, 'DIA ZUMOSFERA zumo de kiwi 100% envase 1 lt', 'dia.es', 'bebidas|zumos', 1.99, 'https://www.dia.es/product_images/274801/274801_ISO_0_ES.jpg?imwidth=392'),
(922, 'NIKE colonia pink woman spray 30 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|colonias', 3.09, 'https://www.dia.es/product_images/217626/217626_ISO_0_ES.jpg?imwidth=392'),
(923, 'CESAR alimento para perros con pollo tarrina 150 gr', 'dia.es', 'mascotas|perros', 1.35, 'https://www.dia.es/product_images/151455/151455_ISO_0_ES.jpg?imwidth=392'),
(924, 'MENTOS roll frutas pack caramelos masticables sabor frutas paquete 2 x 38 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.80, 'https://www.dia.es/product_images/257843/257843_ISO_0_ES.jpg?imwidth=392'),
(925, 'MILLER cerveza rubia genuine draft botella 33 cl', 'dia.es', 'bebidas|cervezas|especiales', 1.19, 'https://www.dia.es/product_images/277264/277264_ISO_0_ES.jpg?imwidth=392'),
(926, 'Plátano de Canarias bolsa (1.3 Kg aprox.)', 'dia.es', 'frescos|frutas|platanos', 2.59, 'https://www.dia.es/product_images/11468/11468_ISO_0_ES.jpg?imwidth=392'),
(927, 'Barra de pan sésamo y lino 265 gr', 'dia.es', 'despensa|pan|pan_de_horno', 1.09, 'https://www.dia.es/product_images/207313/207313_ISO_0_ES.jpg?imwidth=392'),
(928, 'DIA mermelada extra fresa frasco 650 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 2.35, 'https://www.dia.es/product_images/20568/20568_ISO_0_ES.jpg?imwidth=392'),
(929, 'JOLCA aceitunas rellenas de anchoa del Cantábrico lata 150 gr', 'dia.es', 'despensa|aperitivos', 2.25, 'https://www.dia.es/product_images/75342/75342_ISO_0_ES.jpg?imwidth=392'),
(930, 'DON LIMPIO limpiador mármol y madera ph neutro botella 1.3 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 4.29, 'https://www.dia.es/product_images/17103/17103_ISO_0_ES.jpg?imwidth=392'),
(931, 'DR. OETKER aroma de vainilla de madagascar bote 35 ml', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 4.55, 'https://www.dia.es/product_images/245067/245067_ISO_0_ES.jpg?imwidth=392'),
(932, 'SPLASH ambientador automático lavanda spray 250 ml', 'dia.es', 'cuidado_del_hogar|ambientadores', 2.09, 'https://www.dia.es/product_images/293444/293444_ISO_0_ES.jpg?imwidth=392'),
(933, 'EL MOLINO DE DIA regañás con aceite de oliva virgen extra bolsa 150 gr', 'dia.es', 'despensa|pan|picos_de_pan', 1.49, 'https://www.dia.es/product_images/166048/166048_ISO_0_ES.jpg?imwidth=392'),
(934, 'BONNE MAMAN tartelettes rellenas de frambuesa caja 135 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.95, 'https://www.dia.es/product_images/288005/288005_ISO_0_ES.jpg?imwidth=392'),
(935, 'ASTURIANA leche semidesnatada sin lactosa envase 1 lt  PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 7.14, 'https://www.dia.es/product_images/148777P6/148777P6_ISO_0_ES.jpg?imwidth=392'),
(936, 'BINACA pasta dentífrica triple protección tubo 75 ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.79, 'https://www.dia.es/product_images/178070/178070_ISO_0_ES.jpg?imwidth=392'),
(937, 'SOMOSIERRA helado sandwich nata y chocolate caja 6 uds 300 gr', 'dia.es', 'congelados|helados', 3.29, 'https://www.dia.es/product_images/15828/15828_ISO_0_ES.jpg?imwidth=392'),
(938, 'DIA IMAQE gel de ducha almendras y miel bote 750 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 1.40, 'https://www.dia.es/product_images/273855/273855_ISO_0_ES.jpg?imwidth=392'),
(939, 'Pomelo unidad (325 gr aprox.)', 'dia.es', 'frescos|frutas|citricos', 0.74, 'https://www.dia.es/product_images/42097/42097_ISO_0_ES.jpg?imwidth=392'),
(940, 'HS champú anticaspa 2 en 1 clásico bote 230 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 2.99, 'https://www.dia.es/product_images/271604/271604_ISO_0_ES.jpg?imwidth=392'),
(941, 'PANTENE Pro-v champú anticaspa bote 225 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 3.19, 'https://www.dia.es/product_images/247786/247786_ISO_0_ES.jpg?imwidth=392'),
(942, 'FAIRY lavavajillas mano maxi poder anti-goteo bote 440 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 4.99, 'https://www.dia.es/product_images/283504/283504_ISO_0_ES.jpg?imwidth=392'),
(943, 'SPRITE lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.53, 'https://www.dia.es/product_images/178275/178275_ISO_0_ES.jpg?imwidth=392'),
(944, 'ALPRO bebida de soja ligera envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|bebidas_vegetales', 2.19, 'https://www.dia.es/product_images/126349/126349_ISO_0_ES.jpg?imwidth=392'),
(945, 'DANI pimienta negra grano frasco 45 gr', 'dia.es', 'despensa|sal_y_especias', 2.35, 'https://www.dia.es/product_images/178104/178104_ISO_0_ES.jpg?imwidth=392'),
(946, 'NESTLE papilla de maíz y arroz sin gluten caja 240 gr', 'dia.es', 'bebe|papillas', 2.59, 'https://www.dia.es/product_images/274738/274738_ISO_0_ES.jpg?imwidth=392'),
(947, 'SELECCIÓN DE DIA medallones de solomillo de pavo bandeja (peso aprox. 450 gr)', 'dia.es', 'frescos|carne|pavo', 5.40, 'https://www.dia.es/product_images/269546/269546_ISO_0_ES.jpg?imwidth=392'),
(948, 'DIA VEGECAMPO tallo de espárrago blanco lata 250 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.35, 'https://www.dia.es/product_images/264140/264140_ISO_0_ES.jpg?imwidth=392'),
(949, 'BOMBAY Original ginebra london dry botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 15.49, 'https://www.dia.es/product_images/109889/109889_ISO_0_ES.jpg?imwidth=392'),
(950, 'MAGNO gel de ducha classic bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.40, 'https://www.dia.es/product_images/155629/155629_ISO_0_ES.jpg?imwidth=392'),
(951, 'VIVISIMA+ café verde + zinc y colina caja 40 cápsulas', 'dia.es', 'despensa|dieteticos|complementos_nutricionales', 3.99, 'https://www.dia.es/product_images/219665/219665_ISO_0_ES.jpg?imwidth=392'),
(952, 'DIA AL PUNTO lentejas con chorizo lata 430 gr', 'dia.es', 'platos_preparados|legumbres', 1.35, 'https://www.dia.es/product_images/27933/27933_ISO_0_ES.jpg?imwidth=392'),
(953, 'DIA IMAQE leche limpiadora calmante dosificador 250 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 1.55, 'https://www.dia.es/product_images/272022/272022_ISO_0_ES.jpg?imwidth=392'),
(954, 'AUSONIA compresas normal alas bolsa 14 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 2.26, 'https://www.dia.es/product_images/131302/131302_ISO_0_ES.jpg?imwidth=392'),
(955, 'COLGATE PLAX enjuague bucal multiprotección botella 500ml', 'dia.es', 'cuidado_personal|cuidado_bucal', 5.39, 'https://www.dia.es/product_images/153995/153995_ISO_0_ES.jpg?imwidth=392'),
(956, 'EL PASTOR perlas de queso rellenas de frambuesa bandeja 125 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.49, 'https://www.dia.es/product_images/267553/267553_ISO_0_ES.jpg?imwidth=392'),
(957, 'DIA SUPER PACO suavizante concentrado floral botella 80 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 2.15, 'https://www.dia.es/product_images/274017/274017_ISO_0_ES.jpg?imwidth=392'),
(958, 'DR.OETKER gelatina en laminas sobre 12 laminas', 'dia.es', 'despensa|desayunos_y_dulces|preparacion_de_postres', 2.25, 'https://www.dia.es/product_images/124236/124236_ISO_0_ES.jpg?imwidth=392'),
(959, 'ALBO atún claro en aceite de oliva lata 67 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.10, 'https://www.dia.es/product_images/189186/189186_ISO_0_ES.jpg?imwidth=392'),
(960, 'ORO DE GENAVE aceite de oliva virgen extra ecológico botella 500 ml', 'dia.es', 'despensa|aceites_vinagres_y_alinos|aceites', 5.30, 'https://www.dia.es/product_images/280370/280370_ISO_0_ES.jpg?imwidth=392'),
(961, 'SISMICUS vino tinto joven DO Jumilla botella 75 cl', 'dia.es', 'bodega|vino|tinto', 2.65, 'https://www.dia.es/product_images/267011/267011_ISO_0_ES.jpg?imwidth=392'),
(962, 'PEPSI clásica lata 33 cl', 'dia.es', 'bebidas|refrescos', 0.69, 'https://www.dia.es/product_images/7658/7658_ISO_0_ES.jpg?imwidth=392'),
(963, 'DIA VEGECAMPO alubias cocidas frasco 400 gr', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 0.75, 'https://www.dia.es/product_images/1233/1233_ISO_0_ES.jpg?imwidth=392'),
(964, 'AGUINAMAR mejillones cocidos envasado al vacío 1 Kg', 'dia.es', 'frescos|pescado_y_marisco|pescado_y_marisco_fresco', 4.99, 'https://www.dia.es/product_images/81922/81922_ISO_0_ES.jpg?imwidth=392'),
(965, 'FRINSA atún claro en aceite de oliva MSC lata 82 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 2.65, 'https://www.dia.es/product_images/289594/289594_ISO_0_ES.jpg?imwidth=392'),
(966, 'BONTE cepillo dental para ortodoncia blíster 1 ud', 'dia.es', 'cuidado_personal|cuidado_bucal', 1.89, 'https://www.dia.es/product_images/242830/242830_ISO_0_ES.jpg?imwidth=392'),
(967, 'DOVE desodorante original sin alcohol 0% sales de aluminio spray 200 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 3.89, 'https://www.dia.es/product_images/277257/277257_ISO_0_ES.jpg?imwidth=392'),
(968, 'NATURE VALLEY barrita de cereales crunchy avena y miel caja 210 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 2.99, 'https://www.dia.es/product_images/250333/250333_ISO_0_ES.jpg?imwidth=392'),
(969, 'CLESA crema bombón 0,7% M.G. pack 4 unidades 125 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.95, 'https://www.dia.es/product_images/180627/180627_ISO_0_ES.jpg?imwidth=392'),
(970, 'DIA SNACK MANIAC palitos de patata bolsa 100 gr', 'dia.es', 'despensa|aperitivos', 1.29, 'https://www.dia.es/product_images/16750/16750_ISO_0_ES.jpg?imwidth=392'),
(971, 'HARIBO gominolas favoritos bolsa 150 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.89, 'https://www.dia.es/product_images/152677/152677_ISO_0_ES.jpg?imwidth=392'),
(972, 'NORDES ginebra botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 26.19, 'https://www.dia.es/product_images/223716/223716_ISO_0_ES.jpg?imwidth=392'),
(973, 'SELECCIÓN DE DIA cuartos traseros de pollo bandeja (peso aprox. 750 gr)', 'dia.es', 'frescos|carne|pollo', 2.77, 'https://www.dia.es/product_images/18036/18036_ISO_0_ES.jpg?imwidth=392'),
(974, 'DIA LA LLAMA servilleta suave 2 capas paquete 100 uds', 'dia.es', 'cuidado_del_hogar|papel', 1.69, 'https://www.dia.es/product_images/276693/276693_ISO_0_ES.jpg?imwidth=392'),
(975, 'IDEAL leche evaporada sin lactosa envase 525 gr', 'dia.es', 'despensa|lacteos_y_huevos|leche', 2.36, 'https://www.dia.es/product_images/239520/239520_ISO_0_ES.jpg?imwidth=392'),
(976, 'VITAKRAFT snack líquido para gatos con salmón caja 90 gr', 'dia.es', 'mascotas|gatos', 2.85, 'https://www.dia.es/product_images/273656/273656_ISO_0_ES.jpg?imwidth=392'),
(977, 'DIA ZUMOSFERA zumo de piña 100% envase 1 lt', 'dia.es', 'bebidas|zumos', 1.39, 'https://www.dia.es/product_images/693/693_ISO_0_ES.jpg?imwidth=392'),
(978, 'SELECCIÓN DE DIA chuleta de aguja de cerdo bandeja (peso aprox. 650 gr)', 'dia.es', 'frescos|carne|cerdo', 3.89, 'https://www.dia.es/product_images/260861/260861_ISO_0_ES.jpg?imwidth=392'),
(979, 'SAN BENEDETTO refresco de té verde con aloe vera botella 1.5 lt', 'dia.es', 'bebidas|refrescos', 1.25, 'https://www.dia.es/product_images/226048/226048_ISO_0_ES.jpg?imwidth=392'),
(980, 'DIA SUPER PACO suavizante premium bergamota y sándalo botella 60 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 2.49, 'https://www.dia.es/product_images/276650/276650_ISO_0_ES.jpg?imwidth=392'),
(981, 'BONTE champú arroz y avena delicado bote 250 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|champus', 1.99, 'https://www.dia.es/product_images/233301/233301_ISO_0_ES.jpg?imwidth=392'),
(982, 'RAPUN trenza de Huesca caja 450 gr', 'dia.es', 'congelados|reposteria', 11.49, 'https://www.dia.es/product_images/196994/196994_ISO_0_ES.jpg?imwidth=392'),
(983, 'PULEVA leche omega 3 con nueces envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.95, 'https://www.dia.es/product_images/121677/121677_ISO_0_ES.jpg?imwidth=392'),
(984, 'FRISKIES snack para perros funtastick sabor jamón /queso bolsa 175 gr', 'dia.es', 'mascotas|perros', 2.25, 'https://www.dia.es/product_images/148455/148455_ISO_0_ES.jpg?imwidth=392'),
(985, 'HORNIMANS infusión de maca con jengibre, canela y naranja estuche 20 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 2.95, 'https://www.dia.es/product_images/288254/288254_ISO_0_ES.jpg?imwidth=392'),
(986, 'NORDIC BLONDE aclarante intensivo con aceite activador caja 1 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 5.99, 'https://www.dia.es/product_images/204613/204613_ISO_0_ES.jpg?imwidth=392'),
(987, 'MILKA helado cono chocolate y vainilla caja 4 uds 270 gr', 'dia.es', 'congelados|helados', 5.49, 'https://www.dia.es/product_images/161716/161716_ISO_0_ES.jpg?imwidth=392'),
(988, 'SMINT pastillas de limón sin azúcar lata 35 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 2.50, 'https://www.dia.es/product_images/180639/180639_ISO_0_ES.jpg?imwidth=392'),
(989, 'AMBAR cerveza especial SIN GLUTEN botella 33 cl', 'dia.es', 'bebidas|cervezas|especiales', 1.39, 'https://www.dia.es/product_images/187040/187040_ISO_0_ES.jpg?imwidth=392'),
(990, 'AS alimento para perros junior con carne tarrina 150 gr', 'dia.es', 'mascotas|perros', 0.85, 'https://www.dia.es/product_images/158565/158565_ISO_0_ES.jpg?imwidth=392'),
(991, 'BYLY desodorante roll on extra fresh envase 50ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.25, 'https://www.dia.es/product_images/151875/151875_ISO_0_ES.jpg?imwidth=392'),
(992, 'DIQUESI hamburguesas veganas de calabacín y quinoa bandeja 200 gr', 'dia.es', 'platos_preparados|verduras', 2.75, 'https://www.dia.es/product_images/253797/253797_ISO_0_ES.jpg?imwidth=392'),
(993, 'CARMENCITA colorante alimentario frasco 62 gr', 'dia.es', 'despensa|sal_y_especias', 1.95, 'https://www.dia.es/product_images/187993/187993_ISO_0_ES.jpg?imwidth=392'),
(994, 'KELLOGGS cereales smacks caja 450 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 3.95, 'https://www.dia.es/product_images/130841/130841_ISO_0_ES.jpg?imwidth=392'),
(995, 'DIA LA LLAMA papel higiénico 2 capas paquete 12 uds', 'dia.es', 'cuidado_del_hogar|papel', 2.99, 'https://www.dia.es/product_images/276676/276676_ISO_0_ES.jpg?imwidth=392'),
(996, 'DIA MARCELO CARAMELO torcidas regaliz rojo bolsa 225 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.09, 'https://www.dia.es/product_images/161768/161768_ISO_0_ES.jpg?imwidth=392'),
(997, 'DIA NUESTRA ALACENA pechuga de pavo braseado finas lonchas envase 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 2.45, 'https://www.dia.es/product_images/273964/273964_ISO_0_ES.jpg?imwidth=392'),
(998, 'DIA AL PUNTO arroz negro con calamar y gambas bolsa 600 gr', 'dia.es', 'congelados|precocinados', 2.89, 'https://www.dia.es/product_images/208640/208640_ISO_0_ES.jpg?imwidth=392'),
(999, 'BONTE maquinilla de afeitar desechable 3 hojas bolsa 6 uds', 'dia.es', 'cuidado_personal|afeitado', 3.09, 'https://www.dia.es/product_images/228682/228682_ISO_0_ES.jpg?imwidth=392'),
(1000, 'BIOZOO barritas para roedores de verduras y frutas bolsa 112 gr', 'dia.es', 'mascotas|otros_animales', 1.79, 'https://www.dia.es/product_images/292170/292170_ISO_0_ES.jpg?imwidth=392'),
(1001, 'WHISKAS alimento para gatos selección carnes en salsa bolsa 4 x 85 gr', 'dia.es', 'mascotas|gatos', 2.49, 'https://www.dia.es/product_images/292974/292974_ISO_0_ES.jpg?imwidth=392'),
(1002, 'WILKINSON sword Extra 3 maquinilla desechable mujer bolsa 4 uds', 'dia.es', 'cuidado_personal|depilacion', 4.39, 'https://www.dia.es/product_images/245060/245060_ISO_0_ES.jpg?imwidth=392'),
(1003, 'AUSONIA Discreet compresas de incontinencia normal paquete 12 uds', 'dia.es', 'cuidado_personal|cuidado_intimo', 4.99, 'https://www.dia.es/product_images/212779/212779_ISO_0_ES.jpg?imwidth=392'),
(1004, 'OREO galleta doble crema paquete 185 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 1.99, 'https://www.dia.es/product_images/134625/134625_ISO_0_ES.jpg?imwidth=392'),
(1005, 'ARLA FOODS queso protein cottage tarrina 200 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.26, 'https://www.dia.es/product_images/288046/288046_ISO_0_ES.jpg?imwidth=392'),
(1006, 'XTERMIN insecticida moscas y mosquitos sin perfume spray 750 ml', 'dia.es', 'cuidado_del_hogar|insecticidas', 2.49, 'https://www.dia.es/product_images/283883/283883_ISO_0_ES.jpg?imwidth=392'),
(1007, 'CUETARA TostaRica Choco Guay galletas rellenas de chocolate y crema caja 168 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.95, 'https://www.dia.es/product_images/145985/145985_ISO_0_ES.jpg?imwidth=392'),
(1008, 'PHILADELPHIA queso para untar original tarrina 350 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 3.64, 'https://www.dia.es/product_images/189086/189086_ISO_0_ES.jpg?imwidth=392'),
(1009, 'BONTE mascarilla capilar alisadora tarro 300 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|cuidado_del_cabello', 2.49, 'https://www.dia.es/product_images/280014/280014_ISO_0_ES.jpg?imwidth=392'),
(1010, 'DIA  stevia líquida botella 125 ml', 'dia.es', 'despensa|desayunos_y_dulces|azucar_y_edulcorantes', 2.19, 'https://www.dia.es/product_images/222282/222282_ISO_0_ES.jpg?imwidth=392'),
(1011, 'CLESA crema bombón de chocolate pack 4 unidades 125 g', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 1.95, 'https://www.dia.es/product_images/173384/173384_ISO_0_ES.jpg?imwidth=392'),
(1012, 'PUNTOMATIC detergente máquina blanco puro en pastillas 4 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 1.10, 'https://www.dia.es/product_images/152978/152978_ISO_0_ES.jpg?imwidth=392'),
(1013, 'BAJOZ ROBLE TORO vino tinto botella 75 cl', 'dia.es', 'bodega|vino|tinto', 5.25, 'https://www.dia.es/product_images/186009/186009_ISO_0_ES.jpg?imwidth=392'),
(1014, 'DIA TEMPTATION chocolate negro 74 % con pepitas de cacao tableta 100 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 1.35, 'https://www.dia.es/product_images/225442/225442_ISO_0_ES.jpg?imwidth=392'),
(1015, 'PASCUAL leche desnatada sin lactosa envase 1 lt PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 8.58, 'https://www.dia.es/product_images/119676P6/119676P6_ISO_0_ES.jpg?imwidth=392'),
(1016, 'BIFRUTAS PASCUAL bebida con leche tropical pack 6 unidades 200 ml', 'dia.es', 'bebidas|zumos', 2.69, 'https://www.dia.es/product_images/125790/125790_ISO_0_ES.jpg?imwidth=392'),
(1017, 'DIA AL PUNTO lasaña boloñesa bandeja 300 gr', 'dia.es', 'congelados|precocinados', 1.39, 'https://www.dia.es/product_images/275223/275223_ISO_0_ES.jpg?imwidth=392'),
(1018, 'TULIPAN NEGRO Men desodorante sport barra 75 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.40, 'https://www.dia.es/product_images/234741/234741_ISO_0_ES.jpg?imwidth=392'),
(1019, 'VANISH Oxi action quitamanchas en spray 750 ml', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 4.99, 'https://www.dia.es/product_images/282715/282715_ISO_0_ES.jpg?imwidth=392'),
(1020, 'PALMOLIVE NB desodorante tacto puro roll on 50 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|desodorantes', 2.19, 'https://www.dia.es/product_images/151723/151723_ISO_0_ES.jpg?imwidth=392'),
(1021, 'DOLCE GUSTO café con leche 18 cápsulas caja 180 gr', 'dia.es', 'despensa|desayunos_y_dulces|cafe', 4.95, 'https://www.dia.es/product_images/129910/129910_ISO_0_ES.jpg?imwidth=392'),
(1022, 'SOLIS tomate frito envase 350 gr', 'dia.es', 'despensa|salsas|tomate', 0.85, 'https://www.dia.es/product_images/78731/78731_ISO_0_ES.jpg?imwidth=392'),
(1023, 'DR OETKER pannini barbacoa caja 250 gr', 'dia.es', 'congelados|pizzas_bases_y_masas', 3.45, 'https://www.dia.es/product_images/25978/25978_ISO_0_ES.jpg?imwidth=392'),
(1024, 'L\'OREAL Men expert crema facial hydra 5 acciones dosificador 50 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 7.99, 'https://www.dia.es/product_images/74948/74948_ISO_0_ES.jpg?imwidth=392'),
(1025, 'SOLIS tomate frito con aceite de oliva frasco 360 gr', 'dia.es', 'despensa|salsas|tomate', 1.79, 'https://www.dia.es/product_images/119817/119817_ISO_0_ES.jpg?imwidth=392'),
(1026, 'AZUCARERA azúcar moreno integral en terrones caja 500 gr', 'dia.es', 'despensa|desayunos_y_dulces|azucar_y_edulcorantes', 1.79, 'https://www.dia.es/product_images/189181/189181_ISO_0_ES.jpg?imwidth=392'),
(1027, 'LA VACA QUE RIE queso fundido light 16 porciones caja 250 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.88, 'https://www.dia.es/product_images/1776/1776_ISO_0_ES.jpg?imwidth=392'),
(1028, 'VILEDA bayeta microfibra ultra fresh 3 uds', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 4.69, 'https://www.dia.es/product_images/258749/258749_ISO_0_ES.jpg?imwidth=392'),
(1029, 'PRIMA mostaza original bote 265 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 2.39, 'https://www.dia.es/product_images/292518/292518_ISO_0_ES.jpg?imwidth=392'),
(1030, 'DANONE DANET natillas de chocolate pack 4 unidades 120 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 2.49, 'https://www.dia.es/product_images/76121/76121_ISO_0_ES.jpg?imwidth=392'),
(1031, 'DIA SELECCIÓN MUNDIAL escamas de queso parmigianno regianno DOP tarrina 80 gr', 'dia.es', 'frescos|charcuteria_y_quesos|quesos', 2.20, 'https://www.dia.es/product_images/207456/207456_ISO_0_ES.jpg?imwidth=392'),
(1032, 'SCHWARZKOPF champú brillo & vitalidad bote 400 ml', 'dia.es', 'bebe|cuidado_del_bebe', 2.39, 'https://www.dia.es/product_images/267618/267618_ISO_0_ES.jpg?imwidth=392'),
(1033, 'PASCUAL leche semidesnatada sin lactosa envase 1 lt PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 8.58, 'https://www.dia.es/product_images/119675P6/119675P6_ISO_0_ES.jpg?imwidth=392'),
(1034, 'FAIRY lavavajillas mano concentrado extra higiene botella 500 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 4.99, 'https://www.dia.es/product_images/275403/275403_ISO_0_ES.jpg?imwidth=392'),
(1035, 'ZESPRI kiwi gold bandeja 500 gr', 'dia.es', 'frescos|frutas|frutas_tropicales', 3.29, 'https://www.dia.es/product_images/237458/237458_ISO_0_ES.jpg?imwidth=392'),
(1036, 'BUJANDA pimientos del piquillo rojos y verdes frasco 220 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.99, 'https://www.dia.es/product_images/232799/232799_ISO_0_ES.jpg?imwidth=392'),
(1037, 'Tomate ensalada unidad (350 gr aprox.)', 'dia.es', 'frescos|verduras_y_hortalizas|tomates_pimientos_y_pepinos', 1.01, 'https://www.dia.es/product_images/110/110_ISO_0_ES.jpg?imwidth=392'),
(1038, 'PURINA snack para perros medianos dentalife bolsa 115 gr', 'dia.es', 'mascotas|perros', 2.59, 'https://www.dia.es/product_images/233618/233618_ISO_0_ES.jpg?imwidth=392'),
(1039, 'M&M\'s cacahuete 45 gr', 'dia.es', 'despensa|desayunos_y_dulces|chocolates_y_bombones', 1.20, 'https://www.dia.es/product_images/126410/126410_ISO_0_ES.jpg?imwidth=392'),
(1040, 'SELECCIÓN DE DIA Filete 1ºA de ternera (peso aprox. 425 gr)', 'dia.es', 'frescos|carne|vacuno', 6.37, 'https://www.dia.es/product_images/181288/181288_ISO_0_ES.jpg?imwidth=392'),
(1041, 'PEDIGREE snack para perros dentaxtix grandes bolsa 154 gr', 'dia.es', 'mascotas|perros', 2.19, 'https://www.dia.es/product_images/288807/288807_ISO_0_ES.jpg?imwidth=392'),
(1042, 'DIA GRANDIA cereales muesli con frutas paquete 500 gr', 'dia.es', 'despensa|desayunos_y_dulces|cereales', 2.65, 'https://www.dia.es/product_images/37203/37203_ISO_0_ES.jpg?imwidth=392'),
(1043, 'PAZO SERANTELLO vino blanco albariño DO Rias Baixas botella 75 cl', 'dia.es', 'bodega|vino|blanco', 6.25, 'https://www.dia.es/product_images/275396/275396_ISO_0_ES.jpg?imwidth=392'),
(1044, 'GRANJA SAN FRANCISCO miel de flores antigoteo bote 350 gr', 'dia.es', 'despensa|desayunos_y_dulces|mermeladas_miel_y_frutas_en_almibar', 5.55, 'https://www.dia.es/product_images/17255/17255_ISO_0_ES.jpg?imwidth=392'),
(1045, 'LU PRINCIPE Maxi choc galletas rellenas de crema chocolate pack 3 x 250 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 5.99, 'https://www.dia.es/product_images/189843/189843_ISO_0_ES.jpg?imwidth=392');
INSERT INTO `producto` (`Id_producto`, `Name`, `SUPERMARKET`, `CATEGORY`, `PRICE`, `IMG`) VALUES
(1046, 'DIA SALSEO salsa césar bote 300 ml', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 1.29, 'https://www.dia.es/product_images/129425/129425_ISO_0_ES.jpg?imwidth=392'),
(1047, 'DIA IMAQE gel de ducha zero envase 1 lt', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 1.69, 'https://www.dia.es/product_images/273849/273849_ISO_0_ES.jpg?imwidth=392'),
(1048, 'FONTANEDA galletas digestive finas con chocolate con leche caja 170 gr', 'dia.es', 'despensa|desayunos_y_dulces|galletas', 2.45, 'https://www.dia.es/product_images/258932/258932_ISO_0_ES.jpg?imwidth=392'),
(1049, 'FRIT RAVICH dátiles bandeja 500 gr', 'dia.es', 'despensa|aperitivos', 3.29, 'https://www.dia.es/product_images/125796/125796_ISO_0_ES.jpg?imwidth=392'),
(1050, 'HORNIMANS té classic estuche 40 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 3.35, 'https://www.dia.es/product_images/240824/240824_ISO_0_ES.jpg?imwidth=392'),
(1051, 'LA ASTURIANA judión cocido frasco 350 gr', 'dia.es', 'despensa|arroz_y_legumbres|legumbres', 1.99, 'https://www.dia.es/product_images/61787/61787_ISO_0_ES.jpg?imwidth=392'),
(1052, 'DIA MARI MARINERA carne de mejillón cocido bolsa 250 gr', 'dia.es', 'congelados|pescado_y_marisco', 2.15, 'https://www.dia.es/product_images/233107/233107_ISO_0_ES.jpg?imwidth=392'),
(1053, 'DIA MARI MARINERA sardinillas en aceite de girasol pack de 2 latas de 62 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.75, 'https://www.dia.es/product_images/129042/129042_ISO_0_ES.jpg?imwidth=392'),
(1054, 'KRISSIA palitos de surimi paquete 12 uds 180 gr', 'dia.es', 'frescos|pescado_y_marisco|gulas_y_surimi', 2.99, 'https://www.dia.es/product_images/35499/35499_ISO_0_ES.jpg?imwidth=392'),
(1055, 'BREKKIES alimento para gatos con salmón y atún rellenas de gamba bolsa 900 gr', 'dia.es', 'mascotas|gatos', 4.29, 'https://www.dia.es/product_images/277528/277528_ISO_0_ES.jpg?imwidth=392'),
(1056, 'GALLO pesto frasco 190 gr', 'dia.es', 'despensa|salsas|mayonesa_y_otras_salsas', 2.79, 'https://www.dia.es/product_images/198553/198553_ISO_0_ES.jpg?imwidth=392'),
(1057, 'DIA IMAQE crema de manos hidratante con aloe vera tubo 125 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|cuidado_de_manos_y_pies', 1.15, 'https://www.dia.es/product_images/271089/271089_ISO_0_ES.jpg?imwidth=392'),
(1058, 'CREMLUX caldo de carne envase 1 lt', 'dia.es', 'despensa|sopas|caldos', 1.09, 'https://www.dia.es/product_images/285969/285969_ISO_0_ES.jpg?imwidth=392'),
(1059, 'DIA cacao instantáneo bolsa 1.2 Kg', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 4.45, 'https://www.dia.es/product_images/221720/221720_ISO_0_ES.jpg?imwidth=392'),
(1060, 'RED BULL bebida energética sabor sandía lata 25 cl', 'dia.es', 'bebidas|bebidas_isotonicas_y_energeticas', 1.59, 'https://www.dia.es/product_images/271471/271471_ISO_0_ES.jpg?imwidth=392'),
(1061, 'DIA MARI MARINERA bonito en escabeche lata 73 gr', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.85, 'https://www.dia.es/product_images/259991/259991_ISO_0_ES.jpg?imwidth=392'),
(1062, 'VIVESOY bebida de soja ligera envase 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|bebidas_vegetales', 1.89, 'https://www.dia.es/product_images/121894/121894_ISO_0_ES.jpg?imwidth=392'),
(1063, 'COCA-COLA zero pack 12 latas 33 cl', 'dia.es', 'bebidas|refrescos', 9.12, 'https://www.dia.es/product_images/79802/79802_ISO_0_ES.jpg?imwidth=392'),
(1064, 'BONTE esponjas jabonosas desechables bolsa 10 ud', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 1.25, 'https://www.dia.es/product_images/231828/231828_ISO_0_ES.jpg?imwidth=392'),
(1065, 'AMBAR cerveza tostada 0.0% alcohol lata 33 cl', 'dia.es', 'bebidas|cervezas|sin_alcohol', 0.85, 'https://www.dia.es/product_images/274605/274605_ISO_0_ES.jpg?imwidth=392'),
(1066, 'SANEX gel de ducha biome protect natural piel seca bote 550 ml', 'dia.es', 'cuidado_personal|bano_e_higiene_personal|geles_de_duchas_y_esponjas', 3.79, 'https://www.dia.es/product_images/197472/197472_ISO_0_ES.jpg?imwidth=392'),
(1067, 'CALVO sardinillas en aceite de oliva baja en sal lata 60 g', 'dia.es', 'despensa|conservas|conservas_de_pescado', 1.85, 'https://www.dia.es/product_images/181199/181199_ISO_0_ES.jpg?imwidth=392'),
(1068, 'DIA té english breakfast estuche 25 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 0.95, 'https://www.dia.es/product_images/1526/1526_ISO_0_ES.jpg?imwidth=392'),
(1069, 'DIA SUPER PACO detergente máquina líquido pieles sensibles botella 66 lv', 'dia.es', 'cuidado_del_hogar|cuidado_de_la_ropa', 5.09, 'https://www.dia.es/product_images/274013/274013_ISO_0_ES.jpg?imwidth=392'),
(1070, 'DIA IMAQE toallitas desmaquillantes para pieles sensibles con extractos de rosas envase 30 uds', 'dia.es', 'cuidado_personal|cuidado_corporal|limpieza_facial', 1.35, 'https://www.dia.es/product_images/272019/272019_ISO_0_ES.jpg?imwidth=392'),
(1071, 'SPONTEX bayeta multifacil super absorbente bolsa 2 + 1 gratis', 'dia.es', 'cuidado_del_hogar|utensilios_de_limpieza', 2.99, 'https://www.dia.es/product_images/181903/181903_ISO_0_ES.jpg?imwidth=392'),
(1072, 'OREO tarta de queso con galletas oreo caja 350 gr', 'dia.es', 'congelados|helados', 7.59, 'https://www.dia.es/product_images/213216/213216_ISO_0_ES.jpg?imwidth=392'),
(1073, 'DIA IMAQE crema antiedad de día pro-collagen tarro 50 ml', 'dia.es', 'cuidado_personal|cuidado_corporal|crema_facial', 6.09, 'https://www.dia.es/product_images/272041/272041_ISO_0_ES.jpg?imwidth=392'),
(1074, 'SEAGRAM\'S ginebra botella 70 cl', 'dia.es', 'bodega|alcoholes|ginebra', 18.99, 'https://www.dia.es/product_images/182580/182580_ISO_0_ES.jpg?imwidth=392'),
(1075, 'DIA NUESTRA ALACENA pechuga de pavo sandwich envase 250 gr', 'dia.es', 'frescos|charcuteria_y_quesos|cocidos', 2.59, 'https://www.dia.es/product_images/273732/273732_ISO_0_ES.jpg?imwidth=392'),
(1076, 'DIA NUESTRA ALACENA salami extra pack 2 x 100 gr', 'dia.es', 'frescos|charcuteria_y_quesos|curados', 1.32, 'https://www.dia.es/product_images/274141/274141_ISO_0_ES.jpg?imwidth=392'),
(1077, 'DIA LACTEA leche entera envase 1 lt PACK 6', 'dia.es', 'despensa|lacteos_y_huevos|leche', 5.46, 'https://www.dia.es/product_images/608P6/608P6_ISO_0_ES.jpg?imwidth=392'),
(1078, 'TEKEFINGER tequeños de queso caja 190 gr', 'dia.es', 'congelados|precocinados', 2.99, 'https://www.dia.es/product_images/290600/290600_ISO_0_ES.jpg?imwidth=392'),
(1079, 'EL MOLINO DE DIA pan integral multicereales para sandwich bolsa 310 gr', 'dia.es', 'despensa|pan|pan_de_hamburguesas_y_perritos', 1.55, 'https://www.dia.es/product_images/220180/220180_ISO_0_ES.jpg?imwidth=392'),
(1080, 'DIA LACTEA leche fresca entera botella 1 lt', 'dia.es', 'despensa|lacteos_y_huevos|leche', 1.05, 'https://www.dia.es/product_images/271329/271329_ISO_0_ES.jpg?imwidth=392'),
(1081, 'DIA SUPER PACO gel desatascador para tuberías botella 1 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|cocina', 2.05, 'https://www.dia.es/product_images/274783/274783_ISO_0_ES.jpg?imwidth=392'),
(1082, 'DIA té chai estuche 25 bolsitas', 'dia.es', 'despensa|desayunos_y_dulces|infusiones', 1.85, 'https://www.dia.es/product_images/250023/250023_ISO_0_ES.jpg?imwidth=392'),
(1083, 'EL MOLINO DE DIA pan de molde rústico bolsa 600 gr', 'dia.es', 'despensa|pan|pan_de_molde', 1.85, 'https://www.dia.es/product_images/67431/67431_ISO_0_ES.jpg?imwidth=392'),
(1084, 'PEPSI clásica botella 1.75 lt', 'dia.es', 'bebidas|refrescos', 1.59, 'https://www.dia.es/product_images/7659/7659_ISO_0_ES.jpg?imwidth=392'),
(1085, 'VIVISIMA+ colágeno hidrolizado y magnesio lata 250 gr', 'dia.es', 'despensa|dieteticos|complementos_nutricionales', 4.89, 'https://www.dia.es/product_images/271182/271182_ISO_0_ES.jpg?imwidth=392'),
(1086, 'FINDUS menestra de la huerta bolsa 750 gr', 'dia.es', 'congelados|verduras_y_hortalizas', 4.61, 'https://www.dia.es/product_images/41017/41017_ISO_0_ES.jpg?imwidth=392'),
(1087, 'SUN&VEGS hierbabuena envase 70 gr', 'dia.es', 'frescos|verduras_y_hortalizas|otras_verduras', 1.25, 'https://www.dia.es/product_images/275734/275734_ISO_0_ES.jpg?imwidth=392'),
(1088, 'DIA VEGECAMPO ensalada china frasco 180 gr', 'dia.es', 'despensa|conservas|conservas_vegetales', 1.15, 'https://www.dia.es/product_images/53199/53199_ISO_0_ES.jpg?imwidth=392'),
(1089, 'FLOTA lavavajillas mano active power botella 1100 ml', 'dia.es', 'cuidado_del_hogar|lavavajillas', 1.69, 'https://www.dia.es/product_images/151954/151954_ISO_0_ES.jpg?imwidth=392'),
(1090, 'EL COTO vino tinto crianza DO Rioja botella 75 cl', 'dia.es', 'bodega|vino|tinto', 6.30, 'https://www.dia.es/product_images/102921/102921_ISO_0_ES.jpg?imwidth=392'),
(1091, 'REINA gelatina multifrutas, limón y naranja pack 6 unidades 100 gr', 'dia.es', 'despensa|lacteos_y_huevos|postres', 1.59, 'https://www.dia.es/product_images/255620/255620_ISO_0_ES.jpg?imwidth=392'),
(1092, 'DIA MARCELO CARAMELO torcidas regaliz negro bolsa 225 gr', 'dia.es', 'despensa|desayunos_y_dulces|caramelos_chicles_y_golosinas', 1.15, 'https://www.dia.es/product_images/161772/161772_ISO_0_ES.jpg?imwidth=392'),
(1093, 'SAN BENEDETTO Enjoy refresco tropical sin gas botella 1.5 lt', 'dia.es', 'bebidas|refrescos', 1.29, 'https://www.dia.es/product_images/263608/263608_ISO_0_ES.jpg?imwidth=392'),
(1094, 'DANONE ACTIMEL yogur líquido fresa pack 12 unidades 100 gr', 'dia.es', 'despensa|lacteos_y_huevos|yogures', 6.15, 'https://www.dia.es/product_images/131735/131735_ISO_0_ES.jpg?imwidth=392'),
(1095, 'LA MOLISANA tagliatelle nido nº103 paquete 500 gr', 'dia.es', 'despensa|pastas_harinas_y_masas|pastas', 3.06, 'https://www.dia.es/product_images/280324/280324_ISO_0_ES.jpg?imwidth=392'),
(1096, 'CHEETOS gustosines bolsa 96 gr', 'dia.es', 'despensa|aperitivos', 1.99, 'https://www.dia.es/product_images/40279/40279_ISO_0_ES.jpg?imwidth=392'),
(1097, 'DIA MARI MARINERA filetes de abadejo de Alaska bolsa 850 gr', 'dia.es', 'congelados|pescado_y_marisco', 7.89, 'https://www.dia.es/product_images/235129/235129_ISO_0_ES.jpg?imwidth=392'),
(1098, 'DIA lejía densa hogar botella 2 lt', 'dia.es', 'cuidado_del_hogar|productos_de_limpieza|hogar', 1.17, 'https://www.dia.es/product_images/129117/129117_ISO_0_ES.jpg?imwidth=392'),
(1099, 'DIA cacao soluble bolsa 1,5 kg', 'dia.es', 'despensa|desayunos_y_dulces|cacao_y_cremas_de_cacao', 5.75, 'https://www.dia.es/product_images/57965/57965_ISO_0_ES.jpg?imwidth=392');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `ID_USER` int(11) NOT NULL,
  `NOMBREUSUARIO` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PUNTOS` int(11) DEFAULT NULL,
  `ROLE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`ID_USER`, `NOMBREUSUARIO`, `PASSWORD`, `EMAIL`, `PUNTOS`, `ROLE`) VALUES
(1, 'test', '$2y$13$KZK1.a98lhf2NQaEHGlTs.wXU1m1oUqVjG2HMpHEl5XMI7yN9vMxq', 'test@gmail.com', 0, 1),
(2, 'admin', '$2y$13$P3xOGfmQ1l99PrHVcwcZfu7rZSIjl0c2vIwSo822Enrul.UQFUEDa', 'admin@admin.com', 0, 2),
(4, 'pedro', '$2y$13$y5LSkUXVFCvngGsDI327KeRNBIt2r6txFXBzvZFAr7wconHa0uiyK', 'pedro@pedrito.com', 0, 1),
(5, 'test2', '$2y$13$lFo7sVpeI4ySanA1N2AOLOOvAUC2C3SzMVdJ1ZrNBXszwVQ8hl5nu', 'test2@gmail.com', 0, 1),
(26, 'Paco ', '$2y$13$H.8OG/lDnBFO7kOaMVieTO0RrACEEExsH/qBaOcUfO6gOSQNUqSVu', 'funalito23@gamaio', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

CREATE TABLE `valoraciones` (
  `ID_val` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `valoraciones`
--

INSERT INTO `valoraciones` (`ID_val`, `id_producto`, `id_user`, `valoracion`) VALUES
(1, 1, 1, 5),
(2, 2, 1, 5),
(5, 2, 1, 3),
(6, 15, 2, 5),
(7, 24, 2, 5),
(8, 14, 26, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `FK_77E6BED56B3CA4B` (`id_user`);

--
-- Indices de la tabla `carrito_producto`
--
ALTER TABLE `carrito_producto`
  ADD PRIMARY KEY (`id_carritoproducto`),
  ADD KEY `IDX_62C02DC2A97B17A5` (`id_carrito`),
  ADD KEY `IDX_62C02DC2F760EA80` (`id_producto`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID_FAVORITOS`),
  ADD KEY `ID_USER` (`ID_USER`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD PRIMARY KEY (`ID_OPINION`),
  ADD KEY `ID_USER` (`ID_USER`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`id_pw`),
  ADD KEY `fk_id_user` (`id_user`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `fk_usuariopedido` (`id_user`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`id_pedidoproducto`),
  ADD KEY `fk_pedido_pedidoproducto` (`id_pedido`),
  ADD KEY `fk_producto_pedidoproducto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_producto`),
  ADD KEY `NOMBRE` (`Name`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_USER`),
  ADD UNIQUE KEY `NOMBREUSUARIO` (`NOMBREUSUARIO`);

--
-- Indices de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD PRIMARY KEY (`ID_val`),
  ADD KEY `fk_producto` (`id_producto`),
  ADD KEY `fk_usuario` (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `carrito_producto`
--
ALTER TABLE `carrito_producto`
  MODIFY `id_carritoproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID_FAVORITOS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  MODIFY `ID_OPINION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `password`
--
ALTER TABLE `password`
  MODIFY `id_pw` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id_pedidoproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1100;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  MODIFY `ID_val` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `FK_77E6BED56B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`ID_USER`);

--
-- Filtros para la tabla `carrito_producto`
--
ALTER TABLE `carrito_producto`
  ADD CONSTRAINT `FK_62C02DC2A97B17A5` FOREIGN KEY (`id_carrito`) REFERENCES `carrito` (`id_carrito`),
  ADD CONSTRAINT `FK_62C02DC2F760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`Id_producto`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`Id_producto`);

--
-- Filtros para la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD CONSTRAINT `opiniones_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`),
  ADD CONSTRAINT `opiniones_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`Id_producto`);

--
-- Filtros para la tabla `password`
--
ALTER TABLE `password`
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_usuariopedido` FOREIGN KEY (`id_user`) REFERENCES `user` (`ID_USER`);

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `fk_pedido_pedidoproducto` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `fk_producto_pedidoproducto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`Id_producto`);

--
-- Filtros para la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`Id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`id_user`) REFERENCES `user` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
