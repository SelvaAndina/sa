<?php

Class ClsProvincia_Dat extends ClsConexion
{
	#Funcion para cargar las provincias
	function Listar_Provincias($objBeanProvincia){

		$IdProvincia 	= $objBeanProvincia->getIdProvincia() ;
		$Nombre			= $objBeanProvincia->getNombre() ;
		$IdDepartamento	= $objBeanProvincia->getIdDepartamento() ;
		$nProEstado		= $objBeanProvincia->getnProEstado() ;
		$OrderBy		= $objBeanProvincia->getOrderBy() ;
		$Ordenar		= $objBeanProvincia->getOrdenar() ;
		$Inicio			= $objBeanProvincia->getInicio() ;
		$Cuantos		= $objBeanProvincia->getCuantos() ;

		$this->query = "Call usp_Listar_Provincia('$IdProvincia', '$Nombre', '$IdDepartamento', '$nProEstado', '$OrderBy', '$Ordenar', $Inicio, $Cuantos)";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
}