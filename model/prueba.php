<?php
/* incluimos la funcion conecta y creamos objetos de ambas bases de datos */


    $cnx = new PDO('mysql:host=127.0.0.1;dbname=db_selva', "root", "");


/* escribimos la consulta que actualizará a 7 el campo Puntos de la tabla prueba1 */
$consulta = "select * from transaccions ";
/*preparamos la consulta de la tabla SQLite*/
$actualiza = $cnx->prepare($consulta);
/* aplicamos el método execute al objeto creado por el método anterior */
$actualiza->execute();
/* leemos el numero de registros afectados por la ejecución de la sentencia */
$numero_resultados =  $actualiza->rowCount();
/* visualizamos la información del resultado */
print("Se han actualizado $numero_resultados registros :::  $actualiza");


 /* repetimos exactamente el proceso anterior preparando un objeto MySQL*/
$consulta = 'UPDATE parametro SET parametro.cParDescripcion = "armando"
WHERE parametro.nParClase = 1002
AND parametro.nParCodigo =  1000  ;   ';

$actualiza = $cnx->prepare($consulta);
$actualiza->execute();
$numero_resultados = $actualiza->rowCount();

print("Se han actualizado $numero_resultados registros");
?>