<?php

Class ClsDistrito_Dat extends ClsConexion
{
	#Funcion para cargar las provincias
	function Listar_Distritos($objBeanDistrito){

		$IdDistrito 	= $objBeanDistrito->getIdDistrito() ;
		$Nombre			= $objBeanDistrito->getNombre() ;
		$IdProvincia	= $objBeanDistrito->getIdProvincia() ;
		$nDisEstado		= $objBeanDistrito->getnDisEstado() ;
		$OrderBy		= $objBeanDistrito->getOrderBy() ;
		$Ordenar		= $objBeanDistrito->getOrdenar() ;
		$Inicio			= $objBeanDistrito->getInicio() ;
		$Cuantos		= $objBeanDistrito->getCuantos() ;

		$this->query = "Call usp_Listar_Distrito('$IdDistrito', '$Nombre', '$IdProvincia', '$nDisEstado', '$OrderBy', '$Ordenar', $Inicio, $Cuantos)";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
}