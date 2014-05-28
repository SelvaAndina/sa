<?php


	$manejador="pgsql";
	$servidor="localhost";
	$usuario="postgres";
	$clave="root";
	$base="db_pdo";

	 # MYSQL


    /*    $manejador = "pgsql";
        $servidor  = "localhost";
        $usuario   = "planeado_region123";
        $clave     = "region123";
        $base      = "planeado_region";
        $port      = "5432" ;*/

$cadena="$manejador:host=$servidor;dbname=$base";
$cnx= new PDO($cadena,$usuario,$clave);


// print("Obtener todas las filas restantes del conjunto de resultados:\n");

$sql = " Select *  from parametro ; ";
$Ado = $cnx->query($sql) ;

$resultado = $Ado->fetchAll();
echo $Ado->rowCount();
print_r($resultado);


?>