<?php

	$xajax->registerFunction("Nuevo_Productor");
	$xajax->registerFunction("Insertar_Productor");
	$xajax->registerFunction("Listar_Productor");
	$xajax->registerFunction("Editar_Productor");
	$xajax->registerFunction("Eliminar_Productor");
	$xajax->registerFunction("Reporte_Productor");
	$xajax->registerFunction("Cargar_Provincia");
	$xajax->registerFunction("Cargar_Distrito");

	function Listar_Productor(){
		$objResponse = new xajaxResponse();


		$formulario ='';
		$formulario .= ' <div class="ContenedorTable">
				<table style="width:100%;" >
					<tr class="title-table" >
						<td  style="width:10%;">&nbsp; Código</td>
						<td  style="width:40%;">&nbsp; Productor</td>
						<td  style="width:25%;">&nbsp; DNI</td>
						<td  style="width:25%;">&nbsp; E-Mail</td>
					</tr>
			    	<tr class="vform">
						<td>
						    <input  type="search" disabled="disabled" name="" placeholder="" />
						</td>
						<td>
			    		    <input type="search" name="txtproductor" id="txtproductor" placeholder="Buscar por Productor"
			    		    value=""
							onkeyup="Listar_Productor('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );"
		    		    	onsearch="Listar_Productor('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );" />

						</td>
						<td>
			    		    <input type="search" name="cParDescripcion_" id="cParDescripcion_" placeholder="Buscar DNI"
			    		    value=""
							onkeyup="Listar_Productor('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );"
		    		    	onsearch="Listar_Productor('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );" />
						</td>
						<td>
			    		    <input type="search" name="cParDescripcion_" id="cParDescripcion_" placeholder="Buscar E-Mail"
			    		    value=""
							onkeyup="Listar_Productor('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );"
		    		    	onsearch="Listar_Productor('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );" />
						</td>
					</tr>
					<tbody id="tbodyData" class="table table-hover table-border">
						<tr>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
					</tbody>
			    </table>
			    </div>';

		$formulario="<center>".$formulario."</center>";
	    $objResponse->assign("ContenedorPrincipal","innerHTML",$formulario);
	    //$objResponse->script("xajax_Filtrar_Parametro('".$nOriRegistros."', '".$nNumRegMostrar."', '".$nPagRegistro."', '".$nPagAct."',  xajax.getFormValues(FrmPrincipal) );");

		return $objResponse;
	}

	function Nuevo_Productor(){
		$objResponse = new xajaxResponse();
		#Formulario
		$funcion = "Insertar_Productor";
		$formulario = Form_Productor($funcion);

		# configurando emergente
		$FrmRpta = FrmEmergente("NUEVO PRODUCTOR", $formulario);

		$objResponse->assign("emergente_contenido","innerHTML",$FrmRpta);
		$objResponse->script("Calendar_Combo('txtfechanacimiento');");
		$objResponse->script("Calendar_Combo('txtfechaingreso');");

		// $objResponse->assign("emergente","style.height","420px");
		$objResponse->script("mostrar_emergente();");
		return $objResponse;
	}

	function Form_Productor($funcion){

		$objParametro = new ClsParametro_Dat();
		$objDepartamento = new ClsDepartamento_Dat();
		$objBeanParametro = new  Bean_Parametro() ;
		$objBeanDepartamento = new Bean_Departamento();

		$objBeanParametro->setnParCodigo("0");
		$objBeanParametro->setnParClase("1002");
		$objBeanParametro->setcParJerarquia("-");
		$objBeanParametro->setcParNombre("-");
		$objBeanParametro->setcParDescripcion("-");
		$objBeanParametro->setnParTipo("1000");

		$row_Sexo = $objParametro->Get_Parametro_By_Todos($objBeanParametro);
		$Select_Sexo = SelectOption($row_Sexo["cuerpo"], 'nParCodigo', 'cParDescripcion');

		$objBeanParametro->setnParClase("1006");
		$row_Clasificacion = $objParametro->Get_Parametro_By_Todos($objBeanParametro);
		$Select_Clasificacion = SelectOption($row_Clasificacion["cuerpo"], 'nParCodigo', 'cParDescripcion');

		$objBeanParametro->setnParClase("1007");
		$row_Status = $objParametro->Get_Parametro_By_Todos($objBeanParametro);
		$Select_Status = SelectOption($row_Status["cuerpo"], 'nParCodigo', 'cParDescripcion');

		$objBeanDepartamento->setIdDepartamento("") ;
		$objBeanDepartamento->setNombre("") ;
		$objBeanDepartamento->setIdPais("") ;
		$objBeanDepartamento->setnDepEstado("1") ;
		$objBeanDepartamento->setOrderBy("Nombre") ;
		$objBeanDepartamento->setOrdenar("ASC") ;
		$objBeanDepartamento->setInicio("-1") ;
		$objBeanDepartamento->setCuantos("-1") ;
		$row_Departamento = $objDepartamento->Listar_Departamentos($objBeanDepartamento);
		$Select_Departamento = SelectOption($row_Departamento["cuerpo"], 'IdDepartamento', 'Nombre');

	    $formulario ='
	    	<div class="vform vformContenedor">
	    		<input type="hidden" name="txtnParCodigo" value="" />
	    		<fieldset class="c12" >
					<fieldset class="c6" >
						<label> Código </label>
						<input class="inputs-text" type="text" id="txtcodigo" name="txtcodigo" placeholder ="INGRESE SU CÓDIGO"  value="">
					</fieldset>
					<fieldset class="c6" >
						<label> Nombres </label>
						<input class="inputs-text" type="text" id="txtnombre" name="txtnombre" placeholder ="INGRESE SUS NOMBRES"  value="">
					</fieldset>
				</fieldset>
				<fieldset class="c12" >
					<fieldset class="c6" >
						<label> Apellido Paterno </label>
						<input class="inputs-text" type="text" id="txtapepaterno" name="txtapepaterno" placeholder ="INGRESE SU APELLIDO PATERNO"  value="">
					</fieldset>
					<fieldset class="c6" >
						<label>Apellido Materno  </label>
						<input class="inputs-text" type="text" id="txtapematerno" name="txtapematerno" placeholder ="INGRESE SU APELLIDO MATERNO" value="">
					</fieldset>
				</fieldset>
				<fieldset class="c12" >
					<fieldset class="c6" >
						<label> Dni </label>
						<input class="inputs-text" type="text" id="txtdni" name="txtdni" placeholder ="INGRESE SU DNI"  value="">
					</fieldset>
					<fieldset class="c6" >
						<label>Teléfono  </label>
						<input class="inputs-text" type="text" id="txttelefono" name="txttelefono" placeholder ="INGRESE SU TELEFONO" value="">
					</fieldset>
				</fieldset>
				<fieldset class="c12" >
					<fieldset class="c6" >
						<label> Sexo </label>
						<select class="inputs-text" name="txtsexo" id="txtsexo">
							<option value="">..:: Seleccione ::..</option>
							'.$Select_Sexo.'
						</select>
					</fieldset>
					<fieldset class="c6" >
						<label>E-Mail  </label>
						<input class="inputs-text" type="text" id="txtemail" name="txtemail" placeholder ="INGRESE SU E-MAIL" value="">
					</fieldset>
				</fieldset>
				<fieldset class="c12" >
					<fieldset class="c6" >
						<label>Fecha Nacimiento  </label>
						<input class="inputs-text" type="text" id="txtfechanacimiento" name="txtfechanacimiento" placeholder ="INGRESE SU FECHA NACIMIENTO" value="">
					</fieldset>
					<fieldset class="c6" >
						<label>Fecha De Ingreso  </label>
						<input class="inputs-text" type="text" id="txtfechaingreso" name="txtfechaingreso" placeholder ="INGRESE SU FECHA DE INGRESO" value="'.date('d/m/Y').'">
					</fieldset>
				</fieldset>
				<fieldset class="c12" >
					<fieldset class="c6" >
						<label> Clasificación </label>
						<select class="inputs-text" name="txtclasificacion" id="txtclasificacion">
							<option value="">..:: Seleccione ::..</option>
							'.$Select_Clasificacion .'
						</select>
					</fieldset>
					<fieldset class="c6" >
						<label>Estatus  </label>
						<select class="inputs-text" name="txtestatus" id="txtestatus">
							<option value="">..:: Seleccione ::..</option>
							'.$Select_Status.'
						</select>
					</fieldset>
				</fieldset>
				<fieldset class="c12" >
					<fieldset class="c6" >
						<label> Región </label>
						<select class="inputs-text" name="txtregion" id="txtregion" onchange="xajax_Cargar_Provincia(this.value)">
							<option value="">..:: Seleccione ::..</option>
							'.$Select_Departamento.'
						</select>
					</fieldset>
					<fieldset class="c6" >
						<label>Provincia  </label>
						<select class="inputs-text" name="txtprovincia" id="txtprovincia" onchange="xajax_Cargar_Distrito(this.value)">
							<option value="">..:: Seleccione ::..</option>
						</select>
					</fieldset>
				</fieldset>
				<fieldset class="c12" >
					<fieldset class="c6" >
						<label> Distrito </label>
						<select class="inputs-text" name="txtdistrito" id="txtdistrito">
							<option value="">..:: Seleccione ::..</option>
						</select>
					</fieldset>
					<fieldset class="c6" >
						<label>Sector  </label>
						<input class="inputs-text" type="text" id="txtsector" name="txtsector" placeholder ="INGRESE SU SECTOR" value="">
					</fieldset>
				</fieldset>

				'.botonRegistrar($funcion).'
			</div>';
			return $formulario;
	}

	function Insertar_Productor($frm){
		$objResponse = new xajaxResponse();

		$msj = "";
		if(!is_numeric($frm['txtsector'])){
			$msj = "Ingrese Un Sector";
		}
		if(!is_numeric($frm['txtdistrito'])){
			$msj = "Seleccione Un Distrito";
		}
		if(!is_numeric($frm['txtprovincia'])){
			$msj = "Seleccione Una Provincia";
		}
		if(!is_numeric($frm['txtregion'])){
			$msj = "Seleccione Una Región";
		}
		if(!is_numeric($frm['txtestatus'])){
			$msj = "Seleccione Un Estatus.";
		}
		if(!is_numeric($frm['txtclasificacion'])){
			$msj = "Seleccione Una Clasificación.";
		}
		if(empty($frm['txtfechaingreso'])){
			$msj = "Ingrese Una Fecha De Ingreso.";
		}
		if(empty($frm['txtfechanacimiento'])){
			$msj = "Ingrese Una Fecha De Nacimiento.";
		}
		if(!filter_var($frm['txtemail'], FILTER_VALIDATE_EMAIL)){
			$msj = "Ingrese Un E-Mail Válido.";
		}
		if(!is_numeric($frm['txtsexo'])){
			$msj = "Seleccione Un Sexo.";
		}
		if(empty($frm['txttelefono'])){
			$msj = "Ingrese Un Teléfono.";
		}
		if(!is_numeric($frm['txtdni']) || strlen(trim($frm['txtdni'])) < 8 || strlen(trim($frm['txtdni'])) > 8){
			$msj = "Ingrese Un DNI Válido.";
		}
		if(empty($frm['txtapematerno'])){
			$msj = "Ingrese Los Apellido Materno.";
		}
		if(empty($frm['txtapepaterno'])){
			$msj = "Ingrese Los Apellido Paterno.";
		}
		if(empty($frm['txtnombre'])){
			$msj = "Ingrese Los Nombres.";
		}
		if(empty($frm['txtcodigo'])){
			$msj = "Ingrese El Código.";
		}

		if($msj == ""){

		}
		$objResponse->assign("labelMsj","innerHTML",$msj);
		return $objResponse;
	}

	function Cargar_Provincia($id){
		$objResponse = new xajaxResponse();
		$objBeanProvincia = new Bean_Provincia();
		$objProvincia = new ClsProvincia_Dat();

		$Select_Provincia = "<option value=''>..:: Seleccione ::..</option>";
		if($id != ''){
			$objBeanProvincia->setIdProvincia("") ;
			$objBeanProvincia->setNombre("") ;
			$objBeanProvincia->setIdDepartamento("$id") ;
			$objBeanProvincia->setnProEstado("1") ;
			$objBeanProvincia->setOrderBy("Nombre") ;
			$objBeanProvincia->setOrdenar("ASC") ;
			$objBeanProvincia->setInicio("-1") ;
			$objBeanProvincia->setCuantos("-1") ;
			$row_Provincia = $objProvincia->Listar_Provincias($objBeanProvincia);

			$Select_Provincia .= SelectOption($row_Provincia["cuerpo"], 'IdProvincia', 'Nombre');
		}
		$objResponse->assign("txtprovincia","innerHTML",$Select_Provincia);
		$objResponse->assign("txtdistrito","innerHTML","<option value=''>..:: Seleccione ::..</option>");
		return $objResponse;
	}

	function Cargar_Distrito($id){
		$objResponse = new xajaxResponse();
		$objBeanDistrito = new Bean_Distrito();
		$objDistrito = new ClsDistrito_Dat();

		$Select_Distrito = "<option value=''>..:: Seleccione ::..</option>";
		if($id != ''){
			$objBeanDistrito->setIdDistrito("") ;
			$objBeanDistrito->setNombre("") ;
			$objBeanDistrito->setIdProvincia("$id") ;
			$objBeanDistrito->setnDisEstado("1") ;
			$objBeanDistrito->setOrderBy("Nombre") ;
			$objBeanDistrito->setOrdenar("ASC") ;
			$objBeanDistrito->setInicio("-1") ;
			$objBeanDistrito->setCuantos("-1") ;
			$row_Distrito = $objDistrito->Listar_Distritos($objBeanDistrito);

			$Select_Distrito .= SelectOption($row_Distrito["cuerpo"], 'IdDistrito', 'Nombre');
		}
		$objResponse->assign("txtdistrito","innerHTML",$Select_Distrito);
		return $objResponse;
	}
