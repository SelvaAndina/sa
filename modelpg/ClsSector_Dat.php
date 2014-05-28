<?php
class ClsSector_Dat extends ClsConexion
{

	# Funcion para seleccionar Provincias por departamentos
		function Get_Sel_Sectores($objBeanParametro , $objDepartemento = "" )
		{
				$nOriReg         = $objBeanParametro->getnOriRegistros() ;
				$nCanReg         = $objBeanParametro->getnNumRegMostrar() ;
				$nPagRegistro    = $objBeanParametro->getnPagRegistro() ;
				$cParDescripcion = $objBeanParametro->getcParDescripcion() ;

			$this->query ="CALL usp_app_Get_Sel_Sectores($nOriReg , $nCanReg , $nPagRegistro , '$cParDescripcion')  ;";
			$this->execute_query();
			$data = $this->rows ;
			return $data;
			/*
			$vConsulta="Call usp_app_Get_Departamentos_Pais('$IdPais')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}*/
		}


}

?>