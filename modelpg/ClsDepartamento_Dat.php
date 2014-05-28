<?php

Class ClsDepartamento_Dat extends ClsConexion
{
	#Funcion para cargar los departamentos.
	function Listar_Departamentos($objBeanDepartamento){

		$IdDepartamento = $objBeanDepartamento->getIdDepartamento() ;
		$Nombre			= $objBeanDepartamento->getNombre() ;
		$IdPais			= $objBeanDepartamento->getIdPais() ;
		$nDepEstado		= $objBeanDepartamento->getnDepEstado() ;
		$OrderBy		= $objBeanDepartamento->getOrderBy() ;
		$Ordenar		= $objBeanDepartamento->getOrdenar() ;
		$Inicio			= $objBeanDepartamento->getInicio() ;
		$Cuantos		= $objBeanDepartamento->getCuantos() ;

		$this->query = "Call usp_Listar_Departamento('$IdDepartamento', '$Nombre', '$IdPais', '$nDepEstado', '$OrderBy', '$Ordenar', $Inicio, $Cuantos)";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
}