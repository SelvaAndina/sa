<?php
class ClsUbigeo_Dat extends ClsConexion
{
	# Funcion para seleccionar Departamento
		function Get_Paises($nOriReg, $nCanReg, $nPagRegistro, $cPais)
		{
			$vConsulta="Call usp_Get_Paises($nOriReg, $nCanReg, $nPagRegistro, '$cPais')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Departamento
		function Get_Departamentos($nOriReg, $nCanReg, $nPagRegistro, $cDepartamento)
		{
			$vConsulta="Call usp_Get_Departamentos($nOriReg, $nCanReg, $nPagRegistro, '$cDepartamento')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Provincias
		function Get_Provincias($nOriReg, $nCanReg, $nPagRegistro, $cProvincia)
		{
			$vConsulta="Call usp_Get_Provincias($nOriReg, $nCanReg, $nPagRegistro, '$cProvincia')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Distritos
		function Get_Distritos($nOriReg, $nCanReg, $nPagRegistro, $cDistrito)
		{
			$vConsulta="Call usp_Get_Distritos($nOriReg, $nCanReg, $nPagRegistro, '$cDistrito')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Provincias por departamentos
		// function Get_Departamentos_Pais($IdPais )
		function Get_Departamentos_Pais($objDepartemento )
		{
			$IdPais = $objDepartemento->getIdPais() ;

			$this->query ="CALL usp_app_Get_Departamentos_Pais('$IdPais')  ;";
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
	# Funcion para seleccionar Provincias por departamentos
		function Get_Provincias_Departamento($IdDepartamento )
		{
			$vConsulta="Call usp_Get_Provincias_Departamento('$IdDepartamento')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Distritos por Provincias
		function Get_Distritos_Provincia($IdProvincia )
		{
			$vConsulta="Call usp_Get_Distritos_Provincia('$IdProvincia')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Distrito Por ID
		function Get_Buscar_Distrito_By_IdDistrito($IdDistrito)
		{
			$vConsulta="Call usp_Get_Buscar_Distrito_By_IdDistrito('$IdDistrito')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Distrito Por ID
		function Get_Buscar_Provincia_By_IdProvincia($ID)
		{
			$vConsulta="Call usp_Get_Buscar_Provincia_By_IdProvincia('$ID')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}
	# Funcion para seleccionar Distrito Por ID
		function Get_Buscar_Departamento_By_IdDepartamento($ID)
		{
			$vConsulta="Call usp_Get_Buscar_Departamento_By_IdDepartamento('$ID')";
			$oConexion = new ClsAcceso_Datos();
			$rs=$oConexion->Ejecutar_Consulta($vConsulta);
				if ($rs)
				{
					return $rs;
				}else{
					return false;
				}
		}

}

?>