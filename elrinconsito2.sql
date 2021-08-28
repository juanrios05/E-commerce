-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2021 a las 08:12:22
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elrinconsito2`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ActualizarProducto` (IN `p_id_producto` VARCHAR(20), IN `p_nombre` VARCHAR(50), IN `p_descripcion` VARCHAR(150), IN `p_presentacion` VARCHAR(100), IN `p_id_marca` INT(11), IN `p_fecha_vencimiento` DATE, IN `p_precio_compra` DECIMAL(10,2), IN `p_precio_venta` DECIMAL(10,2), IN `p_cantidad` INT(7), IN `p_id_subcategoria` INT(11), IN `p_id_proveedor` VARCHAR(20))  BEGIN
UPDATE tbl_producto
SET nombre=p_nombre,descripcion=p_descripcion,
presentacion=p_presentacion,
id_marca=p_id_marca,fecha_vencimiento=p_fecha_vencimiento,
precio_compra=p_precio_compra,precio_venta=p_precio_venta,
cantidad=p_cantidad,id_subcategoria=p_id_subcategoria, id_proveedor=p_id_proveedor
WHERE id_producto=p_id_producto;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ActualizarProveedor` (IN `p_id_proveedor` VARCHAR(20), IN `p_nombre_proveedor` VARCHAR(75), IN `p_telefono` VARCHAR(20), IN `p_correo` VARCHAR(100), IN `p_direccion` VARCHAR(100))  BEGIN
UPDATE tbl_proveedor SET nombre_proveedor = p_nombre_proveedor, telefono = p_telefono, correo = p_correo, direccion = p_direccion WHERE id_proveedor = p_id_proveedor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AgregarMarca` (IN `m_id_marca` INT(11), IN `m_marca` VARCHAR(50))  BEGIN
INSERT INTO tbl_marca VALUES
(m_id_marca,m_marca);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AgregarSubcategoria` (IN `s_id_subcategoria` INT(11), IN `s_subcategoria` VARCHAR(50))  BEGIN
INSERT INTO tbl_subcategoria VALUES
(s_id_subcategoria,s_subcategoria);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EliminarProducto` (IN `p_id_producto` VARCHAR(20))  BEGIN 
DELETE FROM tbl_producto WHERE id_producto = p_id_producto;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EliminarProveedor` (IN `p_id_proveedor` VARCHAR(20))  BEGIN
DELETE FROM tbl_proveedor WHERE id_proveedor = p_id_proveedor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_IngresarProducto` (IN `p_id_producto` VARCHAR(20), IN `p_nombre` VARCHAR(50), IN `p_descripcion` VARCHAR(150), IN `p_presentacion` VARCHAR(100), IN `p_id_marca` INT(11), IN `p_fecha_vencimiento` DATE, IN `p_precio_compra` DECIMAL(10,2), IN `p_precio_venta` DECIMAL(10,2), IN `p_cantidad` INT(7), IN `p_id_subcategoria` INT(11), IN `p_id_proveedor` VARCHAR(20))  BEGIN
INSERT INTO tbl_producto VALUES
(p_id_producto,p_nombre, p_descripcion,p_presentacion, p_id_marca, p_fecha_vencimiento, p_precio_compra, p_precio_venta, p_cantidad, p_id_subcategoria,p_id_proveedor);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_IngresarProveedor` (IN `prov_id_proveedor` VARCHAR(20), IN `prov_nombre` VARCHAR(75), IN `prov_telefono` VARCHAR(20), IN `prov_correo` VARCHAR(100), IN `prov_direccion` VARCHAR(100))  BEGIN
INSERT INTO tbl_proveedor VALUES
(prov_id_proveedor,prov_nombre,prov_telefono,prov_correo,prov_direccion);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_IngresoUsuario` (IN `p_correo` VARCHAR(50), IN `p_clave` VARCHAR(40))  BEGIN
SELECT * FROM tbl_usuario WHERE
correo = p_correo AND clave = p_clave;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ListarMarca` ()  BEGIN
SELECT * fROM tbl_marca
ORDER BY marca ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ListarPorId` (IN `p_id_producto` VARCHAR(20))  BEGIN
SELECT * FROM tbl_producto
WHERE id_producto = p_id_producto;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ListarProductos` ()  BEGIN
SELECT p.*, m.marca, s.subcategoria,prov.nombre_proveedor
FROM tbl_producto AS p
INNER JOIN tbl_marca AS m
ON 
p.id_marca = m.id_marca
INNER JOIN tbl_subcategoria AS s
ON 
p.id_subcategoria = s.id_subcategoria
INNER JOIN tbl_proveedor AS prov
ON
p.id_proveedor = prov.id_proveedor
ORDER BY m.marca;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ListarSubcategoria` ()  BEGIN
SELECT * fROM tbl_subcategoria
ORDER BY subcategoria ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ObtenerDetalleVentas` ()  BEGIN
SELECT dfv.id_detalle_factura_venta,dfv.id_producto,p.nombre,p.precio_venta,dfv.id_factura_venta,fv.fecha,fv.cedula,u.nombres,u.apellidos,dfv.cantidad,dfv.precio
FROM tbl_detalle_factura_venta AS dfv
INNER JOIN tbl_producto AS p
ON
dfv.id_producto = p.id_producto
INNER JOIN tbl_factura_venta AS fv
ON
dfv.id_factura_venta = fv.id_factura_venta
INNER JOIN tbl_usuario AS u
ON
fv.cedula = u.cedula;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ObtenerProducto` (IN `p_id_producto` VARCHAR(20))  BEGIN
SELECT p.id_producto,p.nombre,p.descripcion,
p.presentacion,p.id_marca,m.marca,p.fecha_vencimiento,
p.precio_compra,p.precio_venta,p.cantidad,p.id_subcategoria,
sub.subcategoria,p.id_proveedor,prov.nombre_proveedor
FROM tbl_producto AS p
INNER JOIN tbl_marca AS m
ON
p.id_marca = m.id_marca
INNER JOIN tbl_subcategoria AS sub
ON
p.id_subcategoria = sub.id_subcategoria
INNER JOIN tbl_proveedor AS prov
ON
p.id_proveedor = prov.id_proveedor
WHERE p.id_producto = p_id_producto;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ObtenerProductos` ()  BEGIN
SELECT p.id_producto,p.nombre,p.descripcion,p.presentacion,
p.id_marca,m.marca,p.fecha_vencimiento,p.precio_compra,
p.precio_venta,p.cantidad,p.id_subcategoria,
sub.subcategoria,p.id_proveedor,prov.nombre_proveedor
FROM tbl_producto AS p
INNER JOIN tbl_marca AS m
ON
p.id_marca = m.id_marca
INNER JOIN tbl_subcategoria AS sub
ON
p.id_subcategoria = sub.id_subcategoria
INNER JOIN tbl_proveedor AS prov
ON
p.id_proveedor = prov.id_proveedor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ObtenerProveedor` (IN `prov_id_proveedor` VARCHAR(20))  BEGIN
SELECT * FROM tbl_proveedor
WHERE id_proveedor=prov_id_proveedor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ObtenerProveedores` ()  BEGIN 
SELECT * FROM tbl_proveedor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ObtenerUsuario` (IN `u_cedula` VARCHAR(12))  BEGIN
SELECT * FROM tbl_usuario
WHERE cedula = u_cedula;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ObtenerUsuarios` ()  BEGIN
SELECT * FROM tbl_usuario;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RegistroUsuario` (IN `p_cedula` VARCHAR(12), IN `p_nombres` VARCHAR(50), IN `p_apellidos` VARCHAR(50), IN `p_telefono` VARCHAR(20), IN `p_direccion` VARCHAR(30), IN `p_correo` VARCHAR(50), IN `p_clave` VARCHAR(40), IN `p_perfil_usuario` VARCHAR(1))  BEGIN
INSERT INTO tbl_usuario VALUES
(p_cedula,p_nombres,p_apellidos,p_telefono,p_direccion,p_correo,p_clave,'2');
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `id_subcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_factura_compra`
--

CREATE TABLE `tbl_detalle_factura_compra` (
  `id_detalle_factura_compra` int(11) NOT NULL,
  `id_factura_compra` int(11) NOT NULL,
  `id_producto` varchar(20) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_detalle_factura_compra`
--

INSERT INTO `tbl_detalle_factura_compra` (`id_detalle_factura_compra`, `id_factura_compra`, `id_producto`, `cantidad`, `precio`) VALUES
(1, 1, 'JABONPROTEXx75g', 28, '55440.00'),
(2, 1, 'ARRCASTx500g', 25, '72000.00'),
(3, 2, 'ARRROAx500g', 30, '55440.00'),
(4, 2, 'LECCOLANTAx1000ml', 33, '77220.00'),
(5, 3, 'ARRCASTx500g', 10, '28800.00'),
(6, 3, 'ARROZCARIBEx500g', 10, '13500.00'),
(7, 3, 'ARROZORQUIDEAx490g', 10, '13500.00'),
(8, 3, 'ARRROAx500g', 10, '13500.00'),
(9, 4, 'ARVEJASUPERORIENTEx5', 10, '10800.00'),
(10, 4, 'CREMACOLGATEx60ml', 10, '22500.00'),
(11, 4, 'CREMAFORTIDENTx60ml', 10, '20700.00'),
(12, 4, 'DESODORANTESPEEDx10g', 10, '13500.00'),
(13, 5, 'FRIJOLSUPERORIENTEx1', 15, '108000.00'),
(14, 5, 'GALLETASDUCALESNOELx', 15, '72900.00'),
(15, 5, 'GALLETASSALADASNOELx', 15, '59400.00'),
(16, 6, 'GARBANZOSUPERORIENTE', 15, '37800.00'),
(17, 6, 'JABONJOHNx125g', 15, '24300.00'),
(18, 7, 'JABONPOLVOARIELx450g', 10, '29700.00'),
(19, 7, 'JABONPROTEXx75g', 10, '19800.00'),
(20, 7, 'JABONREXOx125g', 10, '16200.00'),
(21, 7, 'LAVALOZAAXIONx500g', 10, '34200.00'),
(22, 7, 'LECCOLANTAx1000ml', 10, '23400.00'),
(23, 8, 'LECHEAURALACx1000ml', 20, '41400.00'),
(24, 8, 'LENTEJASUPERORIENTEx', 20, '39600.00'),
(25, 8, 'LIMPIDOBLANCOXx1000m', 20, '63000.00'),
(26, 8, 'MULTIUSOSFABULOSOx10', 20, '54000.00'),
(27, 8, 'PANMAMAINESx420g', 20, '97200.00'),
(28, 9, 'PANTAJADONATIPANx500', 15, '43200.00'),
(29, 9, 'SHAMPOOSEDALx190ml', 15, '137700.00'),
(30, 10, 'TOSTADASFLORTRIGOx18', 10, '34200.00'),
(31, 11, 'TOSTADASMAMAINESx24u', 20, '79200.00'),
(32, 11, 'TOSTADASNATIPANx170g', 20, '75600.00'),
(33, 11, 'ARRCASTx500g', 20, '57600.00'),
(34, 12, 'ARROZCARIBEx500g', 10, '13500.00'),
(35, 12, 'ARROZORQUIDEAx490g', 10, '13500.00'),
(36, 12, 'ARRROAx500g', 10, '13500.00'),
(37, 13, 'ARVEJASUPERORIENTEx5', 15, '16200.00'),
(38, 13, 'CREMACOLGATEx60ml', 15, '33750.00'),
(39, 13, 'CREMAFORTIDENTx60ml', 15, '31050.00'),
(40, 13, 'DESODORANTESPEEDx10g', 15, '20250.00'),
(41, 13, 'FRIJOLSUPERORIENTEx1', 15, '108000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_factura_venta`
--

CREATE TABLE `tbl_detalle_factura_venta` (
  `id_detalle_factura_venta` int(11) NOT NULL,
  `id_factura_venta` int(11) NOT NULL,
  `id_producto` varchar(20) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_detalle_factura_venta`
--

INSERT INTO `tbl_detalle_factura_venta` (`id_detalle_factura_venta`, `id_factura_venta`, `id_producto`, `cantidad`, `precio`) VALUES
(2, 2, 'JABONPROTEXx75g', 5, '11000.00'),
(3, 2, 'LECCOLANTAx1000ml', 3, '7800.00'),
(4, 3, 'ARRCASTx500g', 5, '16000.00'),
(5, 3, 'CREMACOLGATEx60ml', 2, '5000.00'),
(6, 3, 'LECHEAURALACx1000ml', 1, '2300.00'),
(7, 3, 'TOSTADASMAMAINESx24u', 1, '4400.00'),
(8, 4, 'CREMACOLGATEx60ml', 3, '7500.00'),
(9, 4, 'PANMAMAINESx420g', 1, '5400.00'),
(10, 4, 'JABONJOHNx125g', 5, '9000.00'),
(11, 5, 'ARROZORQUIDEAx490g', 10, '15000.00'),
(12, 5, 'GARBANZOSUPERORIENTE', 5, '14000.00'),
(13, 5, 'LENTEJASUPERORIENTEx', 5, '11000.00'),
(14, 5, 'TOSTADASFLORTRIGOx18', 3, '11400.00'),
(15, 5, 'PANMAMAINESx420g', 3, '16200.00'),
(16, 5, 'LECHEAURALACx1000ml', 2, '4600.00'),
(17, 5, 'PANTAJADONATIPANx500', 3, '9600.00'),
(18, 6, 'JABONJOHNx125g', 1, '1800.00'),
(19, 6, 'SHAMPOOSEDALx190ml', 1, '10200.00'),
(20, 7, 'MULTIUSOSFABULOSOx10', 2, '6000.00'),
(21, 7, 'LAVALOZAAXIONx500g', 2, '7600.00'),
(22, 7, 'JABONPOLVOARIELx450g', 2, '6600.00'),
(23, 7, 'LIMPIDOBLANCOXx1000m', 2, '7000.00'),
(24, 8, 'ARRCASTx500g', 10, '32000.00'),
(25, 8, 'ARVEJASUPERORIENTEx5', 5, '6000.00'),
(26, 8, 'CREMAFORTIDENTx60ml', 3, '6900.00'),
(27, 8, 'DESODORANTESPEEDx10g', 2, '3000.00'),
(28, 8, 'FRIJOLSUPERORIENTEx1', 5, '40000.00'),
(29, 8, 'GALLETASDUCALESNOELx', 3, '16200.00'),
(30, 8, 'GALLETASSALADASNOELx', 3, '13200.00'),
(31, 8, 'GARBANZOSUPERORIENTE', 5, '14000.00'),
(32, 8, 'JABONPROTEXx75g', 2, '4400.00'),
(33, 8, 'LECHEAURALACx1000ml', 3, '6900.00'),
(34, 9, 'SHAMPOOSEDALx190ml', 5, '51000.00'),
(35, 9, 'FRIJOLSUPERORIENTEx1', 5, '40000.00'),
(36, 10, 'ARRCASTx500g', 5, '16000.00'),
(37, 10, 'CREMACOLGATEx60ml', 1, '2500.00'),
(38, 10, 'DESODORANTESPEEDx10g', 1, '1500.00'),
(39, 10, 'GALLETASSALADASNOELx', 3, '13200.00'),
(40, 10, 'LECCOLANTAx1000ml', 2, '5200.00'),
(41, 10, 'PANMAMAINESx420g', 3, '14580.00'),
(42, 11, 'TOSTADASNATIPANx170g', 3, '12600.00'),
(43, 11, 'TOSTADASMAMAINESx24u', 3, '13200.00'),
(44, 11, 'TOSTADASFLORTRIGOx18', 2, '7600.00'),
(45, 12, 'SHAMPOOSEDALx190ml', 2, '20400.00'),
(46, 12, 'PANTAJADONATIPANx500', 4, '12800.00'),
(47, 12, 'PANMAMAINESx420g', 5, '27000.00'),
(48, 12, 'MULTIUSOSFABULOSOx10', 1, '3000.00'),
(49, 12, 'LIMPIDOBLANCOXx1000m', 1, '3500.00'),
(50, 12, 'LENTEJASUPERORIENTEx', 3, '6600.00'),
(51, 13, 'LECHEAURALACx1000ml', 5, '11500.00'),
(52, 13, 'LAVALOZAAXIONx500g', 2, '7600.00'),
(53, 13, 'JABONREXOx125g', 2, '3600.00'),
(54, 14, 'JABONPOLVOARIELx450g', 1, '3300.00'),
(55, 14, 'JABONJOHNx125g', 3, '5400.00'),
(56, 14, 'GARBANZOSUPERORIENTE', 5, '14000.00'),
(57, 14, 'GALLETASSALADASNOELx', 2, '8800.00'),
(58, 15, 'GALLETASDUCALESNOELx', 2, '10800.00'),
(59, 15, 'FRIJOLSUPERORIENTEx1', 5, '40000.00'),
(60, 15, 'DESODORANTESPEEDx10g', 2, '3000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_domicilio`
--

CREATE TABLE `tbl_domicilio` (
  `id_domicilio` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  `id_estado` varchar(2) NOT NULL,
  `id_detalle_factura_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado`
--

CREATE TABLE `tbl_estado` (
  `id_estado` varchar(2) NOT NULL,
  `estado_pedido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura_compra`
--

CREATE TABLE `tbl_factura_compra` (
  `id_factura_compra` int(11) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_factura_compra`
--

INSERT INTO `tbl_factura_compra` (`id_factura_compra`, `cedula`, `fecha`) VALUES
(1, '1000457812', '2021-08-27 13:17:05'),
(2, '1000457812', '2021-08-29 14:03:11'),
(3, '1000457812', '2021-07-21 12:21:31'),
(4, '1000457812', '2021-07-22 12:30:21'),
(5, '1000457812', '2021-07-23 12:40:15'),
(6, '1000457812', '2021-07-24 12:11:42'),
(7, '1000457812', '2021-07-25 12:46:31'),
(8, '1000457812', '2021-07-26 12:53:21'),
(9, '1000457812', '2021-07-27 12:23:43'),
(10, '1000457812', '2021-07-28 12:51:54'),
(11, '1000457812', '2021-07-29 12:25:25'),
(12, '1000457812', '2021-07-30 12:56:44'),
(13, '1000457812', '2021-08-01 12:32:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura_venta`
--

CREATE TABLE `tbl_factura_venta` (
  `id_factura_venta` int(11) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_factura_venta`
--

INSERT INTO `tbl_factura_venta` (`id_factura_venta`, `cedula`, `fecha`) VALUES
(2, '97485216', '2021-08-24 15:24:32'),
(3, '1213354786', '2021-08-26 14:14:14'),
(4, '64732905', '2021-08-26 15:21:30'),
(5, '70246753', '2021-08-29 12:43:32'),
(6, '84289783', '2021-09-01 08:13:12'),
(7, '94753489', '2021-09-02 10:05:55'),
(8, '97485216', '2021-09-03 17:30:00'),
(9, '98748596', '2021-09-03 18:00:21'),
(10, '70246753', '2021-09-05 12:00:21'),
(11, '94753489', '2021-09-06 16:10:18'),
(12, '98748596', '2021-09-07 13:29:56'),
(13, '84289783', '2021-09-08 10:51:33'),
(14, '64732905', '2021-09-08 12:27:41'),
(15, '1213354786', '2021-09-08 15:32:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_marca`
--

CREATE TABLE `tbl_marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_marca`
--

INSERT INTO `tbl_marca` (`id_marca`, `marca`) VALUES
(1, 'Diana'),
(2, 'Oliosoya'),
(3, 'Alquería'),
(4, 'La Sevillana'),
(5, 'Oleocali'),
(6, 'Florhuila'),
(7, 'Roa'),
(8, 'Coca-Cola'),
(9, 'Clear'),
(10, 'Savital'),
(12, 'Castellano'),
(13, 'Caribe'),
(14, 'Orquidea'),
(15, 'SuperOriente'),
(16, 'Jhonson'),
(17, 'Protex'),
(18, 'Rexona'),
(19, 'Speed Stick'),
(20, 'Sedal'),
(21, 'Fortident'),
(22, 'Ariel'),
(23, 'Lavaloza'),
(24, 'Blancox'),
(25, 'Detergente'),
(26, 'Fabuloso'),
(27, 'Colanta'),
(28, 'Auralac'),
(29, 'Mama Ines'),
(30, 'Flor de Trigo'),
(31, 'Natipan'),
(32, 'Saltin'),
(33, 'Ducales'),
(34, 'Axion'),
(35, 'Colgate'),
(37, 'Noel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfil`
--

CREATE TABLE `tbl_perfil` (
  `id_perfil` varchar(1) NOT NULL,
  `perfil` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_perfil`
--

INSERT INTO `tbl_perfil` (`id_perfil`, `perfil`) VALUES
('1', 'Administrador'),
('2', 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `id_producto` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `presentacion` varchar(100) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `cantidad` int(7) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `id_proveedor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`id_producto`, `nombre`, `descripcion`, `presentacion`, `id_marca`, `fecha_vencimiento`, `precio_compra`, `precio_venta`, `cantidad`, `id_subcategoria`, `id_proveedor`) VALUES
('ARRCASTx500g', 'Arroz Castellano', 'x500 g', 'arroz_castellano.jpg', 12, '2022-02-24', '2880.00', '3200.00', 25, 1, '9011665098'),
('ARROZCARIBEx500g', 'Arroz Caribe', 'x500 g', 'arroz_caribe.jpg', 13, '2022-02-17', '1350.00', '1500.00', 25, 1, '8600105226'),
('ARROZORQUIDEAx490g', 'Arroz Orquidea', 'x490 g', 'arroz_orquidea.jpg', 14, '2022-03-21', '1350.00', '1500.00', 21, 1, '8600105226'),
('ARRROAx500g', 'Arroz Roa', 'x500 g', 'arroz_roa.jpg', 7, '2022-03-24', '1350.00', '1500.00', 30, 1, '8600105226'),
('ARVEJASUPERORIENTEx5', 'Arveja Superoriente', 'x500 g', 'arveja_superoriente.jpg', 15, '2022-03-12', '1080.00', '1200.00', 22, 1, '800045218-4'),
('CREMACOLGATEx60ml', 'Crema Colgate', 'x60 ml', 'crema_colgate.png', 35, '2022-01-15', '2250.00', '2500.00', 30, 20, '8000128332'),
('CREMAFORTIDENTx60ml', 'Crema Fortident', 'x60 ml', 'crema_fortident.jpg', 21, '2022-02-21', '2070.00', '2300.00', 27, 20, '8000128332'),
('DESODORANTESPEEDx10g', 'Desodorante Speed Stick', 'x10 g', 'desodorante_speed_stick.jpg', 19, '2022-01-23', '1350.00', '1500.00', 20, 13, '8000128332'),
('FRIJOLSUPERORIENTEx1', 'Frijol Superoriente', 'x1000 g', 'frijol_superoriente.jpg', 15, '2022-03-11', '7200.00', '8000.00', 24, 1, '800045218-4'),
('GALLETASDUCALESNOELx', 'Galletas Ducales Noel', 'x294 g', 'galletas_ducales.jpg', 37, '2021-10-12', '4860.00', '5400.00', 30, 19, '901110371-8'),
('GALLETASSALADASNOELx', 'Galletas Saladas Noel', 'x300 g', 'galletas_saltin.jpg', 37, '2021-11-11', '3960.00', '4400.00', 26, 8, '901110371-8'),
('GARBANZOSUPERORIENTE', 'Garbanzo Superoriente', 'x500 g', 'garbanzo_superoriente.jpg', 15, '2022-03-21', '2520.00', '2800.00', 20, 1, '800045218-4'),
('JABONJOHNx125g', 'Jabon Jhonson', 'x125 g', 'jabon_johnsons.png', 16, '2022-01-23', '1620.00', '1800.00', 23, 12, '8000128332'),
('JABONPOLVOARIELx450g', 'Jabon Ariel', 'x450 g', 'jabon_polvo_ariel.jpg', 22, '2022-03-23', '2970.00', '3300.00', 19, 15, '8000128332'),
('JABONPROTEXx75g', 'Jabon Protex', 'x75 g', 'jabon_protex.jpg', 17, '2022-03-21', '1980.00', '2200.00', 28, 12, '802015298-2'),
('JABONREXOx125g', 'Jabon Rexona', 'x125 g', 'jabon_rexona.jpg', 18, '2022-04-21', '1620.00', '1800.00', 23, 12, '8000128332'),
('LAVALOZAAXIONx500g', 'Lavaloza Axion', 'x500 g', 'lavaloza_axion.jpg', 34, '2022-02-10', '3420.00', '3800.00', 25, 14, '8000128332'),
('LECCOLANTAx1000ml', 'Leche Colanta', 'x1000 ml', 'leche_colanta.jpg', 27, '2022-12-17', '2340.00', '2600.00', 33, 5, '900314952-1'),
('LECHEAURALACx1000ml', 'Leche Auralac', 'x1000 ml', 'leche_auralac.jpg', 28, '2022-01-04', '2070.00', '2300.00', 30, 5, '8110370754'),
('LENTEJASUPERORIENTEx', 'Lenteja Superoriente', 'x500 g', 'lenteja_superoriente.jpg', 15, '2022-03-18', '1980.00', '2200.00', 23, 1, '800045218-4'),
('LIMPIDOBLANCOXx1000m', 'Limpido Blancox', 'x1000 ml', 'limpido_blancox.png', 24, '2022-04-21', '3150.00', '3500.00', 20, 17, '8000128332'),
('MULTIUSOSFABULOSOx10', 'Multiusos Fabuloso', 'x1000 ml', 'multiusos_fabuloso.jpg', 26, '2021-05-15', '2700.00', '3000.00', 20, 16, '8000128332'),
('PANMAMAINESx420g', 'Pan Mama Ines', 'x420 g', 'pan_mamaines.png', 29, '2022-01-18', '4860.00', '5400.00', 20, 21, '901110371-8'),
('PANTAJADONATIPANx500', 'Pan Tajado Natipan', 'x500 g', 'pantajado_natipan.jpg', 31, '2021-12-21', '2880.00', '3200.00', 27, 21, '901110371-8'),
('SHAMPOOSEDALx190ml', 'Shampoo Sedal', 'x190 ml', 'shampoo_sedal.png', 20, '2022-02-15', '9180.00', '10200.00', 20, 7, '8000128332'),
('TOSTADASFLORTRIGOx18', 'Tostadas Flor de Trigo', 'x180 g', 'tostadas_flor_del_trigo.jpg', 30, '2022-02-21', '3420.00', '3800.00', 19, 18, '901110371-8'),
('TOSTADASMAMAINESx24u', 'Tostadas Mama Ines', 'x24 und', 'tostadas_mamaines.jpg', 29, '2022-01-15', '3960.00', '4400.00', 20, 18, '901110371-8'),
('TOSTADASNATIPANx170g', 'Tostadas Natipan', 'x170 g', 'tostada_natipan.jpg', 31, '2022-01-13', '3780.00', '4200.00', 23, 18, '901110371-8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedor`
--

CREATE TABLE `tbl_proveedor` (
  `id_proveedor` varchar(20) NOT NULL,
  `nombre_proveedor` varchar(75) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_proveedor`
--

INSERT INTO `tbl_proveedor` (`id_proveedor`, `nombre_proveedor`, `telefono`, `correo`, `direccion`) VALUES
('8000128332', 'Todo Aseo SAS', '6321717', 'info@todoaseo.com.co', 'Calle 50 # 22 – 21 La Concordia'),
('800045218-4', 'Superoriente S.a', '4443405', 'UNIDAD INDUSTRIAL LC 23', 'info@superoriente.com.co'),
('802015298-2', 'Agrodex International Sas', '3015597928', 'emontenegro@agrodex.com.co', 'Calle 40 No. 71 - 197, Bodega 216'),
('8110370754', 'Lacteos Betania S.A', '8514934', 'info@lacteosbetania.com.co', 'Cra 65#74-75'),
('860000258-3', 'COMAPAN', '3687042', 'info@comapan.com.co', 'Carrera 42 B No. 14 - 18'),
('8600105226', 'FEDEARROZ', '4251150', 'mitiendabogota@fedearroz.com.co', 'Carrera 100 No. 25 H - 55'),
('890903532-1', 'COLCAFE', '2856600', 'welcome@colcafe.com.co', 'Calle 8 Sur No. 50 - 67'),
('900314952-1', 'Empaquetados El Trece S.A.S.', '4440613', 'info@empaquetadoseltrece.com.co', 'Cl 85 48 - 01 Central Mayorista de Antioquia Bloq 13 Loc 19 / Bloq 8 Loc 6'),
('901110371-8', 'La Mayorista Sas', '285 48 15', 'info@lamayorista.com.co', 'Calle 85#48–01'),
('9011665098', 'El Castellano', '5611110', 'info@elcastellano.com.co', 'Cra 47#50c-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subcategoria`
--

CREATE TABLE `tbl_subcategoria` (
  `id_subcategoria` int(11) NOT NULL,
  `subcategoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_subcategoria`
--

INSERT INTO `tbl_subcategoria` (`id_subcategoria`, `subcategoria`) VALUES
(1, 'Arroz y Granos'),
(2, 'Aceite'),
(3, 'Café'),
(4, 'Cereales'),
(5, 'Leche'),
(6, 'Gaseosas'),
(7, 'Shampoo'),
(8, 'Galletas Saladas'),
(12, 'Jabones de tocador'),
(13, 'Desodorantes'),
(14, 'Jabon de loza'),
(15, 'Detergente'),
(16, 'Multiusos'),
(17, 'Limpido'),
(18, 'Tostadas'),
(19, 'Galletas Dulces'),
(20, 'Cuidado Oral'),
(21, 'Pan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `cedula` varchar(12) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `clave` varchar(40) NOT NULL,
  `id_perfil` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`cedula`, `nombres`, `apellidos`, `telefono`, `direccion`, `correo`, `clave`, `id_perfil`) VALUES
('1000457812', 'Administrador', 'Tienda', '3215896247', 'Cra 50#33b-4', 'adminrinconsito@gmail.com', 'admin1234', '1'),
('1213354786', 'Lina Maria', 'Agudelo Aguilar', '3134547843', 'Cra 11#40b-53', 'linaagudelo@hotmail.com', 'linaagudelo1234', '2'),
('64732905', 'Andres Felipe', 'Echeverri Lopez', '3456534', 'Calle 33#20-45', 'andresecheverri@gmail.com', 'andreseche1234', '2'),
('70246753', 'Sara Camila', 'Perez Ruiz', '7568932', 'Cra 23#43a-32', 'saraperez@gmail.com', 'sara1234', '2'),
('84289783', 'Laura Andrea', 'Castaño Gomez', '5121314', 'Cra 54#21b-54', 'lauracasta@hotmail.com', 'laura1234', '2'),
('94753489', 'Jorge Javier', 'Robledo Villa', '7439021', 'Calle 78#1b-78', 'jorgejavier@gmail.com', 'jorgejavier1234', '2'),
('97485216', 'Juan Pablo', 'Buenhombre Rios', '3148596247', 'Cra 33#40a-73', 'juan@gmail.com', 'juan1234', '2'),
('98748596', 'Kevin', 'Echeverry', '3144489657', 'Cra 45#21-50', 'kevin@gmail.com', 'kevin1234', '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `fk_categoria_subcategoria` (`id_subcategoria`);

--
-- Indices de la tabla `tbl_detalle_factura_compra`
--
ALTER TABLE `tbl_detalle_factura_compra`
  ADD PRIMARY KEY (`id_detalle_factura_compra`),
  ADD KEY `fk_detalle_compra_producto` (`id_producto`),
  ADD KEY `fk_detalle_compra` (`id_factura_compra`);

--
-- Indices de la tabla `tbl_detalle_factura_venta`
--
ALTER TABLE `tbl_detalle_factura_venta`
  ADD PRIMARY KEY (`id_detalle_factura_venta`),
  ADD KEY `fk_detalle_producto` (`id_producto`),
  ADD KEY `fk_detalle_venta` (`id_factura_venta`);

--
-- Indices de la tabla `tbl_domicilio`
--
ALTER TABLE `tbl_domicilio`
  ADD PRIMARY KEY (`id_domicilio`),
  ADD KEY `fk_domicilio_estado` (`id_estado`),
  ADD KEY `fk_domicilio_detalle_venta` (`id_detalle_factura_venta`);

--
-- Indices de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `tbl_factura_compra`
--
ALTER TABLE `tbl_factura_compra`
  ADD PRIMARY KEY (`id_factura_compra`),
  ADD KEY `fk_factura_compra_cedula` (`cedula`);

--
-- Indices de la tabla `tbl_factura_venta`
--
ALTER TABLE `tbl_factura_venta`
  ADD PRIMARY KEY (`id_factura_venta`),
  ADD KEY `fk_factura_venta_usuario` (`cedula`);

--
-- Indices de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `tbl_perfil`
--
ALTER TABLE `tbl_perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_producto_marca` (`id_marca`),
  ADD KEY `fk_producto_subcategoria` (`id_subcategoria`),
  ADD KEY `fk_producto_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tbl_subcategoria`
--
ALTER TABLE `tbl_subcategoria`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `fk_usuario_perfil` (`id_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_factura_compra`
--
ALTER TABLE `tbl_detalle_factura_compra`
  MODIFY `id_detalle_factura_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_factura_venta`
--
ALTER TABLE `tbl_detalle_factura_venta`
  MODIFY `id_detalle_factura_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `tbl_domicilio`
--
ALTER TABLE `tbl_domicilio`
  MODIFY `id_domicilio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura_compra`
--
ALTER TABLE `tbl_factura_compra`
  MODIFY `id_factura_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_factura_venta`
--
ALTER TABLE `tbl_factura_venta`
  MODIFY `id_factura_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `tbl_subcategoria`
--
ALTER TABLE `tbl_subcategoria`
  MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD CONSTRAINT `fk_categoria_subcategoria` FOREIGN KEY (`id_subcategoria`) REFERENCES `tbl_subcategoria` (`id_subcategoria`);

--
-- Filtros para la tabla `tbl_detalle_factura_compra`
--
ALTER TABLE `tbl_detalle_factura_compra`
  ADD CONSTRAINT `fk_detalle_compra` FOREIGN KEY (`id_factura_compra`) REFERENCES `tbl_factura_compra` (`id_factura_compra`),
  ADD CONSTRAINT `fk_detalle_compra_producto` FOREIGN KEY (`id_producto`) REFERENCES `tbl_producto` (`id_producto`);

--
-- Filtros para la tabla `tbl_detalle_factura_venta`
--
ALTER TABLE `tbl_detalle_factura_venta`
  ADD CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`id_producto`) REFERENCES `tbl_producto` (`id_producto`),
  ADD CONSTRAINT `fk_detalle_venta` FOREIGN KEY (`id_factura_venta`) REFERENCES `tbl_factura_venta` (`id_factura_venta`);

--
-- Filtros para la tabla `tbl_domicilio`
--
ALTER TABLE `tbl_domicilio`
  ADD CONSTRAINT `fk_domicilio_detalle_venta` FOREIGN KEY (`id_detalle_factura_venta`) REFERENCES `tbl_detalle_factura_venta` (`id_detalle_factura_venta`),
  ADD CONSTRAINT `fk_domicilio_estado` FOREIGN KEY (`id_estado`) REFERENCES `tbl_estado` (`id_estado`);

--
-- Filtros para la tabla `tbl_factura_compra`
--
ALTER TABLE `tbl_factura_compra`
  ADD CONSTRAINT `fk_factura_compra_cedula` FOREIGN KEY (`cedula`) REFERENCES `tbl_usuario` (`cedula`);

--
-- Filtros para la tabla `tbl_factura_venta`
--
ALTER TABLE `tbl_factura_venta`
  ADD CONSTRAINT `fk_factura_venta_usuario` FOREIGN KEY (`cedula`) REFERENCES `tbl_usuario` (`cedula`);

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD CONSTRAINT `fk_producto_marca` FOREIGN KEY (`id_marca`) REFERENCES `tbl_marca` (`id_marca`),
  ADD CONSTRAINT `fk_producto_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `tbl_proveedor` (`id_proveedor`),
  ADD CONSTRAINT `fk_producto_subcategoria` FOREIGN KEY (`id_subcategoria`) REFERENCES `tbl_subcategoria` (`id_subcategoria`);

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `fk_usuario_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `tbl_perfil` (`id_perfil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
