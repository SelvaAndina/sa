<?php
	#Registro de functiones GENERALES
		$xajax->registerFunction("Combo_Parametro");
		$xajax->registerFunction("Combo_Parametro_Option");

		$xajax->registerFunction("Combo_Departamento");
		$xajax->registerFunction("Combo_Provincia");
		$xajax->registerFunction("Combo_Distrito");


		function Combo_Departamento($idPais,$selectedValue=-1 , $onChange = false )
		{
			$objResponse = new xajaxResponse();
			 $objUbigeo = new ClsUbigeo_Dat();
			 $AdoDato= $objUbigeo->Get_Departamentos_Pais($idPais);
			#LLAMOS AL GENERARDO DEL CUERPO DEL SELECT
			 $cboData= SelectOption($AdoDato,"IdDepartamento","cDepartamento",$selectedValue);
			 #AGREGAMOS LOS OPTION AL SELECT
			 $objResponse->assign("Departamento_","innerHTML",$cboData);
			 if($onChange)
				$objResponse->script("xajax_Combo_Provincia(xajax.$('Departamento_').value,'-1' , true );");
			 return $objResponse;
		}

		function Combo_Provincia($id,$selectedValue=-1 , $onChange = false)
		{
			$objResponse = new xajaxResponse();
			$objUbigeo = new ClsUbigeo_Dat();
			$AdoDato= $objUbigeo->Get_Provincias_Departamento($id);
			#LLAMOS AL GENERARDO DEL CUERPO DEL SELECT
			$cboData= SelectOption($AdoDato,"IdProvincia","Nombre",$selectedValue);
			#AGREGAMOS LOS OPTION AL SELECT
			$objResponse->assign("Provincia_","innerHTML",$cboData);

			 if($onChange)
				$objResponse->script("xajax_Combo_Distritos(xajax.$('Provincia_').value, '-1' , true );");
			 return $objResponse;
		}

		function Combo_Distritos($id,$selectedValue=-1)
		{
			$objResponse = new xajaxResponse();
			 $objUbigeo = new ClsUbigeo_Dat();
			 $AdoDato= $objUbigeo->Get_Distritos_Provincia($id);
			 #LLAMOS AL GENERARDO DEL CUERPO DEL SELECT

			  $Optiontext = "";
				if( $AdoDato->num_rows>0 )
				{
				 	$Optiontext = "<option value='0'> SELECCIONAR </option> " ;
				}

			 $cboData = $Optiontext ;
			 $cboData .= SelectOption($AdoDato,"IdDistrito","Nombre",$selectedValue);
			 #AGREGAMOS LOS OPTION AL SELECT
			 $objResponse->assign("Distrito_","innerHTML",$cboData);
			 return $objResponse;
		}


		/** CARGAR UN COMBO CONSULTADO DESDE LA TABLA PARAMENTRO
		 	* $IdSelect:  ID COMBO DONDE SE VA INSERTAR LOS OPTION
		 	* $nParClase : CODIGO DE LA CLASES
			* $selectedValue: VALOR QUE SELECCIONA EN ESTE CASO PARA CUANDO SE CARGA EL COMBO PARA MODIFICAR
		 */
		function Combo_Parametro($IdSelect,$nParClase,$selectedValue=-1){
			 $objResponse = new xajaxResponse();
			 $objUbigeo = new ClsParametro_Dat();

			 $AdoDato= $objUbigeo->Seleccionar_Parametro($nParClase);

			 $cboData="";
			 #LLAMOS AL GENERARDO DEL CUERPO DEL SELECT
			 $cboData= SelectOption($AdoDato,"nParCodigo","cParDescripcion",$selectedValue);
			 #AGREGAMOS LOS OPTION AL SELECT
			 $objResponse->assign($IdSelect,"innerHTML",$cboData);
			 return $objResponse;
		}

		/** CARGAR UN COMBO CONSULTADO DESDE LA TABLA PARAMENTRO AGREGANDOLE OPTION VACIO
		 	* $IdSelect:  ID COMBO DONDE SE VA INSERTAR LOS OPTION
		 	* $nParClase : CODIGO DE LA CLASES
			* $selectedValue: VALOR QUE SELECCIONA EN ESTE CASO PARA CUANDO SE CARGA EL COMBO PARA MODIFICAR
		 */
		function Combo_Parametro_Option($IdSelect,$nParClase,$selectedValue=-1,$Optiontext="Seleccionar"){
			 $objResponse = new xajaxResponse();
			 $objUbigeo = new ClsParametro_Dat();

			 $AdoDato= $objUbigeo->Seleccionar_Parametro($nParClase);

			 $cboData="";
			 $cboData.='<option value="0"> '.$Optiontext.' </option>';
			 // $cboData.='<option value="0"> '.$Optiontext.' </option>';
			 #LLAMOS AL GENERARDO DEL CUERPO DEL SELECT
			 $cboData.= SelectOption($AdoDato,"nParCodigo","cParDescripcion",$selectedValue);
			 #AGREGAMOS LOS OPTION AL SELECT
			 $objResponse->assign($IdSelect,"innerHTML",$cboData);
			 return $objResponse;
		}



?>