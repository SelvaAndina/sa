<?php
	/*
		Autor			:	ARMANDO ENRIQUE PISFIL PUEMAPE
	  	Fecha			:	28/12/2013
	  	Clase			:	ClsParametro_Dat
		Estado			:	OK
	*/

	Class ClsParametro_Dat extends ClsConexion
	{
		#  FUNCIÓN PARA FILTRAR PARAMETRO
			function Filtrar_Parametro($objBeanParametro)
			{
				$nOriReg         = $objBeanParametro->getnOriRegistros() ;
				$nCanReg         = $objBeanParametro->getnNumRegMostrar() ;
				$nPagRegistro    = $objBeanParametro->getnPagRegistro() ;
				$nParClase       = $objBeanParametro->getnParClase() ;
				$cParNombre      = $objBeanParametro->getcParNombre() ;
				$cParDescripcion = $objBeanParametro->getcParDescripcion() ;

				$this->query="Call usp_Filtrar_Parametro($nOriReg, $nCanReg, $nPagRegistro, '$cParNombre', '$cParDescripcion', $nParClase)";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
			}
		# INSERTAR
			function Set_Parametro($objBeanParametro ) {
				$nParClase       = $objBeanParametro->getnParClase() ;
				$cParNombre      = $objBeanParametro->getcParNombre() ;
				$cParDescripcion = $objBeanParametro->getcParDescripcion() ;

				$this->query="Call usp_Set_Parametro($nParClase, '$cParNombre', '$cParDescripcion' )";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
			}
		# INSERTAR PARAMETRO SIN GENERAR CODIGO
			function Reg_Parametro($objBeanParametro ) {
				$nParCodigo      = $objBeanParametro->getnParCodigo() ;
				$nParClase       = $objBeanParametro->getnParClase() ;
				$cParNombre      = $objBeanParametro->getcParNombre() ;
				$cParDescripcion = $objBeanParametro->getcParDescripcion() ;

				$this->query="Call usp_app_Reg_Parametro($nParCodigo , $nParClase, '$cParNombre', '$cParDescripcion' )";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
			}

		# Filtrar un parametro
			function Get_Parametro_By_Todos($objBeanParametro ) {
				$nParCodigo      = $objBeanParametro->getnParCodigo() ;
				$nParClase       = $objBeanParametro->getnParClase() ;
				$cParJerarquia   = $objBeanParametro->getcParJerarquia() ;
				$cParNombre      = $objBeanParametro->getcParNombre() ;
				$cParDescripcion = $objBeanParametro->getcParDescripcion() ;
				$nParTipo        = $objBeanParametro->getnParTipo() ;

				$this->query="Call usp_Get_Parametro_By_Todos($nParCodigo, $nParClase, '$cParJerarquia' , '$cParNombre', '$cParDescripcion' , $nParTipo )";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
			}
		# SELECCIONAR EL PARAMETRO PADRE (RAIZ) DE UNA DETERMINADA CLASE
			function Get_Parametro_Padre_nParClase($objParametroBean )
			{
				$nParClase       = $objParametroBean->getnParClase() ;
				$this->query="Call usp_Get_Parametro_Padre_nParClase($nParClase)";
				$this->execute_query();
				$data = $this->rows ;
				return $data;

			}

		#Función para validar parametro por descripcion
			function Validar_Parametro($objBeanParametro)
			{
				$nParClase       = $objBeanParametro->getnParClase() ;
				$cParNombre      = $objBeanParametro->getcParNombre() ;
				$cParDescripcion = $objBeanParametro->getcParDescripcion() ;

				$this->query = "Call usp_Validar_Parametro($nParClase, '$cParNombre', '$cParDescripcion')";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
			}

		#Buscar un parametro por Clase y codigo
			function Buscar_Parametro($objBeanParametro)
			{
				$nParCodigo      = $objBeanParametro->getnParCodigo() ;
				$nParClase       = $objBeanParametro->getnParClase() ;

				$this->query = "Call usp_app_Buscar_Parametro($nParCodigo  , $nParClase )";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
				// return $this->query ;
			}

		#Buscar un parametro por Clase
			function Get_Parametro_By_cParClase($objBeanParametro)
			{
				// $nParCodigo      = $objBeanParametro->getnParCodigo() ;
				$nParClase       = $objBeanParametro->getnParClase() ;

				$this->query = "Call usp_app_Get_Parametro_By_cParClase( $nParClase )";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
				// return $this->query ;
			}


		# actualizar parametro
			function Upd_Parametro($objBeanParametro ) {
				$nParCodigo      = $objBeanParametro->getnParCodigo() ;
				$nParClase       = $objBeanParametro->getnParClase() ;
				$cParNombre      = $objBeanParametro->getcParNombre() ;
				$cParDescripcion = $objBeanParametro->getcParDescripcion() ;

				$this->query = "Call usp_app_Upd_Parametro($nParCodigo, $nParClase,  '$cParNombre', '$cParDescripcion' )";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
			}
		# Función para eliminar parametro enviando codigo y clase =========
			function Upd_Parametro_Estado($objBeanParametro)
			{
				$nParCodigo = $objBeanParametro->getnParCodigo() ;
				$nParClase  = $objBeanParametro->getnParClase() ;
				$nParTipo   = $objBeanParametro->getnParTipo() ;
				$this->query = "Call usp_app_Upd_Parametro_Estado($nParCodigo, $nParClase ,  $nParTipo)";
				$this->execute_query();
				$data = $this->rows ;
				return $data;
			}


	}
?>