<?php

require_once "../controller/Funciones_Ajax/Fnc_Global.php";
include_once "../lib/mpdf/mpdf.php";
include_once "../lib/phpexcel/PHPExcel.php";



# =====================	Beans Php
include_once "../beans/Bean_General.php" ;
include_once "../beans/Bean_PerUsuario.php" ;
include_once "../beans/Bean_Transaccion.php" ;
include_once "../beans/Bean_Parametro.php" ;
include_once "../beans/Bean_Departamento.php" ;
include_once "../beans/Bean_Provincia.php" ;
include_once "../beans/Bean_Distrito.php" ;
include_once "../beans/Bean_Periodo.php" ;

# =====================	Clases Php
require_once "ClsConexion.php";
require_once "ClsTransaccion_Dat.php";
require_once "ClsUsuario_Dat.php";

require_once "ClsParametro_Dat.php";
require_once "ClsDepartamento_Dat.php";
require_once "ClsProvincia_Dat.php";
require_once "ClsDistrito_Dat.php";
require_once "ClsPeriodo_Dat.php";
require_once "ClsSector_Dat.php";

# =====================	Funciones Php
require_once "../controller/Funciones_Ajax/Fnc_Comun.php";
require_once "../controller/Funciones_Ajax/Fnc_Transaccion.php";
require_once "../controller/Funciones_Ajax/Fnc_Usuario.php";
require_once "../controller/Funciones_Ajax/Fnc_Parametro.php";
require_once "../controller/Funciones_Ajax/Fnc_Productor.php";
require_once "../controller/Funciones_Ajax/Fnc_Periodo.php";
require_once "../controller/Funciones_Ajax/Fnc_Sector.php";

# INICIALIZAR XAJAX
$xajax->processRequest();



?>