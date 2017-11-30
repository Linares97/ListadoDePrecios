CREATE DATABASE  IF NOT EXISTS `hotelfase2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hotelfase2`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelfase2
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aguinaldo`
--

DROP TABLE IF EXISTS `aguinaldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aguinaldo` (
  `idAguinaldo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_aguinaldo_pago` datetime NOT NULL,
  `valorPercepcion` float NOT NULL,
  `estadoPago` int(11) NOT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`idAguinaldo`),
  KEY `fk_aguinaldo_contrato1_idx` (`contrato_idContrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aguinaldo`
--

LOCK TABLES `aguinaldo` WRITE;
/*!40000 ALTER TABLE `aguinaldo` DISABLE KEYS */;
/*!40000 ALTER TABLE `aguinaldo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplicacion`
--

DROP TABLE IF EXISTS `aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicacion` (
  `idAplicacion` int(11) NOT NULL,
  `nombreAplicacion` varchar(45) DEFAULT NULL,
  `descripcionAplicacion` varchar(45) DEFAULT NULL,
  `habilitarAplicacion` varchar(45) DEFAULT NULL,
  `reporteador_idReporte` int(11) NOT NULL,
  PRIMARY KEY (`idAplicacion`),
  KEY `fk_aplicacion_reporteador1_idx` (`reporteador_idReporte`),
  CONSTRAINT `fk_aplicacion_reporteador1` FOREIGN KEY (`reporteador_idReporte`) REFERENCES `reporteador` (`idReporte`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion`
--

LOCK TABLES `aplicacion` WRITE;
/*!40000 ALTER TABLE `aplicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacionhabitacion`
--

DROP TABLE IF EXISTS `asignacionhabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignacionhabitacion` (
  `idAsignacionHabitacion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicio` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  `habitacion_idHabitacion` int(11) NOT NULL,
  PRIMARY KEY (`idAsignacionHabitacion`),
  KEY `fk_asignacionhabitacion_cliente1_idx` (`cliente_idCliente`),
  KEY `fk_asignacionhabitacion_habitacion1_idx` (`habitacion_idHabitacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacionhabitacion`
--

LOCK TABLES `asignacionhabitacion` WRITE;
/*!40000 ALTER TABLE `asignacionhabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignacionhabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `idBanco` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idBanco`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `idBitacora` int(11) NOT NULL,
  `fechaBitacora` date DEFAULT NULL,
  `horaBitacora` time DEFAULT NULL,
  `accionUsuario` varchar(45) DEFAULT NULL,
  `resultadoBitacora` varchar(45) DEFAULT NULL,
  `errorBitacora` varchar(45) DEFAULT NULL,
  `ipPc` varchar(45) DEFAULT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  `aplicacion_idAplicacion` int(11) NOT NULL,
  PRIMARY KEY (`idBitacora`),
  KEY `fk_bitacora_usuario1_idx` (`usuario_idUsuario`),
  KEY `fk_bitacora_aplicacion1_idx` (`aplicacion_idAplicacion`),
  CONSTRAINT `fk_bitacora_aplicacion1` FOREIGN KEY (`aplicacion_idAplicacion`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bitacora_usuario1` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodega`
--

DROP TABLE IF EXISTS `bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodega` (
  `idBodega` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  `capacidad` varchar(45) DEFAULT NULL,
  `encargado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBodega`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega`
--

LOCK TABLES `bodega` WRITE;
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bono14`
--

DROP TABLE IF EXISTS `bono14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bono14` (
  `idBono` int(11) NOT NULL AUTO_INCREMENT,
  `fechaBono14` datetime NOT NULL,
  `valorPercepcion` float NOT NULL,
  `estadoBono` int(11) NOT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`idBono`),
  KEY `fk_bono14_contrato1_idx` (`contrato_idContrato`),
  CONSTRAINT `fk_bono14_contrato1` FOREIGN KEY (`contrato_idContrato`) REFERENCES `contrato` (`idContrato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bono14`
--

LOCK TABLES `bono14` WRITE;
/*!40000 ALTER TABLE `bono14` DISABLE KEYS */;
/*!40000 ALTER TABLE `bono14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cierrenomina`
--

DROP TABLE IF EXISTS `cierrenomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cierrenomina` (
  `idCierre` int(11) NOT NULL AUTO_INCREMENT,
  `nomina_idNomina` int(11) NOT NULL,
  `fechaCierre` datetime NOT NULL,
  `totalPercibido` float NOT NULL,
  `totalDeducido` float NOT NULL,
  PRIMARY KEY (`idCierre`),
  KEY `fk_cierreNomina_nomina1_idx` (`nomina_idNomina`),
  CONSTRAINT `fk_cierreNomina_nomina1` FOREIGN KEY (`nomina_idNomina`) REFERENCES `nomina` (`idNomina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cierrenomina`
--

LOCK TABLES `cierrenomina` WRITE;
/*!40000 ALTER TABLE `cierrenomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `cierrenomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nitCliente` int(11) NOT NULL,
  `nombreCliente` varchar(50) NOT NULL,
  `apellidoCliente` varchar(50) NOT NULL,
  `direccionCliente` varchar(45) NOT NULL,
  `ciudadCliente` varchar(45) NOT NULL,
  `paisCliente` varchar(45) NOT NULL,
  `telefonoCliente` int(15) NOT NULL,
  `correoCliente` varchar(45) DEFAULT NULL,
  `porcentajeCompra_idPorcentaje` int(11) NOT NULL,
  `vendedor_idVendedor` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_cliente_porcentajeCompra1_idx` (`porcentajeCompra_idPorcentaje`),
  KEY `fk_cliente_vendedor1_idx` (`vendedor_idVendedor`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,8930384,'Jean ','Linares','Ciudad','Guatemala','Guatemala',63839442,'jean@correo.com',1,1),(2,6839495,'Oswaldo ','Guerra','Ciudad','Guatemala','Guatemala',73394724,'oswaldo@correo.com',2,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisionempleado`
--

DROP TABLE IF EXISTS `comisionempleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comisionempleado` (
  `idcomisionEmpleado` int(11) NOT NULL,
  `empleado_idEmpleado` int(11) DEFAULT NULL,
  `comision` float DEFAULT NULL,
  PRIMARY KEY (`idcomisionEmpleado`),
  KEY `fk_idEmp` (`empleado_idEmpleado`),
  CONSTRAINT `fk_id_Emp` FOREIGN KEY (`empleado_idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisionempleado`
--

LOCK TABLES `comisionempleado` WRITE;
/*!40000 ALTER TABLE `comisionempleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `comisionempleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisiones`
--

DROP TABLE IF EXISTS `comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comisiones` (
  `idComision` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `comision_comisionE` int(11) DEFAULT NULL,
  `empleado_idEmpleado` int(11) DEFAULT NULL,
  `comision_comisionP` int(11) DEFAULT NULL,
  `comision_comisionM` int(11) DEFAULT NULL,
  PRIMARY KEY (`idComision`),
  KEY `fk_comisionP` (`comision_comisionP`),
  KEY `fk_cE_idx` (`comision_comisionE`),
  KEY `fk_cM_idx` (`comision_comisionM`),
  KEY `fk_id_E` (`empleado_idEmpleado`),
  CONSTRAINT `fk_cE` FOREIGN KEY (`comision_comisionE`) REFERENCES `comisionempleado` (`idcomisionEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cM` FOREIGN KEY (`comision_comisionM`) REFERENCES `comisionmarca` (`idcomisionMarca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cP` FOREIGN KEY (`comision_comisionP`) REFERENCES `comisionproducto` (`idcomisionProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_empl` FOREIGN KEY (`empleado_idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisiones`
--

LOCK TABLES `comisiones` WRITE;
/*!40000 ALTER TABLE `comisiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisionmarca`
--

DROP TABLE IF EXISTS `comisionmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comisionmarca` (
  `idcomisionMarca` int(11) NOT NULL,
  `comision` varchar(45) DEFAULT NULL,
  `producto_idP` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcomisionMarca`),
  KEY `fk_idpro` (`producto_idP`),
  CONSTRAINT `fk_idP` FOREIGN KEY (`producto_idP`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisionmarca`
--

LOCK TABLES `comisionmarca` WRITE;
/*!40000 ALTER TABLE `comisionmarca` DISABLE KEYS */;
/*!40000 ALTER TABLE `comisionmarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisionproducto`
--

DROP TABLE IF EXISTS `comisionproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comisionproducto` (
  `idcomisionProducto` int(11) NOT NULL,
  `producto_idProducto` int(11) DEFAULT NULL,
  `comision` float DEFAULT NULL,
  PRIMARY KEY (`idcomisionProducto`),
  KEY `fk_id_pro` (`producto_idProducto`),
  CONSTRAINT `fk_idprod` FOREIGN KEY (`producto_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisionproducto`
--

LOCK TABLES `comisionproducto` WRITE;
/*!40000 ALTER TABLE `comisionproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `comisionproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprasdetalle`
--

DROP TABLE IF EXISTS `comprasdetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprasdetalle` (
  `idComprasDetalle` int(11) NOT NULL,
  `id_productos` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  PRIMARY KEY (`idComprasDetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprasdetalle`
--

LOCK TABLES `comprasdetalle` WRITE;
/*!40000 ALTER TABLE `comprasdetalle` DISABLE KEYS */;
INSERT INTO `comprasdetalle` VALUES (1,1,100,200);
/*!40000 ALTER TABLE `comprasdetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprasencabezado`
--

DROP TABLE IF EXISTS `comprasencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprasencabezado` (
  `idComprasEncabezado` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `idComprasDetalle` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `comprasdetalle_idComprasDetalle` int(11) NOT NULL,
  PRIMARY KEY (`idComprasEncabezado`),
  KEY `fk_comprasencabezado_comprasdetalle1_idx` (`comprasdetalle_idComprasDetalle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprasencabezado`
--

LOCK TABLES `comprasencabezado` WRITE;
/*!40000 ALTER TABLE `comprasencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprasencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conciliacion`
--

DROP TABLE IF EXISTS `conciliacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conciliacion` (
  `CorrConciliacion` int(11) NOT NULL,
  `noTransaccion` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`CorrConciliacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conciliacion`
--

LOCK TABLES `conciliacion` WRITE;
/*!40000 ALTER TABLE `conciliacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `conciliacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrato` (
  `idContrato` int(10) NOT NULL AUTO_INCREMENT,
  `fechaCreacionContrato` varchar(50) DEFAULT NULL,
  `estadoCivil` varchar(45) DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `inicioRelacionTrabajo` varchar(50) DEFAULT NULL,
  `duracionContrato` varchar(45) DEFAULT NULL,
  `serviciosTrabajador` varchar(50) DEFAULT NULL,
  `jornadaTrabajador` varchar(45) DEFAULT NULL,
  `clausulasContrato` varchar(50) DEFAULT NULL,
  `nombreEmpleador` varchar(45) DEFAULT NULL,
  `horasLaboralesDiarias` int(11) DEFAULT NULL,
  `sueldoBase` decimal(9,2) DEFAULT NULL,
  `empleado_idEmpleado` int(11) NOT NULL,
  `horario_idHorario` int(11) NOT NULL,
  `puesto_idPuesto` int(11) NOT NULL,
  PRIMARY KEY (`idContrato`),
  KEY `fk_contrato_empleado1_idx` (`empleado_idEmpleado`),
  KEY `fk_contrato_horario1_idx` (`horario_idHorario`),
  KEY `fk_contrato_puesto1_idx` (`puesto_idPuesto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controldemoras`
--

DROP TABLE IF EXISTS `controldemoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controldemoras` (
  `idControlDemoras` int(11) NOT NULL,
  `fechaInicial` date DEFAULT NULL,
  `fechaPrevistaDeRecibido` date DEFAULT NULL,
  `demora` varchar(45) DEFAULT NULL,
  `ordenedecompra_idOrdenesCompra` int(11) NOT NULL,
  PRIMARY KEY (`idControlDemoras`),
  KEY `fk_controldemoras_ordenedecompra1_idx` (`ordenedecompra_idOrdenesCompra`),
  CONSTRAINT `fk_controldemoras_ordenedecompra1` FOREIGN KEY (`ordenedecompra_idOrdenesCompra`) REFERENCES `ordenedecompra` (`idOrdenesCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controldemoras`
--

LOCK TABLES `controldemoras` WRITE;
/*!40000 ALTER TABLE `controldemoras` DISABLE KEYS */;
/*!40000 ALTER TABLE `controldemoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controldevolucion`
--

DROP TABLE IF EXISTS `controldevolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controldevolucion` (
  `idControlDevolucion` int(11) NOT NULL,
  `devaluacionAutorizada` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `ordenedecompra_idOrdenesCompra` int(11) NOT NULL,
  PRIMARY KEY (`idControlDevolucion`),
  KEY `fk_controldevolucion_ordenedecompra1_idx` (`ordenedecompra_idOrdenesCompra`),
  CONSTRAINT `fk_controldevolucion_ordenedecompra1` FOREIGN KEY (`ordenedecompra_idOrdenesCompra`) REFERENCES `ordenedecompra` (`idOrdenesCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controldevolucion`
--

LOCK TABLES `controldevolucion` WRITE;
/*!40000 ALTER TABLE `controldevolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `controldevolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion` (
  `idCotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `productos_idProducto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fechaCotizacion` varchar(45) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCotizacion`),
  KEY `fk_cotizacion_productos1_idx` (`productos_idProducto`),
  KEY `fk_cotizacion_cliente1_idx` (`cliente_idCliente`),
  CONSTRAINT `fk_cotizacion_cliente1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cotizacion_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentabanco`
--

DROP TABLE IF EXISTS `cuentabanco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentabanco` (
  `noCuenta` varchar(15) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `saldoActual` float DEFAULT NULL,
  `saldoDisponible` float DEFAULT NULL,
  `tipoCuenta` varchar(25) DEFAULT NULL,
  `tipoMoneda` varchar(25) DEFAULT NULL,
  `banco_idBanco` int(11) NOT NULL,
  `moneda_idMoneda` int(11) NOT NULL,
  PRIMARY KEY (`noCuenta`),
  KEY `fk_cuentabanco_banco1_idx` (`banco_idBanco`),
  KEY `fk_cuentabanco_moneda1_idx` (`moneda_idMoneda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentabanco`
--

LOCK TABLES `cuentabanco` WRITE;
/*!40000 ALTER TABLE `cuentabanco` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentabanco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentacontabilidad`
--

DROP TABLE IF EXISTS `cuentacontabilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentacontabilidad` (
  `nomenclatura` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `saldo` varchar(9) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `saldoAnterior` double DEFAULT NULL,
  `cargoMes` double DEFAULT NULL,
  `abonoMes` double DEFAULT NULL,
  `saldoActual` double DEFAULT NULL,
  `cargoAcumulado` double DEFAULT NULL,
  `abonoAcumulado` double DEFAULT NULL,
  `presupuestado` double DEFAULT NULL,
  `naturaleza` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`nomenclatura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentacontabilidad`
--

LOCK TABLES `cuentacontabilidad` WRITE;
/*!40000 ALTER TABLE `cuentacontabilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentacontabilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombreDepartamento` varchar(55) NOT NULL,
  `jefeDepartamento` varchar(55) NOT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depreciacion`
--

DROP TABLE IF EXISTS `depreciacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depreciacion` (
  `totalArticulo` double DEFAULT NULL,
  `fechaCompra` date DEFAULT NULL,
  `totalDepreciado` double DEFAULT NULL,
  `cuentacontabilidad_nomenclatura` int(11) NOT NULL,
  `tipoDepreciacion_idTipoDepreciacion` int(11) NOT NULL,
  `inventario_codigoInventario` int(11) NOT NULL,
  PRIMARY KEY (`cuentacontabilidad_nomenclatura`,`inventario_codigoInventario`),
  KEY `fk_depreciacion_cuentacontabilidad1_idx` (`cuentacontabilidad_nomenclatura`),
  KEY `fk_depreciacion_tipoDepreciacion1_idx` (`tipoDepreciacion_idTipoDepreciacion`),
  KEY `fk_depreciacion_inventario1_idx` (`inventario_codigoInventario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depreciacion`
--

LOCK TABLES `depreciacion` WRITE;
/*!40000 ALTER TABLE `depreciacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `depreciacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despido`
--

DROP TABLE IF EXISTS `despido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despido` (
  `idDespido` int(11) NOT NULL AUTO_INCREMENT,
  `causaDespido` varchar(75) NOT NULL,
  `fechaDespido` datetime NOT NULL,
  `montoIndem` float NOT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`idDespido`),
  KEY `fk_despido_contrato1_idx` (`contrato_idContrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despido`
--

LOCK TABLES `despido` WRITE;
/*!40000 ALTER TABLE `despido` DISABLE KEYS */;
/*!40000 ALTER TABLE `despido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleaplicacionderecho`
--

DROP TABLE IF EXISTS `detalleaplicacionderecho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleaplicacionderecho` (
  `ingresar` tinyint(4) DEFAULT NULL,
  `modificar` tinyint(4) DEFAULT NULL,
  `eliminar` tinyint(4) DEFAULT NULL,
  `imprimir` tinyint(4) DEFAULT NULL,
  `consultar` tinyint(4) DEFAULT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  `aplicacion_idAplicacion` int(11) NOT NULL,
  KEY `fk_detalleAplicacionDerecho_usuario1_idx` (`usuario_idUsuario`),
  KEY `fk_detalleAplicacionDerecho_aplicacion1_idx` (`aplicacion_idAplicacion`),
  CONSTRAINT `fk_detalleAplicacionDerecho_aplicacion1` FOREIGN KEY (`aplicacion_idAplicacion`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleAplicacionDerecho_usuario1` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleaplicacionderecho`
--

LOCK TABLES `detalleaplicacionderecho` WRITE;
/*!40000 ALTER TABLE `detalleaplicacionderecho` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleaplicacionderecho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleasignacionservicio`
--

DROP TABLE IF EXISTS `detalleasignacionservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleasignacionservicio` (
  `idAsignacionHabitacion` int(11) NOT NULL,
  `diasServicio` int(11) NOT NULL,
  `servicio_idServicio` int(11) NOT NULL,
  PRIMARY KEY (`idAsignacionHabitacion`),
  KEY `fk_detalleasignacionservicio_servicio1_idx` (`servicio_idServicio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleasignacionservicio`
--

LOCK TABLES `detalleasignacionservicio` WRITE;
/*!40000 ALTER TABLE `detalleasignacionservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleasignacionservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallebodega`
--

DROP TABLE IF EXISTS `detallebodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallebodega` (
  `idDetalleBodega` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` varchar(45) DEFAULT NULL,
  `bodega_idBodega` int(11) NOT NULL,
  `productos_idProducto` int(11) NOT NULL,
  `tipoMedida_idTipoMedida` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetalleBodega`),
  KEY `fk_detallebodega_productos1_idx` (`productos_idProducto`),
  KEY `fk_detallebodega_bodega1_idx` (`bodega_idBodega`),
  KEY `fk_detallebodega_tipoMedida1_idx` (`tipoMedida_idTipoMedida`),
  CONSTRAINT `fk_detallebodega_bodega1` FOREIGN KEY (`bodega_idBodega`) REFERENCES `bodega` (`idBodega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallebodega_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallebodega_tipoMedida1` FOREIGN KEY (`tipoMedida_idTipoMedida`) REFERENCES `tipomedida` (`idTipoMedida`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallebodega`
--

LOCK TABLES `detallebodega` WRITE;
/*!40000 ALTER TABLE `detallebodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallebodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallefactura`
--

DROP TABLE IF EXISTS `detallefactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallefactura` (
  `cantidadFacturado` int(11) NOT NULL,
  `precioFacturado` int(11) DEFAULT NULL,
  `factura_idFactura` int(11) NOT NULL,
  `productos_idProducto` int(11) NOT NULL,
  KEY `fk_detallefactura_factura1_idx` (`factura_idFactura`),
  KEY `fk_detallefactura_productos1_idx` (`productos_idProducto`),
  CONSTRAINT `fk_detallefactura_factura1` FOREIGN KEY (`factura_idFactura`) REFERENCES `factura` (`idFactura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallefactura_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallefactura`
--

LOCK TABLES `detallefactura` WRITE;
/*!40000 ALTER TABLE `detallefactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallefactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallehabitacionreservacion`
--

DROP TABLE IF EXISTS `detallehabitacionreservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallehabitacionreservacion` (
  `reservacion_idReservacion` int(11) NOT NULL,
  `habitacion_idHabitacion` int(11) NOT NULL,
  KEY `fk_detalleHabitacionReservacion_reservacion1_idx` (`reservacion_idReservacion`),
  KEY `fk_detalleHabitacionReservacion_habitacion1_idx` (`habitacion_idHabitacion`),
  CONSTRAINT `fk_detalleHabitacionReservacion_habitacion1` FOREIGN KEY (`habitacion_idHabitacion`) REFERENCES `habitacion` (`idHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleHabitacionReservacion_reservacion1` FOREIGN KEY (`reservacion_idReservacion`) REFERENCES `reservacion` (`idReservacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallehabitacionreservacion`
--

LOCK TABLES `detallehabitacionreservacion` WRITE;
/*!40000 ALTER TABLE `detallehabitacionreservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallehabitacionreservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallemantenimientohabitacion`
--

DROP TABLE IF EXISTS `detallemantenimientohabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallemantenimientohabitacion` (
  `fechaUltimoMantenimiento` date NOT NULL,
  `mantenimiento_idMantenimiento` int(11) NOT NULL,
  `habitacion_idHabitacion` int(11) NOT NULL,
  PRIMARY KEY (`mantenimiento_idMantenimiento`,`habitacion_idHabitacion`),
  KEY `fk_detallemantenimientohabitacion_mantenimiento1_idx` (`mantenimiento_idMantenimiento`),
  KEY `fk_detallemantenimientohabitacion_habitacion1_idx` (`habitacion_idHabitacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallemantenimientohabitacion`
--

LOCK TABLES `detallemantenimientohabitacion` WRITE;
/*!40000 ALTER TABLE `detallemantenimientohabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallemantenimientohabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallemovimiento`
--

DROP TABLE IF EXISTS `detallemovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallemovimiento` (
  `idDetalleMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `Cantidad` int(11) DEFAULT NULL,
  `CostoUnitario` int(11) DEFAULT NULL,
  `CostoTotal` int(11) DEFAULT NULL,
  `productos_idProducto` int(11) NOT NULL,
  `movimientoInventario_codigoMovimientoInventario` int(11) NOT NULL,
  PRIMARY KEY (`idDetalleMovimiento`),
  KEY `fk_DetalleMovimiento_movimientoInventario1_idx` (`movimientoInventario_codigoMovimientoInventario`),
  KEY `fk_DetalleMovimiento_productos1_idx` (`productos_idProducto`),
  CONSTRAINT `fk_DetalleMovimiento_movimientoInventario1` FOREIGN KEY (`movimientoInventario_codigoMovimientoInventario`) REFERENCES `movimientoinventario` (`codigoMovimientoInventario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DetalleMovimiento_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallemovimiento`
--

LOCK TABLES `detallemovimiento` WRITE;
/*!40000 ALTER TABLE `detallemovimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallemovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallenomina`
--

DROP TABLE IF EXISTS `detallenomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallenomina` (
  `nominIdNomina` int(11) NOT NULL,
  `contratoIdContrato` int(10) NOT NULL,
  `id_PD` int(11) NOT NULL,
  `valorPDcalculado` float NOT NULL,
  PRIMARY KEY (`nominIdNomina`,`contratoIdContrato`,`id_PD`),
  KEY `fk_detallenomina_nomina1_idx` (`nominIdNomina`),
  KEY `fk_detallenomina_contrato1_idx` (`contratoIdContrato`),
  KEY `fk_detallenomina_percepcion1_idx` (`id_PD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallenomina`
--

LOCK TABLES `detallenomina` WRITE;
/*!40000 ALTER TABLE `detallenomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallenomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepartida`
--

DROP TABLE IF EXISTS `detallepartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallepartida` (
  `numeroDetallePartida` int(11) NOT NULL,
  `total` double DEFAULT NULL,
  `cuentacontabilidad_nomenclatura` int(11) NOT NULL,
  `tipoPartida` varchar(45) NOT NULL,
  `partida_idPartida` varchar(12) NOT NULL,
  PRIMARY KEY (`numeroDetallePartida`,`partida_idPartida`),
  KEY `fk_detallepartida_cuentacontabilidad1_idx` (`cuentacontabilidad_nomenclatura`),
  KEY `fk_detallepartida_partida1_idx` (`partida_idPartida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepartida`
--

LOCK TABLES `detallepartida` WRITE;
/*!40000 ALTER TABLE `detallepartida` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallepartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepedido`
--

DROP TABLE IF EXISTS `detallepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallepedido` (
  `idDetallePedido` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_idPedido` int(11) NOT NULL,
  `productos_idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idDetallePedido`),
  KEY `fk_detallepedido_pedido1_idx` (`pedido_idPedido`),
  KEY `fk_detallepedido_productos1_idx` (`productos_idProducto`),
  CONSTRAINT `fk_detallepedido_pedido1` FOREIGN KEY (`pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallepedido_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepedido`
--

LOCK TABLES `detallepedido` WRITE;
/*!40000 ALTER TABLE `detallepedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepedidobebida`
--

DROP TABLE IF EXISTS `detallepedidobebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallepedidobebida` (
  `cantidadBebida` int(11) NOT NULL,
  `pedidoRestaurante_idPedido` int(11) NOT NULL,
  `productos_idProducto` int(11) NOT NULL,
  PRIMARY KEY (`pedidoRestaurante_idPedido`,`productos_idProducto`),
  KEY `fk_detallepedidobebida_pedidoRestaurante1_idx` (`pedidoRestaurante_idPedido`),
  KEY `fk_detallepedidobebida_productos1_idx` (`productos_idProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepedidobebida`
--

LOCK TABLES `detallepedidobebida` WRITE;
/*!40000 ALTER TABLE `detallepedidobebida` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallepedidobebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepedidoplatillo`
--

DROP TABLE IF EXISTS `detallepedidoplatillo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallepedidoplatillo` (
  `cantidadPlatillo` int(11) NOT NULL,
  `platillo_idPlatillo` int(11) NOT NULL,
  `pedidoRestaurante_idPedido` int(11) NOT NULL,
  PRIMARY KEY (`platillo_idPlatillo`,`pedidoRestaurante_idPedido`),
  KEY `fk_detallepedidoplatillo_platillo1_idx` (`platillo_idPlatillo`),
  KEY `fk_detallepedidoplatillo_pedidoRestaurante1_idx` (`pedidoRestaurante_idPedido`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepedidoplatillo`
--

LOCK TABLES `detallepedidoplatillo` WRITE;
/*!40000 ALTER TABLE `detallepedidoplatillo` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallepedidoplatillo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleperfilaplicacion`
--

DROP TABLE IF EXISTS `detalleperfilaplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleperfilaplicacion` (
  `aplicacion_idAplicacion` int(11) NOT NULL,
  `perfil_idPerfil` int(11) NOT NULL,
  KEY `fk_detallePerfilAplicacion_aplicacion1_idx` (`aplicacion_idAplicacion`),
  KEY `fk_detallePerfilAplicacion_perfil1_idx` (`perfil_idPerfil`),
  CONSTRAINT `fk_detallePerfilAplicacion_aplicacion1` FOREIGN KEY (`aplicacion_idAplicacion`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallePerfilAplicacion_perfil1` FOREIGN KEY (`perfil_idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleperfilaplicacion`
--

LOCK TABLES `detalleperfilaplicacion` WRITE;
/*!40000 ALTER TABLE `detalleperfilaplicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleperfilaplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallerecetaingrediente`
--

DROP TABLE IF EXISTS `detallerecetaingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallerecetaingrediente` (
  `receta_idReceta` int(11) NOT NULL,
  `pesoOcantidad` varchar(45) NOT NULL,
  `productos_idProducto` int(11) NOT NULL,
  PRIMARY KEY (`receta_idReceta`,`productos_idProducto`),
  KEY `fk_detalleRecetaIngrediente_receta1_idx` (`receta_idReceta`),
  KEY `fk_detalleRecetaIngrediente_productos1_idx` (`productos_idProducto`),
  CONSTRAINT `fk_detalleRecetaIngrediente_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleRecetaIngrediente_receta1` FOREIGN KEY (`receta_idReceta`) REFERENCES `receta` (`idReceta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallerecetaingrediente`
--

LOCK TABLES `detallerecetaingrediente` WRITE;
/*!40000 ALTER TABLE `detallerecetaingrediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallerecetaingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallereservacionservicio`
--

DROP TABLE IF EXISTS `detallereservacionservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallereservacionservicio` (
  `servicio_idServicio` int(11) NOT NULL,
  `reservacion_idReservacion` int(11) NOT NULL,
  KEY `fk_detallereservacionservicio_servicio1_idx` (`servicio_idServicio`),
  KEY `fk_detallereservacionservicio_reservacion1_idx` (`reservacion_idReservacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallereservacionservicio`
--

LOCK TABLES `detallereservacionservicio` WRITE;
/*!40000 ALTER TABLE `detallereservacionservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallereservacionservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalletipohuepedreservacion`
--

DROP TABLE IF EXISTS `detalletipohuepedreservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalletipohuepedreservacion` (
  `reservacion_idReservacion` int(11) NOT NULL,
  `tipoHuesped_idTipoHuesped` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  KEY `fk_detalleTipoHuepedReservacion_reservacion1_idx` (`reservacion_idReservacion`),
  KEY `fk_detalleTipoHuepedReservacion_tipoHuesped1_idx` (`tipoHuesped_idTipoHuesped`),
  CONSTRAINT `fk_detalleTipoHuepedReservacion_reservacion1` FOREIGN KEY (`reservacion_idReservacion`) REFERENCES `reservacion` (`idReservacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleTipoHuepedReservacion_tipoHuesped1` FOREIGN KEY (`tipoHuesped_idTipoHuesped`) REFERENCES `tipohuesped` (`idTipoHuesped`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalletipohuepedreservacion`
--

LOCK TABLES `detalletipohuepedreservacion` WRITE;
/*!40000 ALTER TABLE `detalletipohuepedreservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalletipohuepedreservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalletransaccion`
--

DROP TABLE IF EXISTS `detalletransaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalletransaccion` (
  `CorrDetTransaccion` int(11) NOT NULL,
  `TipoOperacion` tinyint(4) DEFAULT NULL,
  `transaccion_noTransaccion` int(11) NOT NULL,
  `tipotransaccion_idTipoTransaccion` int(11) NOT NULL,
  PRIMARY KEY (`CorrDetTransaccion`),
  KEY `fk_detalletransaccion_transaccion1_idx` (`transaccion_noTransaccion`),
  KEY `fk_detalletransaccion_tipotransaccion1_idx` (`tipotransaccion_idTipoTransaccion`),
  CONSTRAINT `fk_detalletransaccion_tipotransaccion1` FOREIGN KEY (`tipotransaccion_idTipoTransaccion`) REFERENCES `tipotransaccion` (`idTipoTransaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalletransaccion_transaccion1` FOREIGN KEY (`transaccion_noTransaccion`) REFERENCES `transaccion` (`noTransaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalletransaccion`
--

LOCK TABLES `detalletransaccion` WRITE;
/*!40000 ALTER TABLE `detalletransaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalletransaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleusuarioperfil`
--

DROP TABLE IF EXISTS `detalleusuarioperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleusuarioperfil` (
  `perfil_idPerfil` int(11) NOT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  KEY `fk_detalleUsuarioAplicacion_perfil1_idx` (`perfil_idPerfil`),
  KEY `fk_detalleUsuarioAplicacion_usuario1_idx` (`usuario_idUsuario`),
  CONSTRAINT `fk_detalleUsuarioAplicacion_perfil1` FOREIGN KEY (`perfil_idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleUsuarioAplicacion_usuario1` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleusuarioperfil`
--

LOCK TABLES `detalleusuarioperfil` WRITE;
/*!40000 ALTER TABLE `detalleusuarioperfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleusuarioperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `dpi` varchar(50) DEFAULT NULL,
  `nit` varchar(50) DEFAULT NULL,
  `primerNombre` varchar(50) DEFAULT NULL,
  `segundoNombre` varchar(50) DEFAULT NULL,
  `apellidoPaterno` varchar(50) DEFAULT NULL,
  `apellidoMaterno` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contactoEmergencia` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccionDomicilio` varchar(50) DEFAULT NULL,
  `fechaCreacionEmpleado` varchar(50) DEFAULT NULL,
  `nivelAcedemico` varchar(50) DEFAULT NULL,
  `noCuenta` int(11) DEFAULT NULL,
  `cuentabanco_idBanco` int(11) NOT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `fechaFactura` varchar(45) DEFAULT NULL,
  `fechaVencimiento` varchar(45) DEFAULT NULL,
  `totalFactura` varchar(45) DEFAULT NULL,
  `Facturador` varchar(45) DEFAULT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `fk_factura_cliente1_idx` (`cliente_idCliente`),
  CONSTRAINT `fk_factura_cliente1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitacion` (
  `idHabitacion` int(11) NOT NULL AUTO_INCREMENT,
  `numeroHabitacion` int(4) NOT NULL,
  `estatusHabitacion` varchar(45) NOT NULL,
  `tipohabitacion_idTipoHabitacion` int(11) NOT NULL,
  PRIMARY KEY (`idHabitacion`,`tipohabitacion_idTipoHabitacion`),
  KEY `fk_habitacion_tipohabitacion1_idx` (`tipohabitacion_idTipoHabitacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `idHistorial` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `cuentacontabilidad_nomenclatura` int(11) NOT NULL,
  PRIMARY KEY (`idHistorial`),
  KEY `fk_historial_cuentacontabilidad1_idx` (`cuentacontabilidad_nomenclatura`),
  CONSTRAINT `fk_historial_cuentacontabilidad1` FOREIGN KEY (`cuentacontabilidad_nomenclatura`) REFERENCES `cuentacontabilidad` (`nomenclatura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historialmoneda`
--

DROP TABLE IF EXISTS `historialmoneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historialmoneda` (
  `idHistorial` int(11) NOT NULL,
  `idMoneda` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `moneda_idMoneda` int(11) NOT NULL,
  PRIMARY KEY (`idHistorial`),
  KEY `fk_historialmoneda_moneda1_idx` (`moneda_idMoneda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialmoneda`
--

LOCK TABLES `historialmoneda` WRITE;
/*!40000 ALTER TABLE `historialmoneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `historialmoneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horaextra`
--

DROP TABLE IF EXISTS `horaextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horaextra` (
  `idHorasExtra` int(11) NOT NULL,
  `fechaHoras` datetime NOT NULL,
  `cantidadHoras` int(11) DEFAULT NULL,
  `personaAutorizo` varchar(45) DEFAULT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`idHorasExtra`,`fechaHoras`),
  KEY `fk_horaextra_contrato1_idx` (`contrato_idContrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horaextra`
--

LOCK TABLES `horaextra` WRITE;
/*!40000 ALTER TABLE `horaextra` DISABLE KEYS */;
/*!40000 ALTER TABLE `horaextra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `horaEntrada` datetime NOT NULL,
  `horaSalida` datetime NOT NULL,
  `diasDescanso` int(11) NOT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `codigoInventario` int(11) NOT NULL,
  `unidadMedida` varchar(45) NOT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `precioCompra` int(11) DEFAULT NULL,
  `precioVenta` int(11) DEFAULT NULL,
  `productos_idProducto` int(11) NOT NULL,
  PRIMARY KEY (`codigoInventario`),
  KEY `fk_inventario_productos1_idx` (`productos_idProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listadoprecios`
--

DROP TABLE IF EXISTS `listadoprecios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listadoprecios` (
  `idPorcentaje` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `dato` double DEFAULT NULL,
  PRIMARY KEY (`idPorcentaje`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listadoprecios`
--

LOCK TABLES `listadoprecios` WRITE;
/*!40000 ALTER TABLE `listadoprecios` DISABLE KEYS */;
INSERT INTO `listadoprecios` VALUES (1,'Minorista',0.02),(2,'Mayorista',0.1),(3,'prueba',0.3),(4,'prueba',0.3),(5,'prueba3',0.05);
/*!40000 ALTER TABLE `listadoprecios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantenimiento` (
  `idMantenimiento` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMantenimiento` varchar(45) NOT NULL,
  `descripcionMantenimiento` varchar(150) NOT NULL,
  PRIMARY KEY (`idMantenimiento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercaderiaenvio`
--

DROP TABLE IF EXISTS `mercaderiaenvio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mercaderiaenvio` (
  `idmercaderiaEnvio` int(11) NOT NULL AUTO_INCREMENT,
  `pesoMercaderia` int(11) DEFAULT NULL,
  `cantidadProducto` varchar(45) DEFAULT NULL,
  `productos_idProducto` int(11) NOT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  `viaje_idViaje` int(11) NOT NULL,
  PRIMARY KEY (`idmercaderiaEnvio`),
  KEY `fk_notaEnvio_productos1_idx` (`productos_idProducto`),
  KEY `fk_mercaderiaEnvio_viaje1_idx` (`viaje_idViaje`),
  CONSTRAINT `fk_mercaderiaEnvio_viaje1` FOREIGN KEY (`viaje_idViaje`) REFERENCES `viaje` (`idViaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_notaEnvio_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercaderiaenvio`
--

LOCK TABLES `mercaderiaenvio` WRITE;
/*!40000 ALTER TABLE `mercaderiaenvio` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercaderiaenvio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesa` (
  `idMesa` int(11) NOT NULL AUTO_INCREMENT,
  `noMesa` int(11) NOT NULL,
  `capacidad` int(11) NOT NULL,
  PRIMARY KEY (`idMesa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneda`
--

DROP TABLE IF EXISTS `moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moneda` (
  `idMoneda` int(11) NOT NULL,
  `moneda` varchar(10) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `cuentabanco_idBanco` int(11) NOT NULL,
  PRIMARY KEY (`idMoneda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientoinventario`
--

DROP TABLE IF EXISTS `movimientoinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientoinventario` (
  `codigoMovimientoInventario` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `TipoMovimientoIventario_idTipoMovimientoIventario` int(11) NOT NULL,
  `bodega_idBodegaOrigen` int(11) DEFAULT NULL,
  `bodega_idBodegaDestino` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigoMovimientoInventario`),
  KEY `fk_movimientoInventario_TipoMovimientoIventario1_idx` (`TipoMovimientoIventario_idTipoMovimientoIventario`),
  KEY `fk_movimientoInventario_bodega1_idx` (`bodega_idBodegaOrigen`),
  KEY `fk_movimientoInventario_bodega2_idx` (`bodega_idBodegaDestino`),
  CONSTRAINT `fk_movimientoInventario_TipoMovimientoIventario1` FOREIGN KEY (`TipoMovimientoIventario_idTipoMovimientoIventario`) REFERENCES `tipomovimientoiventario` (`idTipoMovimientoIventario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimientoInventario_bodega1` FOREIGN KEY (`bodega_idBodegaOrigen`) REFERENCES `bodega` (`idBodega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimientoInventario_bodega2` FOREIGN KEY (`bodega_idBodegaDestino`) REFERENCES `bodega` (`idBodega`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientoinventario`
--

LOCK TABLES `movimientoinventario` WRITE;
/*!40000 ALTER TABLE `movimientoinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientoinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos_cliente`
--

DROP TABLE IF EXISTS `movimientos_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos_cliente` (
  `Id_mov_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cod_transaccion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total_cobro` float DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Transacciones_cod_transacciones` int(11) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  `fechaVencimiento` date DEFAULT NULL,
  PRIMARY KEY (`Id_mov_cliente`),
  KEY `fk_Movimientos_cliente_Transacciones1_idx` (`Transacciones_cod_transacciones`),
  KEY `fk_Movimientos_cliente_cliente1_idx` (`cliente_idCliente`),
  CONSTRAINT `fk_Movimientos_cliente_Transacciones1` FOREIGN KEY (`Transacciones_cod_transacciones`) REFERENCES `transacciones` (`cod_transacciones`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movimientos_cliente_cliente1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_cliente`
--

LOCK TABLES `movimientos_cliente` WRITE;
/*!40000 ALTER TABLE `movimientos_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos_proveedor`
--

DROP TABLE IF EXISTS `movimientos_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos_proveedor` (
  `Id_mov_proveedor` int(11) NOT NULL,
  `cod_transaccion` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `total_pago` float DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Transacciones_cod_transacciones` int(11) NOT NULL,
  `proveedores_idProveedores` int(11) NOT NULL,
  PRIMARY KEY (`Id_mov_proveedor`),
  KEY `fk_Movimientos_proveedor_Transacciones1_idx` (`Transacciones_cod_transacciones`),
  KEY `fk_Movimientos_proveedor_proveedores1_idx` (`proveedores_idProveedores`),
  CONSTRAINT `fk_Movimientos_proveedor_Transacciones1` FOREIGN KEY (`Transacciones_cod_transacciones`) REFERENCES `transacciones` (`cod_transacciones`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movimientos_proveedor_proveedores1` FOREIGN KEY (`proveedores_idProveedores`) REFERENCES `proveedores` (`idProveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_proveedor`
--

LOCK TABLES `movimientos_proveedor` WRITE;
/*!40000 ALTER TABLE `movimientos_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomina`
--

DROP TABLE IF EXISTS `nomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomina` (
  `idNomina` int(11) NOT NULL AUTO_INCREMENT,
  `fechaEmision` datetime NOT NULL,
  `nombreEmpresa` varchar(55) NOT NULL,
  `periodo_idPeriodo` int(11) NOT NULL,
  `totalDeducido` float NOT NULL,
  `totalPercibidoPagar` float NOT NULL,
  `estado` int(11) NOT NULL,
  `comision_idComision` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNomina`),
  KEY `fk_nomina_periodo1_idx` (`periodo_idPeriodo`),
  KEY `fk_comision_id` (`comision_idComision`),
  CONSTRAINT `fk_comi_id` FOREIGN KEY (`comision_idComision`) REFERENCES `comisiones` (`idComision`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nomina_periodo1` FOREIGN KEY (`periodo_idPeriodo`) REFERENCES `periodo` (`idPeriodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomina`
--

LOCK TABLES `nomina` WRITE;
/*!40000 ALTER TABLE `nomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `nomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenedecompra`
--

DROP TABLE IF EXISTS `ordenedecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenedecompra` (
  `idOrdenesCompra` int(11) NOT NULL,
  `proveedores_idProveedores` int(11) NOT NULL,
  `productos_idProducto` int(11) NOT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idOrdenesCompra`),
  KEY `fk_ordenedecompra_proveedores1_idx` (`proveedores_idProveedores`),
  KEY `fk_ordenedecompra_productos1_idx` (`productos_idProducto`),
  CONSTRAINT `fk_ordenedecompra_productos1` FOREIGN KEY (`productos_idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenedecompra_proveedores1` FOREIGN KEY (`proveedores_idProveedores`) REFERENCES `proveedores` (`idProveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenedecompra`
--

LOCK TABLES `ordenedecompra` WRITE;
/*!40000 ALTER TABLE `ordenedecompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenedecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `idPartida` varchar(12) NOT NULL,
  `numeroPartida` int(11) NOT NULL,
  `definicionPartida` varchar(300) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idPartida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `cotizacion_idCotizacion` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `fk_pedido_cotizacion1_idx` (`cotizacion_idCotizacion`),
  CONSTRAINT `fk_pedido_cotizacion1` FOREIGN KEY (`cotizacion_idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidorestaurante`
--

DROP TABLE IF EXISTS `pedidorestaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidorestaurante` (
  `idPedidoRestaurante` int(11) NOT NULL AUTO_INCREMENT,
  `fechaPedido` date NOT NULL,
  `mesa_idMesa` int(11) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idPedidoRestaurante`,`mesa_idMesa`,`cliente_idCliente`),
  KEY `fk_pedido_mesa1_idx` (`mesa_idMesa`),
  KEY `fk_pedido_cliente1_idx` (`cliente_idCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidorestaurante`
--

LOCK TABLES `pedidorestaurante` WRITE;
/*!40000 ALTER TABLE `pedidorestaurante` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidorestaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `percepciondeduccion`
--

DROP TABLE IF EXISTS `percepciondeduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `percepciondeduccion` (
  `id_PD` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePD` varchar(10) NOT NULL,
  `valorPorcentaje` float DEFAULT NULL,
  `descripcionPD` varchar(128) DEFAULT NULL,
  `flagOperacion` int(11) NOT NULL,
  PRIMARY KEY (`id_PD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percepciondeduccion`
--

LOCK TABLES `percepciondeduccion` WRITE;
/*!40000 ALTER TABLE `percepciondeduccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `percepciondeduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePerfil` varchar(45) DEFAULT NULL,
  `descripcionPerfil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `idPeriodo` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicio` datetime DEFAULT NULL,
  `fechaFin` datetime DEFAULT NULL,
  PRIMARY KEY (`idPeriodo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piloto`
--

DROP TABLE IF EXISTS `piloto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piloto` (
  `idpiloto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `dpi` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpiloto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piloto`
--

LOCK TABLES `piloto` WRITE;
/*!40000 ALTER TABLE `piloto` DISABLE KEYS */;
/*!40000 ALTER TABLE `piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platillo`
--

DROP TABLE IF EXISTS `platillo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platillo` (
  `idPlatillo` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePlatillo` varchar(45) NOT NULL,
  `descripcionPlatillo` varchar(200) NOT NULL,
  `costoPlatillo` float NOT NULL,
  `receta_idReceta` int(11) NOT NULL,
  PRIMARY KEY (`idPlatillo`),
  KEY `fk_platillo_receta1_idx` (`receta_idReceta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platillo`
--

LOCK TABLES `platillo` WRITE;
/*!40000 ALTER TABLE `platillo` DISABLE KEYS */;
/*!40000 ALTER TABLE `platillo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polizainventario`
--

DROP TABLE IF EXISTS `polizainventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polizainventario` (
  `codigoPolizaInventario` int(11) NOT NULL,
  `ivaxCobrar` int(11) DEFAULT NULL,
  `ivaxPagar` int(11) DEFAULT NULL,
  `totalDebe` int(11) DEFAULT NULL,
  `totalHaber` int(11) DEFAULT NULL,
  `fechaInicial` varchar(45) DEFAULT NULL,
  `fechaFinal` varchar(45) DEFAULT NULL,
  `movimientoInventario_codigoMovimientoInventario` int(11) NOT NULL,
  PRIMARY KEY (`codigoPolizaInventario`),
  KEY `fk_polizaInventario_movimientoInventario1_idx` (`movimientoInventario_codigoMovimientoInventario`),
  CONSTRAINT `fk_polizaInventario_movimientoInventario1` FOREIGN KEY (`movimientoInventario_codigoMovimientoInventario`) REFERENCES `movimientoinventario` (`codigoMovimientoInventario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polizainventario`
--

LOCK TABLES `polizainventario` WRITE;
/*!40000 ALTER TABLE `polizainventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `polizainventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `categoriaProducto` varchar(45) DEFAULT NULL,
  `comprasdetalle_idComprasDetalle` int(11) DEFAULT NULL,
  `tipoProducto_idTipoProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_productos_comprasdetalle1_idx` (`comprasdetalle_idComprasDetalle`),
  KEY `fk_productos_tipoProducto1_idx` (`tipoProducto_idTipoProducto`),
  CONSTRAINT `fk_productos_comprasdetalle1` FOREIGN KEY (`comprasdetalle_idComprasDetalle`) REFERENCES `comprasdetalle` (`idComprasDetalle`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_tipoProducto1` FOREIGN KEY (`tipoProducto_idTipoProducto`) REFERENCES `tipoproducto` (`idTipoProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Cena',35,'Comida',1,1),(2,'Almuerzo',35,'Comida',1,1),(3,'Desayuno',25,'Comida',1,1),(4,'Refaccion',20,'Comida',1,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `idProveedores` int(11) NOT NULL,
  `nombreProveedor` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `representante` varchar(45) DEFAULT NULL,
  `nit_proveedor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto` (
  `idPuesto` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePuesto` varchar(55) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `departamentoIdDepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idPuesto`),
  KEY `fk_puesto_departamento1_idx` (`departamentoIdDepartamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta` (
  `idReceta` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Procedimiento` longtext,
  `tiempoPreparacion` varchar(12) DEFAULT NULL,
  `numeroPersonas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idReceta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registroigss`
--

DROP TABLE IF EXISTS `registroigss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registroigss` (
  `noCarnetIgss` int(11) NOT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`noCarnetIgss`),
  KEY `fk_registroigss_contrato1_idx` (`contrato_idContrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registroigss`
--

LOCK TABLES `registroigss` WRITE;
/*!40000 ALTER TABLE `registroigss` DISABLE KEYS */;
/*!40000 ALTER TABLE `registroigss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registroirtra`
--

DROP TABLE IF EXISTS `registroirtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registroirtra` (
  `carneIrtra` int(11) NOT NULL AUTO_INCREMENT,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`carneIrtra`),
  KEY `fk_registroirtra_contrato1_idx` (`contrato_idContrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registroirtra`
--

LOCK TABLES `registroirtra` WRITE;
/*!40000 ALTER TABLE `registroirtra` DISABLE KEYS */;
/*!40000 ALTER TABLE `registroirtra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporteador`
--

DROP TABLE IF EXISTS `reporteador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporteador` (
  `idReporte` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `path` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReporte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporteador`
--

LOCK TABLES `reporteador` WRITE;
/*!40000 ALTER TABLE `reporteador` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporteador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservacion`
--

DROP TABLE IF EXISTS `reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservacion` (
  `idReservacion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicioReservacion` date NOT NULL,
  `fechaFinalReservacion` date NOT NULL,
  `costoReservacion` float NOT NULL,
  `estadoReserva` varchar(45) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idReservacion`,`cliente_idCliente`),
  KEY `fk_reservacion_cliente1_idx` (`cliente_idCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservacion`
--

LOCK TABLES `reservacion` WRITE;
/*!40000 ALTER TABLE `reservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `idServicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombreServicio` varchar(50) NOT NULL,
  `costo_servicio` float NOT NULL,
  `descripcionServicio` varchar(150) DEFAULT NULL,
  `tipohabitacion_idTipoHabitacion` int(11) NOT NULL,
  PRIMARY KEY (`idServicio`),
  KEY `fk_servicio_tipohabitacion1_idx` (`tipohabitacion_idTipoHabitacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspension`
--

DROP TABLE IF EXISTS `suspension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suspension` (
  `idregistroSuspension` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicioSuspencion` datetime DEFAULT NULL,
  `fechaCulminacionSuspension` datetime DEFAULT NULL,
  `motivoSuspension` varchar(45) DEFAULT NULL,
  `cantidadDiasSuspension` int(11) DEFAULT NULL,
  `autorizo` varchar(45) DEFAULT NULL,
  `estadoSus` int(11) DEFAULT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`idregistroSuspension`),
  KEY `fk_suspension_contrato1_idx` (`contrato_idContrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspension`
--

LOCK TABLES `suspension` WRITE;
/*!40000 ALTER TABLE `suspension` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodepreciacion`
--

DROP TABLE IF EXISTS `tipodepreciacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodepreciacion` (
  `idTipoDepreciacion` int(11) NOT NULL,
  `descripcion` varchar(75) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`idTipoDepreciacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodepreciacion`
--

LOCK TABLES `tipodepreciacion` WRITE;
/*!40000 ALTER TABLE `tipodepreciacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodepreciacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipohabitacion`
--

DROP TABLE IF EXISTS `tipohabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipohabitacion` (
  `idTipoHabitacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTipoHabitacion` varchar(50) NOT NULL,
  `costoTipoHabitacion` float NOT NULL,
  `capacidadTipoHabitacion` int(11) NOT NULL,
  `descripcionTipoHabitacion` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`idTipoHabitacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipohabitacion`
--

LOCK TABLES `tipohabitacion` WRITE;
/*!40000 ALTER TABLE `tipohabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipohabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipohuesped`
--

DROP TABLE IF EXISTS `tipohuesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipohuesped` (
  `idTipoHuesped` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoHuesped`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipohuesped`
--

LOCK TABLES `tipohuesped` WRITE;
/*!40000 ALTER TABLE `tipohuesped` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipohuesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomedida`
--

DROP TABLE IF EXISTS `tipomedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomedida` (
  `idTipoMedida` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomedida`
--

LOCK TABLES `tipomedida` WRITE;
/*!40000 ALTER TABLE `tipomedida` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipomedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomovimientoiventario`
--

DROP TABLE IF EXISTS `tipomovimientoiventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomovimientoiventario` (
  `idTipoMovimientoIventario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTipoMovimiento` varchar(45) DEFAULT NULL,
  `Ingresoosalida` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipoMovimientoIventario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomovimientoiventario`
--

LOCK TABLES `tipomovimientoiventario` WRITE;
/*!40000 ALTER TABLE `tipomovimientoiventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipomovimientoiventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopago` (
  `idTipoPago` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idTipoPago`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoproducto`
--

DROP TABLE IF EXISTS `tipoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoproducto` (
  `idTipoProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoproducto`
--

LOCK TABLES `tipoproducto` WRITE;
/*!40000 ALTER TABLE `tipoproducto` DISABLE KEYS */;
INSERT INTO `tipoproducto` VALUES (1,'Comida');
/*!40000 ALTER TABLE `tipoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotransaccion`
--

DROP TABLE IF EXISTS `tipotransaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotransaccion` (
  `idTipoTransaccion` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idTipoTransaccion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotransaccion`
--

LOCK TABLES `tipotransaccion` WRITE;
/*!40000 ALTER TABLE `tipotransaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipotransaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccion` (
  `noTransaccion` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  `idCuenta` int(11) DEFAULT NULL,
  `banco_idBanco` int(11) NOT NULL,
  `cuentabanco_idBanco` int(11) NOT NULL,
  `tipopago_idTipoPago` int(11) NOT NULL,
  `Conciliacion_CorrConciliacion` int(11) NOT NULL,
  PRIMARY KEY (`noTransaccion`),
  KEY `fk_transaccion_banco1_idx` (`banco_idBanco`),
  KEY `fk_transaccion_tipopago1_idx` (`tipopago_idTipoPago`),
  KEY `fk_transaccion_Conciliacion1_idx` (`Conciliacion_CorrConciliacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacciones` (
  `cod_transacciones` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `cod_cuenta` int(11) DEFAULT NULL,
  `accion` varchar(45) DEFAULT NULL,
  `cuentacontabilidad_nomenclatura` int(11) NOT NULL,
  PRIMARY KEY (`cod_transacciones`),
  KEY `fk_Transacciones_cuentacontabilidad1_idx` (`cuentacontabilidad_nomenclatura`),
  CONSTRAINT `fk_Transacciones_cuentacontabilidad1` FOREIGN KEY (`cuentacontabilidad_nomenclatura`) REFERENCES `cuentacontabilidad` (`nomenclatura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccionesinventario`
--

DROP TABLE IF EXISTS `transaccionesinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccionesinventario` (
  `idTransaccionesInventario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `efecto` varchar(45) DEFAULT NULL,
  `cuentacontabilidad_nomenclatura` int(11) NOT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  `fechaTransaccion` date DEFAULT NULL,
  PRIMARY KEY (`idTransaccionesInventario`),
  KEY `fk_transaccionesInventario_cuentacontabilidad1_idx` (`cuentacontabilidad_nomenclatura`),
  CONSTRAINT `fk_transaccionesInventario_cuentacontabilidad1` FOREIGN KEY (`cuentacontabilidad_nomenclatura`) REFERENCES `cuentacontabilidad` (`nomenclatura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccionesinventario`
--

LOCK TABLES `transaccionesinventario` WRITE;
/*!40000 ALTER TABLE `transaccionesinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaccionesinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `nombreUsuario` varchar(45) DEFAULT NULL,
  `apellidoUsuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `correoUsuario` varchar(45) DEFAULT NULL,
  `telefonoUsuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacaciones`
--

DROP TABLE IF EXISTS `vacaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacaciones` (
  `idVacaciones` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicioVacaciones` datetime DEFAULT NULL,
  `fechaCulminacionVacaciones` datetime DEFAULT NULL,
  `mesSolicitado` int(11) DEFAULT NULL,
  `cantidadDiasHabiles` int(11) DEFAULT NULL,
  `estadoVacaciones` int(11) DEFAULT NULL,
  `encargadoAutorizacion` varchar(45) DEFAULT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`idVacaciones`),
  KEY `fk_vacaciones_contrato1_idx` (`contrato_idContrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacaciones`
--

LOCK TABLES `vacaciones` WRITE;
/*!40000 ALTER TABLE `vacaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculo` (
  `idVehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `capacidad` varchar(45) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idVehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedor` (
  `idVendedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Este ','Men','4738293','Guatemala');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viaje` (
  `idViaje` int(11) NOT NULL AUTO_INCREMENT,
  `fechaPrevistaOperacion` varchar(45) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  `vehiculo_idVehiculo` int(11) NOT NULL,
  `bodegaProcedencia` varchar(45) DEFAULT NULL,
  `bodegaDestino` varchar(45) DEFAULT NULL,
  `piloto_idpiloto` int(11) NOT NULL,
  PRIMARY KEY (`idViaje`),
  KEY `fk_viaje_vehiculo1_idx` (`vehiculo_idVehiculo`),
  KEY `fk_viaje_piloto1_idx` (`piloto_idpiloto`),
  CONSTRAINT `fk_viaje_piloto1` FOREIGN KEY (`piloto_idpiloto`) REFERENCES `piloto` (`idpiloto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_vehiculo1` FOREIGN KEY (`vehiculo_idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-30 11:45:39
