<?php
/*
	Autor			:	Armando Pisfil Puemape
  	Fecha			:	13/04/2014
  	Clase			:	ClsPeriodo_Dat
	Institucion		:	app
	Estado			:	Desarrollo
*/
Class ClsPeriodo_Dat extends ClsConexion
{

	// function Get_Sel_Periodos($nOriReg, $nCanReg,  $nPagRegistro,  $cPrdDescripcion="-")
	function Get_Sel_Periodos($objBeanPeriodo)
	{
		$nOriReg         = $objBeanPeriodo->getnOriRegistros() ;
		$nCanReg         = $objBeanPeriodo->getnNumRegMostrar() ;
		$nPagRegistro    = $objBeanPeriodo->getnPagRegistro() ;
		$cPrdDescripcion = $objBeanPeriodo->getcPrdDescripcion() ;

		$this->query="Call usp_app_Get_Sel_Periodos($nOriReg, $nCanReg, $nPagRegistro,'$cPrdDescripcion') ;";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}

    # INSERTA PERIODO
    function Set_Periodo($objBeanPeriodo)
	{
		// $nPrdCodigo      = $objBeanPeriodo->getnPrdCodigo();
		$cPrdDescripcion = $objBeanPeriodo->getcPrdDescripcion();
		$dPrdFecInic     = $objBeanPeriodo->getdPrdFecInic();
		$dPrdFecFin      = $objBeanPeriodo->getdPrdFecFin();
		$nPrdTipo        = $objBeanPeriodo->getnPrdTipo();
		$nPrdEstado      = $objBeanPeriodo->getnPrdEstado();

		$this->query="call usp_app_Set_Periodo('$cPrdDescripcion' ,  '$dPrdFecInic' ,  '$dPrdFecFin' , $nPrdTipo ,$nPrdEstado) ;";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
	 # UPDATE PERIODO
	function Upd_Periodo($objBeanPeriodo)
	{
		$nPrdCodigo 	 = $objBeanPeriodo->getnPrdCodigo();
		$cPrdDescripcion = $objBeanPeriodo->getcPrdDescripcion();
		$dPrdFecInic     = $objBeanPeriodo->getdPrdFecInic();
		$dPrdFecFin      = $objBeanPeriodo->getdPrdFecFin();
		$nPrdTipo        = $objBeanPeriodo->getnPrdTipo();
		// $nPrdEstado      = $objBeanPeriodo->getnPrdEstado();

		$this->query="call usp_app_Upd_Periodo($nPrdCodigo , '$cPrdDescripcion' , '$dPrdFecInic' , '$dPrdFecFin', $nPrdTipo ) ;";
		$this->execute_query();
		$data = $this->rows ;
		return $data;

		// return "call usp_app_Upd_Periodo($nPrdCodigo , '$cPrdDescripcion' , '$dPrdFecInic' , '$dPrdFecFin', $nPrdTipo ) ;";

	 }
	# ELIMINAR PERIODO
	function Upd_Periodo_Estado( $objBeanPeriodo )
	{
		$nPrdCodigo 	 = $objBeanPeriodo->getnPrdCodigo();
		$nPrdEstado      = $objBeanPeriodo->getnPrdEstado();

		$this->query="call usp_app_Upd_Periodo_Estado($nPrdCodigo, $nPrdEstado );";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
		/*
		$vConsulta = "Call usp_app_Upd_Periodo_Estado($nPrdCodigo, $nPrdEstado )";
	    $oConexion= new ClsAcceso_Datos();
		$rs=$oConexion->Ejecutar_Instruccion($vConsulta);
		if($rs)
		{
			return $rs;
		}
		else
		{
			return false;
		}*/
	}

	function Validar_Periodo ($objBeanPeriodo )
	{
		$nPrdCodigo      = $objBeanPeriodo->getnPrdCodigo();
		$cPrdDescripcion = $objBeanPeriodo->getcPrdDescripcion();
		$dPrdFecInic     = $objBeanPeriodo->getdPrdFecInic();
		$dPrdFecFin      = $objBeanPeriodo->getdPrdFecFin();
		// $nPrdTipo        = $objBeanPeriodo->getnPrdTipo();
		// $nPrdEstado      = $objBeanPeriodo->getnPrdEstado();

		$this->query="call usp_app_Validar_Periodo($nPrdCodigo , '$cPrdDescripcion' ,  '$dPrdFecInic' ,  '$dPrdFecFin') ;";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
		// return "call usp_app_Get_Periodo_Validar($nPrdCodigo , '$cPrdDescripcion' ,  '$dPrdFecInic' ,  '$dPrdFecFin') ";
	}

	//Funcion que los datos de una determinada marca en base a su codigo
	function Get_Periodo_by_nPrdCodigo($nPrdCodigo)
	{
		$vConsulta="Call usp_Get_Periodo_By_nPrdCodigo($nPrdCodigo)";
		$oConexion= new ClsAcceso_Datos();
		$rs=$oConexion->Ejecutar_Consulta($vConsulta);
		if($rs)
		{
			return $rs;
		}else{
			return false;
		}
	}




	# VALIDAR EL PERIDO POR UNA FECHA
	function Validar_Periodo_by_Fecha($objBeanPeriodo)
	{
		$dPrdFecInic     = $objBeanPeriodo->getdPrdFecInic();
		$nPrdTipo        = $objBeanPeriodo->getnPrdTipo();

		$this->query="call usp_app_Validar_Periodo_by_Fecha('$dPrdFecInic' , $nPrdTipo) ;";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
		// return "call usp_app_Validar_Periodo_by_Fecha('$dPrdFecInic' , $nPrdTipo) ;";


	}


}
?>