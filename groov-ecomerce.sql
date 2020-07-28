-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2020 a las 00:43:15
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `groov-ecomerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id_carro` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `id_item` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`id_carro`, `user_id`, `session_id`, `id_item`) VALUES
(11, 0, 'kbi2ej0mo1qql52mct8dp3ko3c', '16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_bill` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `total` int(10) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_bill`, `id_user`, `session_id`, `total`, `fecha`) VALUES
(8, 0, 'p2h8ejpfrl3dmeon24jlk9nia9', 13, '2020-07-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id_item` int(11) NOT NULL,
  `nombre_producto` varchar(40) NOT NULL,
  `desc_producto` varchar(40) NOT NULL,
  `precio_unidad` int(10) NOT NULL,
  `stock_cur` int(10) NOT NULL,
  `stock_min` int(10) NOT NULL,
  `stock_max` int(10) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id_item`, `nombre_producto`, `desc_producto`, `precio_unidad`, `stock_cur`, `stock_min`, `stock_max`, `img_url`) VALUES
(1, 'Versatile systematic collaboration', 'Morbi non lectus. Aliquam sit amet diam ', 59, 72, 67, 54, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PEA8NDw8NDw0QDRAQDw8PDQ8NDw8PFRUWFhURFRUYHSggGBolGxUVITEhJSkrLi4vFx8zODMsNygtLisBCgoKDQ0OGhAPFysdHx0wLS0tKystLS0tLS0tLSstLS0rKystLS0vKy0tLS0tLS0tLSstKy0rLS0tKzUrLS0rLf/AABEIARMAtwMBIgACEQEDEQH/'),
(2, 'Self-enabling tertiary strategy', 'Sed sagittis. Nam congue, risus semper p', 13, 25, 89, 30, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PEA8NDw8NDw0QDRAQDw8PDQ8NDw8PFRUWFhURFRUYHSggGBolGxUVITEhJSkrLi4vFx8zODMsNygtLisBCgoKDQ0OGhAPFysdHx0wLS0tKystLS0tLS0tLSstLS0rKystLS0vKy0tLS0tLS0tLSstKy0rLS0tKzUrLS0rLf/AABEIARMAtwMBIgACEQEDEQH/'),
(3, 'Intuitive dedicated structure', 'Duis bibendum. Morbi non quam nec dui lu', 137, 87, 84, 90, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8TEhUTEhIPDxISEhASEBAQDw8PDxIQFxYWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0dHR4rKy0tLi8rLS4rLS0tLS4tKy0tNS0tLS0tLSstKystLS0tLS0rLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(4, 'Reactive mission-critical approach', 'Maecenas leo odio, condimentum id, luctu', 43, 97, 28, 35, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEBAQEA8PDxAPEBUQDw8PDQ8NDRAPFRIWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNyguLisBCgoKDg0OGhAQGC0lICUrLS0vLy0tKy0rLS0tLSstLS0tKy0vLS0tLSsrLS0wLS0tLS0tLS0tLSsrLS0rKy0tLf/AABEIAOEA4QMBEQACEQEDEQH/'),
(5, 'Multi-channelled high-level database', 'Nulla ut erat id mauris vulputate elemen', 76, 83, 95, 32, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxATEhAQEBASEhUVEBYQDw8QDw8QEBUPFRUWFhUVFRUYHSggGBolGxUVITIhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OFg8PFSsdFRktKystLS0tKysrKystKy0tLSstKy0rLS0tLS0rKystNysrLS0tNzctLS0rLSstKystK//AABEIAOMA3gMBIgACEQEDEQH/'),
(6, 'Decentralized user-facing infrastructure', 'Duis aliquam convallis nunc. Proin at tu', 73, 99, 1, 44, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxATEhUSEhASEBUVEBUQFRAQDxAVEBIQFRUWFxURFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFQ8NECsZFRkrKystKystKzcrNy0rKy0rNystNy0tLSstLSs3KysrLSs3KysrKystKysrKysrLSsrK//AABEIAOoA2AMBIgACEQEDEQH/'),
(7, 'Diverse hybrid challenge', 'Morbi non lectus. Aliquam sit amet diam ', 142, 13, 76, 56, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxESEhUSEBEVFRAWEhYWGBAXFxIVFRIaGBcXFxUSExUYHSggGBolGxgVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGzAmHyYuLS8tKy0tLTUtLSstKy0tLS0tLTEtLS0rLS4tLS0tLS0tKystLSstLS0tLS0tLSsuLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(8, 'Monitored hybrid knowledge base', 'Donec diam neque, vestibulum eget, vulpu', 88, 32, 62, 84, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEhUQEhMVFRUXFhUYFhcXFhUVFxYXFhUYFhUVFxgYHSggGBolHhUWITEiJSkrLi4uGB8zODMsNygtLisBCgoKDg0OGhAQGy0mHyUtLS0tLS0tLS0tLS0tLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(9, 'Programmable solution-oriented array', 'Lorem ipsum dolor sit amet, consectetuer', 151, 57, 100, 61, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEBAVEBUVFhAVFRUVFRUVEBAVFRUXFxUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGismIB04OCsvKzUvKy0tLSs3LS8rLy01NzUuLy0tLS0vLS4rNS0rNS0tLSstLS0tKy0tLi41Lf/AABEIAQMAwgMBIgACEQEDEQH/'),
(10, 'Horizontal zero administration internet ', 'Maecenas leo odio, condimentum id, luctu', 111, 47, 66, 57, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVEhIXFRUVFRUVFRAVFRASFRUWFhUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGBAQFy0dHR0rKystLSsrKy0tLS0tLS0tKystLSstNy03LS0tLSstLS0rLTc3Nys3LS03LS0tLS0tK//AABEIARgAtAMBIgACEQEDEQH/'),
(11, 'Function-based upward-trending protocol', 'Maecenas leo odio, condimentum id, luctu', 87, 65, 59, 37, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSExIVFhUXFRcXFxUVFxUVFxcXFRgXFhUXFxUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGisfHSUtLSstLS0tLSsvLS0rLS0tLS0tKy0rKy0rLS0rLS0rLS0tLS0tLS0tLS0tLSsrLSstLf/AABEIALcBEwMBIgACEQEDEQH/'),
(12, 'Monitored systematic firmware', 'Integer ac leo. Pellentesque ultrices ma', 18, 19, 71, 59, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUTEhMVEhIVEhgWFRUQDw8VFhUSFRUWFhUVFxUYHSggGBolHRUWITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQFy0dHSUtLS0rLS0tLS0tLS0tLS0tLSsrLS0tLS0tLS0tLS0rLS0tLTctLS0tLS0tKy0tLTc3N//AABEIAPYAzQMBIgACEQEDEQH/'),
(13, 'Streamlined non-volatile protocol', 'Mauris enim leo, rhoncus sed, vestibulum', 73, 37, 41, 35, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhIWFhUVGRgXGBcYGRkYGRgWGhgYGRoeHRcZHyggHR0nHR0VLTEhJikrLi4uHR8zODMtNygtLisBCgoKDg0OGhAQFy0dHR8tKy0rLS0rLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS03LS0tLS0tLy0tLS0tLSstN//AABEIAOEA4QMBIgACEQEDEQH/'),
(14, 'Optimized optimizing model', 'Curabitur in libero ut massa volutpat co', 36, 53, 91, 78, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTExIVFRUXGBUYFRcWFRYVFRcYFhcWFxcWFRUYHSggGBolGxcVITEhJSkrLi4uGB8zODMsNygtLisBCgoKDg0OGxAQGy0lICU2Li0tLis3LS0tLy0xLi0tLystNy0vKy4tLTAtKy0rNS0tLS0uLS0tKy0tLjctLystK//AABEIAQMAwgMBIgACEQEDEQH/'),
(15, 'Horizontal maximized matrices', 'Vestibulum ac est lacinia nisi venenatis', 35, 75, 29, 19, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMPEBUREhIVExEXFhUYGRcYFxYQGBgXGBgWFhYSFhUYHCggGBolGxYYITEhJSkrLi4uGSAzODMsOCgtLisBCgoKDg0OGxAQGy0lICUtKy0tKy0vLTctLTYvLTUvLSstLS0uLS0tKzUrLi0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(16, 'Cross-platform coherent neural-net', 'Curabitur at ipsum ac tellus semper inte', 113, 86, 70, 36, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMQEhUREBERERASFRIYExcXFRgSFxUVFh8ZGBUXFxUYHSggGR4nGxcZITEhJSkrLi4uGB8zODMtNygtLysBCgoKDg0OGxAQGislHyU1LSsrLy0tLS0tLi0rLTYtLS01LS0tLy0tLS0rLy0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(17, 'Adaptive real-time emulation', 'Quisque id justo sit amet sapien digniss', 99, 45, 14, 100, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSExMVFRIXFRcXFxUXGBUQFRUXFhUXFxUVFRUYHSggGBolGxUVITEhJSkrLi4uFyAzODMtNygtLisBCgoKDg0OGBAQGisdHR0tKystLSsrLS0rKystLSstLS0tKy0tLTcrLS0tLS0tLS0tNy03Ny0tKzc3NzcrKy0tN//AABEIAQAAxQMBIgACEQEDEQH/'),
(18, 'Centralized regional circuit', 'Nullam porttitor lacus at turpis. Donec ', 147, 79, 69, 21, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhIWFhUXGB0YGBgXFxgVGBgYFxcXFxoVFhUYHSggGBolHhYXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDQ0OFQ0NDysZFRkrKzcrNzc3LTctKzcrKzc3KysrKysrKysrKysrLS0rKysrKysrKysrKysrLSsrKysrK//AABEIAP8AxgMBIgACEQEDEQH/'),
(19, 'Fully-configurable even-keeled methodolo', 'Morbi non lectus. Aliquam sit amet diam ', 75, 12, 46, 72, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhMVFRUXGRYXGBYXGBgYFxcZFxUWGB0VGhcaHSggGBslGxkXITEhJSorLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGi0lHSUvKysrLSstKy0tLy0tLS0rLS0tLSstLSsrKy0tLSstLS0tLS0tLS0tLS0rLS0tLSstMP/AABEIAOsA1gMBIgACEQEDEQH/'),
(20, 'Realigned user-facing policy', 'Phasellus sit amet erat. Nulla tempus. V', 46, 52, 73, 63, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExMVFhUVGBgXFxUVGBcVFxcXFxcXFxgXFxcYHSggGBolHRcVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lHyItLS0tLS0tLS0tLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAPQAzwMBIgACEQEDEQH/'),
(21, 'Open-source 24/7 frame', 'Cum sociis natoque penatibus et magnis d', 61, 35, 58, 24, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExMWFRUWFRgVFRcYGBUXFRgXFRUXFxUVFRUYHSggGBolGxYVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0dHx8tLSstLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLSstLS0tLS0tLSsrLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(22, 'Cross-platform 5th generation orchestrat', 'Cum sociis natoque penatibus et magnis d', 44, 67, 99, 8, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhIWFhUXFRoYFxcYFxcYHRcYGR0aFxcXGBgYHSggGBolHRUXITEiJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGC4eHh0tLS0tLS0rLS0yLi0tLTcrNystKystLS0tNysrLSsrKystLS03KywrLSsuKysvLzcrN//AABEIAPAA0gMBIgACEQEDEQH/'),
(23, 'Seamless didactic matrices', 'Phasellus in felis. Donec semper sapien ', 22, 48, 28, 6, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhMWFRUXGBgYFxgYFxgXFxoXFxgXGBgXGBgYHSggGBolGxcVIjEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0mHyUtLS0tLS0uLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLf/AABEIAKgBLAMBIgACEQEDEQH/'),
(24, 'Front-line bottom-line capacity', 'Proin leo odio, porttitor id, consequat ', 74, 6, 63, 76, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExIVFhUXFRYWGBgYFxcXGBYaFxUXFhgaFhcYHSggGBolHxcXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0lICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/'),
(25, 'Virtual motivating protocol', 'Mauris enim leo, rhoncus sed, vestibulum', 54, 74, 90, 39, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExIVFhUXGBoYFhgXGBodGxsYGhgeGR0eGyAYICggHR0lGx8aITEhJSkrLjAuGh8zODMtNygtLisBCgoKDg0OGxAQGy0mICUvLy8tLS8tLS0uLS0tLS0vLS03LS0vLS8tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAQYAwAMBIgACEQEDEQH/'),
(26, 'Proactive fault-tolerant forecast', 'Etiam vel augue. Vestibulum rutrum rutru', 87, 51, 32, 31, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExIWFRUXFxgXFxgVGBcVFhgXGBYWGBcXFRgYHSggGB0lHRcXITEiJSkrLi4uFx8zODMsNygtLisBCgoKDg0OFw8QGi0lHR8tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLi0tLS0uLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(27, 'Fully-configurable interactive approach', 'Maecenas tristique, est et tempus semper', 139, 59, 69, 65, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFRUWGBcYGBgYFxcXFxUYFRgYHxUXGBoYHSggGBolGxgXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGisdHSUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSsrLS0tLTctLTc3Kys3Lf/AABEIAOYA2wMBIgACEQEDEQH/'),
(28, 'Devolved mission-critical secured line', 'Duis bibendum, felis sed interdum venena', 10, 97, 72, 38, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUVGBgZGBcYFRcYFxsXGBgXGh0XGhcYHSggGBolHhgXITEiJSkrLi4uGh8zODMtNygtLisBCgoKDg0OGxAQGi0dHSUrLS0tLS0tLS0tLS0tLS0tKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLTgtMv/AABEIALcBEwMBIgACEQEDEQH/'),
(29, 'Fundamental maximized groupware', 'Duis consequat dui nec nisi volutpat ele', 46, 78, 34, 13, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUXGBgYFRgXFRUXFRcaFhgXGBcYFxcYHSggGBolHRoWITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0dHSUtLSstLS0tLS0tLS0tLSsvLS0tKy0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0rLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(30, 'Down-sized multi-state challenge', 'Suspendisse potenti. In eleifend quam a ', 99, 59, 95, 58, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFRUXFRUVGBgYFxcaGhcaGBoWGBgVGBgYHSggGBslHRcVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OFxAQGjcfHR0tKy0uLy0tLS83LS03LS0tMi03MTE0Ky0tLi0tLTctLTc3Nys3LTgrMy0vKzcrODc3OP/AABEIAOAA4AMBIgACEQEDEQH/'),
(31, 'Persevering well-modulated website', 'Morbi non lectus. Aliquam sit amet diam ', 94, 80, 13, 35, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFhUXFxsYGBgYGBgVGhcfHhogGRoXHR0YHSggHR0lHhgaITEhJSkrLi4uGh8zODMsNygtLisBCgoKDg0OGhAQGi0eHR4tKy0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(32, 'Integrated actuating attitude', 'Quisque id justo sit amet sapien digniss', 63, 18, 26, 42, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQTEhUSExMWFRUXGR8bFxcYGB8eGxoYHxsfGBoYHRodHyggGB0mHhodITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGyslHyUyLy8vLys1Ky0tLTItLy0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/'),
(33, 'Pre-emptive bifurcated alliance', 'Sed sagittis. Nam congue, risus semper p', 81, 97, 58, 15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQl2r6niWtFimVUavl7GIHT5Pg_b8zUd-BLPw&usqp=CAU'),
(34, 'Exclusive high-level flexibility', 'Fusce consequat. Nulla nisl. Nunc nisl.', 25, 99, 49, 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQteoFsKbgX3ehNl72GW7bORndrnSPoCM1PVw&usqp=CAU'),
(35, 'Multi-lateral upward-trending middleware', 'Aenean lectus. Pellentesque eget nunc. D', 145, 93, 98, 57, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQxL3sbX2AvpC4w-Z5cgFxI7Nu7jbfIPiEqbw&usqp=CAU'),
(36, 'Switchable optimizing budgetary manageme', 'Phasellus in felis. Donec semper sapien ', 26, 19, 19, 91, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIDc_bU6_Syrx1f2PXzTbvAxG9YFYL7Br3Tw&usqp=CAU'),
(37, 'Networked motivating strategy', 'Maecenas tristique, est et tempus semper', 34, 46, 90, 92, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRcrbgh3oQw4TjeyvNPOEdEhrIdMddv1dOiBg&usqp=CAU'),
(38, 'Open-architected multi-state orchestrati', 'Praesent id massa id nisl venenatis laci', 72, 68, 17, 98, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRiatZvi1elTUMkaHJzkcV9K6-j84lxluEiDQ&usqp=CAU'),
(39, 'Sharable bandwidth-monitored neural-net', 'Nullam porttitor lacus at turpis. Donec ', 82, 44, 30, 59, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRkHdH0uQt7qfWazhC7175dBaIZpB_SDadTjw&usqp=CAU'),
(40, 'Stand-alone intangible database', 'Aenean lectus. Pellentesque eget nunc. D', 62, 8, 34, 48, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRk_chsltwe3M56mi7jS5xaBzAJoAnImJca2Q&usqp=CAU'),
(41, 'Advanced mobile utilisation', 'Nulla ut erat id mauris vulputate elemen', 16, 22, 86, 38, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSigTsrn9COIn7p5QnBT0IlQ1AFMFNgMvx1xw&usqp=CAU'),
(42, 'Optional composite challenge', 'Phasellus in felis. Donec semper sapien ', 148, 64, 13, 17, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjyA3X7687_qig5-xoirTg_1QdWNJ3TxgB2A&usqp=CAU'),
(43, 'Team-oriented systemic installation', 'Duis bibendum. Morbi non quam nec dui lu', 123, 32, 41, 6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-KJJ86934j_xrD2TZ8NAzD4cuz7UgKwz2gg&usqp=CAU'),
(44, 'Pre-emptive systematic toolset', 'Sed sagittis. Nam congue, risus semper p', 36, 60, 19, 78, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTBT4gf4QuqsINYa_OSdBQ1jJVMo4A0l1oOkQ&usqp=CAU'),
(45, 'Multi-tiered multi-state moratorium', 'Curabitur at ipsum ac tellus semper inte', 108, 92, 84, 52, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTGtPmEY8jHc_USLiHZMOsTw9u-TpCnjEbY6Q&usqp=CAU'),
(46, 'Fundamental impactful functionalities', 'Etiam vel augue. Vestibulum rutrum rutru', 76, 4, 75, 88, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTxdZJTNCzuAEY4YyBcGls87M27LdTrqCH_oQ&usqp=CAU'),
(47, 'Face to face heuristic leverage', 'Sed sagittis. Nam congue, risus semper p', 22, 68, 12, 53, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTzKFXJxPeSJ3dNNqrZzDIlcKbz2hG7Ml414w&usqp=CAU'),
(48, 'Front-line homogeneous orchestration', 'Suspendisse potenti. In eleifend quam a ', 73, 75, 76, 20, ''),
(49, 'Implemented reciprocal time-frame', 'Maecenas leo odio, condimentum id, luctu', 30, 67, 82, 26, ''),
(50, 'Upgradable solution-oriented function', 'Maecenas ut massa quis augue luctus tinc', 14, 42, 84, 95, ''),
(51, 'Implemented clear-thinking open system', 'Integer ac leo. Pellentesque ultrices ma', 93, 75, 55, 21, ''),
(52, 'Advanced systemic adapter', 'In congue. Etiam justo. Etiam pretium ia', 132, 54, 28, 18, ''),
(53, 'Pre-emptive full-range definition', 'Morbi porttitor lorem id ligula. Suspend', 70, 2, 38, 91, ''),
(54, 'Self-enabling uniform approach', 'Fusce posuere felis sed lacus. Morbi sem', 36, 84, 13, 96, ''),
(55, 'Re-contextualized non-volatile applicati', 'Aenean lectus. Pellentesque eget nunc. D', 80, 24, 31, 1, ''),
(56, 'Sharable directional project', 'Nulla ut erat id mauris vulputate elemen', 119, 70, 57, 21, ''),
(57, 'User-centric zero tolerance monitoring', 'Nullam porttitor lacus at turpis. Donec ', 144, 13, 44, 29, ''),
(58, 'Open-architected incremental productivit', 'Etiam vel augue. Vestibulum rutrum rutru', 104, 32, 42, 65, ''),
(59, 'Managed solution-oriented workforce', 'Morbi porttitor lorem id ligula. Suspend', 57, 10, 81, 59, ''),
(60, 'Reverse-engineered static Graphic Interf', 'Nam ultrices, libero non mattis pulvinar', 35, 12, 97, 62, ''),
(61, 'Profit-focused incremental time-frame', 'Donec diam neque, vestibulum eget, vulpu', 131, 80, 19, 65, ''),
(62, 'Organized tangible artificial intelligen', 'Praesent id massa id nisl venenatis laci', 59, 44, 60, 68, ''),
(63, 'Monitored human-resource encoding', 'Nullam porttitor lacus at turpis. Donec ', 57, 10, 59, 49, ''),
(64, 'Polarised didactic customer loyalty', 'Duis bibendum. Morbi non quam nec dui lu', 27, 72, 29, 7, ''),
(65, 'Devolved bandwidth-monitored capability', 'Praesent id massa id nisl venenatis laci', 42, 63, 5, 87, ''),
(66, 'Organic hybrid conglomeration', 'Integer ac leo. Pellentesque ultrices ma', 45, 64, 81, 59, ''),
(67, 'Re-engineered mobile array', 'In hac habitasse platea dictumst. Morbi ', 15, 75, 24, 3, ''),
(68, 'User-centric interactive array', 'Aliquam quis turpis eget elit sodales sc', 64, 76, 69, 39, ''),
(69, 'Ameliorated asymmetric projection', 'Nullam porttitor lacus at turpis. Donec ', 51, 61, 59, 14, ''),
(70, 'Fundamental 6th generation open architec', 'Morbi porttitor lorem id ligula. Suspend', 21, 14, 76, 31, ''),
(71, 'Multi-tiered analyzing algorithm', 'Nulla ut erat id mauris vulputate elemen', 72, 36, 1, 12, ''),
(72, 'Pre-emptive empowering core', 'Nullam porttitor lacus at turpis. Donec ', 52, 61, 91, 90, ''),
(73, 'Multi-layered systemic conglomeration', 'Curabitur in libero ut massa volutpat co', 98, 1, 0, 85, ''),
(74, 'Total clear-thinking definition', 'Maecenas tristique, est et tempus semper', 22, 20, 86, 80, ''),
(75, 'De-engineered empowering Graphic Interfa', 'Nam ultrices, libero non mattis pulvinar', 88, 88, 7, 78, ''),
(76, 'Innovative foreground Graphic Interface', 'Sed ante. Vivamus tortor. Duis mattis eg', 75, 9, 92, 89, ''),
(77, 'Switchable scalable Graphic Interface', 'Suspendisse potenti. In eleifend quam a ', 144, 70, 88, 71, ''),
(78, 'Phased needs-based matrix', 'Quisque porta volutpat erat. Quisque era', 75, 62, 9, 97, ''),
(79, 'Business-focused didactic knowledge user', 'In congue. Etiam justo. Etiam pretium ia', 85, 51, 2, 59, ''),
(80, 'Balanced next generation matrices', 'Nulla ut erat id mauris vulputate elemen', 52, 78, 54, 91, ''),
(81, 'Ameliorated responsive frame', 'Maecenas ut massa quis augue luctus tinc', 143, 5, 79, 14, ''),
(82, 'Advanced empowering workforce', 'Phasellus in felis. Donec semper sapien ', 41, 13, 80, 17, ''),
(83, 'Multi-tiered non-volatile instruction se', 'Aliquam quis turpis eget elit sodales sc', 47, 3, 90, 55, ''),
(84, 'De-engineered scalable infrastructure', 'Curabitur gravida nisi at nibh. In hac h', 139, 99, 96, 87, ''),
(85, 'Organic methodical initiative', 'In quis justo. Maecenas rhoncus aliquam ', 125, 80, 59, 87, ''),
(86, 'Sharable scalable parallelism', 'Morbi non lectus. Aliquam sit amet diam ', 141, 51, 83, 55, ''),
(87, 'Advanced directional knowledge user', 'Cum sociis natoque penatibus et magnis d', 122, 90, 84, 29, ''),
(88, 'Progressive 24 hour architecture', 'Sed sagittis. Nam congue, risus semper p', 29, 57, 27, 19, ''),
(89, 'Profit-focused value-added software', 'Aenean lectus. Pellentesque eget nunc. D', 61, 68, 10, 69, ''),
(90, 'Balanced optimizing solution', 'In sagittis dui vel nisl. Duis ac nibh. ', 91, 57, 92, 13, ''),
(91, 'Grass-roots web-enabled complexity', 'Praesent id massa id nisl venenatis laci', 95, 16, 9, 27, ''),
(92, 'Organized hybrid utilisation', 'Etiam vel augue. Vestibulum rutrum rutru', 21, 5, 44, 29, ''),
(93, 'Organic zero defect leverage', 'Mauris enim leo, rhoncus sed, vestibulum', 15, 47, 25, 6, ''),
(94, 'Inverse 6th generation open system', 'In hac habitasse platea dictumst. Morbi ', 141, 99, 12, 62, ''),
(95, 'Object-based real-time architecture', 'Praesent blandit. Nam nulla. Integer ped', 82, 85, 84, 77, ''),
(96, 'Open-source dedicated hardware', 'In hac habitasse platea dictumst. Morbi ', 84, 1, 2, 21, ''),
(97, 'Pre-emptive optimal database', 'Nullam porttitor lacus at turpis. Donec ', 129, 6, 83, 49, ''),
(98, 'Intuitive intangible customer loyalty', 'In hac habitasse platea dictumst. Etiam ', 133, 87, 21, 69, ''),
(99, 'Business-focused 4th generation utilisat', 'Lorem ipsum dolor sit amet, consectetuer', 97, 89, 56, 79, ''),
(100, 'Balanced next generation protocol', 'Sed ante. Vivamus tortor. Duis mattis eg', 35, 71, 31, 27, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `session` varchar(40) NOT NULL,
  `cookie` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre`, `apellido`, `email`, `username`, `password`, `tipo_usuario`, `session`, `cookie`) VALUES
(1, 'test', 'test123', 'test@example.com', 'test', 'sh48AF4SplA/Q', 'admin', 'kbi2ej0mo1qql52mct8dp3ko3c', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id_carro`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_bill`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
