<?php

require_once "ClsConexion.php" ;
class prueba extends ClsConexion
{

	function __construct()
	{
		$this->db_name = "otds" ;

	}

	function prueba1()
	{
		 $this->query= " select * from parametro " ;
				$this->execute_query();
				$data = $this->rows ;
				// return $data;
				print_r($data);
	}
}

$objprueba = new prueba() ;
$objprueba->prueba1() ;

?>