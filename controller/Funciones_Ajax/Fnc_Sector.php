<?php

		$xajax->registerFunction("Listar_Sectores");
		$xajax->registerFunction("Filtrar_Sector");
		$xajax->registerFunction("Nuevo_Sector");
		$xajax->registerFunction("Insertar_Sector");
		$xajax->registerFunction("Editar_Sector");
		$xajax->registerFunction("Actualizar_Sector");
		$xajax->registerFunction("Eliminar_Sector");
		$xajax->registerFunction("ConfEliminar_Sector");
		$xajax->registerFunction("Cerrar_Sector");
		$xajax->registerFunction("ConfCerrar_Sector");
		$xajax->registerFunction("Reportes_Sector");

	# LISTAR
		function Listar_Sectores($nOriRegistros, $nNumRegMostrar, $nPagRegistro, $nPagAct)
		{
			    	$objResponse = new xajaxResponse();

			   		$FuncionSearch = 'xajax_Filtrar_Sector('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );';
					$FuncionEnter = ' if(event.keyCode == 13){'.$FuncionSearch.'} ';

					$formulario ='';
					$formulario .= '<div class="ContenedorTable">

							<table style="width:100%;">
								<tr class="title-table text-left" >
									<th  style="width: 10%;">&nbsp; CÓDIGO </th>
									<th  style="width: 30%;">&nbsp; Departamento </th>
									<th  style="width: 20%;">&nbsp; Provincia </th>
									<th  style="width: 20%;">&nbsp; Distrito </th>
									<th  style="width: 20%;">&nbsp; Sector  </th>
								</tr>
						    	<tr class="vform">
									<td>
									    <input  type="search" disabled="disabled" name="" placeholder="" />
									</td>
									<td>
						    		    <input type="search" name="cDepartamento_" id="cDepartamento_" placeholder="Buscar Departamento"
						    		    onkeyup="'.$FuncionEnter.'"
							    		onsearch="'.$FuncionSearch.'" />
									</td>
									<td>
						    		    <input type="search" name="cProvincia_" id="cProvincia_" placeholder="Buscar Provincia"
						    		    onkeyup="'.$FuncionEnter.'"
							    		onsearch="'.$FuncionSearch.'" />
									</td>
									<td>
						    		    <input type="search" name="cDistrito_" id="cDistrito_" placeholder="Buscar Distrito"
						    		    onkeyup="'.$FuncionEnter.'"
							    		onsearch="'.$FuncionSearch.'" />
									</td>
									<td>
						    		    <input type="search" name="cSector_" id="cSector_" placeholder="Buscar Sector"
						    		    onkeyup="'.$FuncionEnter.'"
							    		onsearch="'.$FuncionSearch.'" />
									</td>


								</tr>

								<tbody id="tbodyData" class="table table-hover table-border">

								</tbody>
						    </table>
						    </div>';
				    $objResponse->assign("ContenedorPrincipal","innerHTML",$formulario);
				    $objResponse->script("xajax_Filtrar_Sector('".$nOriRegistros."', '".$nNumRegMostrar."', '".$nPagRegistro."', '".$nPagAct."',  xajax.getFormValues(FrmPrincipal) );");
				return $objResponse;
		}

	#LISTAR LOS REGISTROS DE BD
		function Filtrar_Sector($nOriRegistros, $nNumRegMostrar, $nPagRegistro, $nPagAct,$frm)
		{
			$objResponse    = new xajaxResponse();
			$objSector     = new ClsSector_Dat();
			$objBeanParametro    = new Bean_Parametro();
			$objBeanDepartamento = new Bean_Departamento();
			$objBeanProvincia    = new Bean_Provincia();
			$objBeanDistrito     = new Bean_Distrito();

			if(empty($frm["cDepartamento_"]))
			{
				$cDepartamento = "-";
			}else{
				$cDepartamento = $frm["cDepartamento_"];
			}
			if(empty($frm["cProvincia_"]))
			{
				$cProvincia = "-";
			}else{
				$cProvincia = $frm["cProvincia_"];
			}
			if(empty($frm["cDistrito_"]))
			{
				$cDistrito = "-";
			}else{
				$cDistrito = $frm["cDistrito_"];
			}
			if(empty($frm["cSector_"]))
			{
				$cSector = "-";
			}else{
				$cSector = $frm["cSector_"];
			}

	    	$objBeanParametro->setnOriRegistros(0) ;
			$objBeanParametro->setnNumRegMostrar(0) ;
			$objBeanParametro->setnPagRegistro(0) ; # que no pagine
			/*$objBeanParametro->setnParClase(2002) ;*/
			$objBeanParametro->setcParDescripcion($cSector) ;
		    $AdoRs =$objSector->Get_Sel_Sectores($objBeanParametro);

	   		//  #Capturar el número de registros
	    	$nNumRegExist = count($AdoRs["cuerpo"]);
	    	// $nNumRegExist = $AdoRs->num_rows;

	    	 #Filtrar registros deacuerdo al origen de datos y y viene paginados
		    $objBeanParametro->setnOriRegistros($nOriRegistros) ;
			$objBeanParametro->setnNumRegMostrar($nNumRegMostrar) ;
			$objBeanParametro->setnPagRegistro($nPagRegistro) ;

		    #Filtrar registrar
	    	$data =$objSector->Get_Sel_Sectores($objBeanParametro);

	  		// departamento.IdDepartamento ,
			// departamento.cDepartamento,
			// provincia.IdProvincia ,
			// provincia.cProvincia ,
			// distrito.IdDistrito ,
			// distrito.cDistrito ,
			// p_sector.nParCodigo ,
			// p_sector.cParDescripcion
			$formulario= "";
			$Paginacion="";
			if (count($data["cuerpo"]) > 0)
			{
				# se recorre el array y se extraer cada uno de los registros
				for ($i = 0; $i < count($data["cuerpo"]); $i++)
	            {

						$formulario.="<tr id='tr".$i."' onclick=\"js_seleccionar_fila(".$i.");\">";
	                    $formulario.= 	"<td>";
	                    $formulario.=      "  <input class='inputRadio' type='radio' value='".$data["cuerpo"][$i]["nPrdCodigo"]."-".$nEstado ."' name='rdCodigo' id='rdCodigo".$i."'/>";
	                    $formulario.=          substr("0000".$data["cuerpo"][$i]["nPrdCodigo"],-5);
	                    $formulario.=  	"</td>";
					   	$formulario.= 	"<td>".$data["cuerpo"][$i]["cPrdDescripcion"]."</td>";
					   	$formulario.= 	"<td>".$data["cuerpo"][$i]["dPrdFecInic"]."</td>";
					   	$formulario.= 	"<td>".$data["cuerpo"][$i]["dPrdFecFin"]."</td>";
					   	$formulario.= 	"<td class='text-center'> <label for='rdCodgio".$i."'>  ".$valEstado." </label> </td>";
					   	$formulario.="</tr>";

				}
					$objResponse->assign("tbodyData","innerHTML",$formulario);
				#Paginado
				    $Paginacion= Paginar($nOriRegistros, $nNumRegMostrar, $nPagRegistro, $nPagAct, $nNumRegExist, 'xajax_Filtrar_Zonas_Pesca', 'xajax.getFormValues(FrmPrincipal)');
				    // $Paginacion= Paginar($nOriRegistros, $nNumRegMostrar, $nPagRegistro, $nPagAct, $nNumRegExist, 'xajax_Filtrar_Pescadores',4);
				    $objResponse->assign("ContenedorPaginado","innerHTML",$Paginacion);
			}else{
			  	$objResponse->assign("tbodyData","innerHTML",$formulario);
			  	$objResponse->assign("ContenedorPaginado","innerHTML",$Paginacion);
			}
			return $objResponse;
		}
	# NUEVO
		function Nuevo_Sector()
		{
			$objResponse = new xajaxResponse();
			#Formulario
			// LLAMAR A LA FUNCION QUE CREA EL FORMULARIO
			$formulario =  Frm_Sector("Insertar_Sector");
			# configurando emergente
				$FrmRpta = FrmEmergente("NUEVO SECTOR", $formulario);
				$objResponse->script("mostrar_emergente();");
				$objResponse->assign("emergente_contenido","innerHTML",$FrmRpta);
				// $objResponse->script("xajax_Combo_Parametro_Option('cboTipoSector_','2031','1');");
				// $objResponse->script("Calendar_Load('dFechaIni');");
				// $objResponse->script("Calendar_Load('dFechaFin');");
				$objResponse->script("Calendar_Rango('dFechaIni', 'dFechaFin');");

			return $objResponse;
		}
	# INSERTAR
		function Insertar_Sector($frm)
		{
			$objResponse = new xajaxResponse();

			$MsjAlter = "";
			$Funcion = "";

			# VALIDACION
				if(empty($frm["txtSector"]))
				{
					$MsjAlter = "Completar Sector.";
				}
				elseif(empty($frm["dFechaIni"]))
				{
					$MsjAlter = "Completar Fecha Inicia";
				}
				elseif(empty($frm["dFechaFin"]))
				{
					$MsjAlter = "Completar Fecha Fin";
				}

			if($MsjAlter=="")
			{
				$cPrdDescripcion = Mayusc($frm["txtSector"] );
				$dFechaIni       = fecha_es_db($frm["dFechaIni"]) ;
				$dFechaFin       = fecha_es_db($frm["dFechaFin"] );
				$cParObservacion = Mayusc($frm["cParObservacion"]) ;

				$objSector       = new ClsSector_Dat();
				$objParametro     = new ClsParametro_Dat();
				$objBeanParametro = new Bean_Parametro() ;
				$objBeanSector   = new Bean_Sector();

				$objBeanSector->setnPrdCodigo(0);
				$objBeanSector->setcPrdDescripcion($cPrdDescripcion);
				$objBeanSector->setdPrdFecInic('-');
				$objBeanSector->setdPrdFecFin('-');
				$objBeanSector->setnPrdTipo(1);

		    	$data = $objSector->Validar_Sector($objBeanSector);

		        if(count($data["cuerpo"]) > 0)
		        {
		            $MsjAlter = "EL NOMBRE DE CAMPAÑA YA SE ENCUENTRA REGISTRADO";
		        }
		        else
		        {
		        	// $AdoRsFecInic =  $objSector->Validar_Sector_by_Fecha(fecha_es_db($frm["dFechaIni"]),$cboTipoSector_) ;
					$objBeanSector->setdPrdFecInic($dFechaIni);
		        	$dataFecha =  $objSector->Validar_Sector_by_Fecha($objBeanSector) ;

		        	// $MsjAlter .= $dataFecha." ".$data["cuerpo"][0]["cPrdDescripcion"] ;
		        	if(count($dataFecha["cuerpo"]) > 0)
		        	{
		        		$cPerDescripcion = $dataFecha["cuerpo"][0]["cPrdDescripcion"] ;
		            	$MsjAlter = "FECHA INICIO SE ENCUENTRA DENTRO DEL RANGO DE CAMPAÑA: ".$cPerDescripcion ;
		        	}else
		        	{
			        	$objBeanSector->setdPrdFecInic($dFechaFin);
			        	$dataFechaFin =  $objSector->Validar_Sector_by_Fecha($objBeanSector) ;
			        	if(count($dataFechaFin["cuerpo"]) > 0)
			        	{
		        			$cPerDescripcion =$dataFechaFin["cuerpo"][0]["cPrdDescripcion"] ;
			            	$MsjAlter = "FECHA FIN SE ENCUENTRA DENTRO  DEL RANGO DE CAMPAÑA: ".$cPerDescripcion ;
			        	}
			        	else
			        	{
			        		// $objBeanSector->setnPrdCodigo(0);
							$objBeanSector->setcPrdDescripcion($cPrdDescripcion);
							$objBeanSector->setdPrdFecInic($dFechaIni);
							$objBeanSector->setdPrdFecFin($dFechaFin);
							$objBeanSector->setnPrdTipo(1);
							$objBeanSector->setnPrdEstado(2);

			        		#	Registro datos de Sector
			        		try
				        	{	# iniciamos la transaccion
				        		$objSector->beginTransaction() ;
				        		$dataSector = $objSector->Set_Sector($objBeanSector);
				        		$nParCodigo = $dataSector["cuerpo"][0][0] ;
				        		// $nParCodigo = $dataSector["cuerpo"][0]["nParCodigo"] ;

				        		// $objResponse->alert($nParCodigo);
				        		# REGISTRAR EL Sector COMO PARAMETRO
							  	$objBeanParametro->setnParCodigo($nParCodigo) ;
							  	$objBeanParametro->setnParClase(2001) ;
								$objBeanParametro->setcParNombre($cParObservacion);
								$objBeanParametro->setcParDescripcion($cPrdDescripcion) ;

				        		$data = $objParametro->Reg_Parametro($objBeanParametro);
								Insertar_Transaccion(1,"NUEVO Sector: nParCodigo : ".$nParCodigo." - nParClase : 2001 - cParDescripcion : ".$cPrdDescripcion,"") ;
								# si todo a tendido exito
				        		$objSector->commit();
				        		$Funcion = "xajax_Listar_Sectores(0,20,1,1); ocultar_emergente();";

				        	}catch(Exception $e)
				        	{
				        		# si ha habido algun error
				        		$objSector->rollback();
				        		$MsjAlter =  "Error de registro.";
				        	}

			        	}
			        }
		         }

		        // $MsjAlter .= $data ;
			}
			$objResponse->assign("labelMsj","innerHTML",$MsjAlter);
			$objResponse->script($Funcion);
			return $objResponse;
		}

	# EDITAR
		function Editar_Sector($frm)
		{
			$objResponse = new xajaxResponse();
			#Formulario

			$formulario = "";
			$nPrdTipo = "";
					if (!empty($frm["rdCodigo"])) {
						$arr = explode('-', $frm["rdCodigo"]);
						$nParCodigo = $arr[0];
						$nEstado    = $arr[1];

						$objSector       = new ClsSector_Dat();
						$objBeanSector   = new Bean_Sector();
						$objParametro     = new ClsParametro_Dat();
						$objBeanParametro = new Bean_Parametro() ;

						$objBeanSector->setnPrdCodigo($nParCodigo);
						$objBeanSector->setcPrdDescripcion('-');
						$objBeanSector->setdPrdFecInic('-');
						$objBeanSector->setdPrdFecFin('-');
						// $objBeanSector->setnPrdTipo(1);

				    	$data = $objSector->Validar_Sector($objBeanSector);
				    	// $objResponse->alert(($data["cuerpo"][0]["nPrdCodigo"])) ;
				    		$nnParCodigo     = $data["cuerpo"][0]["nPrdCodigo"];
							$cParDescripcion = Mayusc($data["cuerpo"][0]["cPrdDescripcion"]);
							$dPrdFecInic     = fecha_BD_Barra($data["cuerpo"][0]["dPrdFecInic"]);
							$dPrdFecFin      = fecha_BD_Barra($data["cuerpo"][0]["dPrdFecFin"]);
							$nPrdTipo        = $data["cuerpo"][0]["nPrdTipo"];


							$objBeanParametro->setnParCodigo($nParCodigo) ;
						  	$objBeanParametro->setnParClase(2001) ;
							$dataParametro = $objParametro->Buscar_Parametro($objBeanParametro) ;
							$cParObservacion = $dataParametro["cuerpo"][0]["cParNombre"] ;

							$formulario .= Frm_Sector("Actualizar_Sector",$nnParCodigo,$cParDescripcion,$dPrdFecInic,$dPrdFecFin , $cParObservacion);
					}
					else{
						$formulario .="<div class='divContenedor'>";
		    			$formulario .=	"<div class='divFila' style='text-align:center; margin-top:10px;'>";
					    $formulario .= 		"<label style='color:#000000; font-family:Arial; font-size:12px; font-weight:bold;'>¡SELECCIONE UN REGISTRO DE LA LISTA!</label>";
					    $formulario .=	"</div>";
					    $formulario .="</div>";
					}

			# configurando emergente
				$FrmRpta = FrmEmergente("ACTUALIZAR Sector", $formulario);
				$objResponse->script("mostrar_emergente();");
				// $objResponse->assign("emergente","style.height","180px");
				$objResponse->assign("emergente_contenido","innerHTML",$FrmRpta);
				$objResponse->script("Calendar_Rango('dFechaIni', 'dFechaFin');");


			return $objResponse;
		}

	#ACTUALIZAR
		function Actualizar_Sector($frm)
		{
			$objResponse = new xajaxResponse();

			$MsjAlter = "";
			$Funcion = "";

			if(empty($frm["txtSector"]))
			{
				$MsjAlter = "Completar Sector.";
			}
			elseif(empty($frm["dFechaIni"]))
			{
				$MsjAlter = "Completar Fecha Inicia";
			}
			elseif(empty($frm["dFechaFin"]))
			{
				$MsjAlter = "Completar Fecha Fin";
			}

			if($MsjAlter==""){

					$nParSector     = $frm["nParSector"];
					$cPrdDescripcion = Mayusc($frm["txtSector"] );
					$dFechaIni       = fecha_es_db($frm["dFechaIni"]) ;
					$dFechaFin       = fecha_es_db($frm["dFechaFin"] );
					$cParObservacion = Mayusc($frm["cParObservacion"]) ;

					$objBeanSector   = new Bean_Sector();
					$objBeanSector->setnPrdCodigo($nParSector);
					$objBeanSector->setcPrdDescripcion($cPrdDescripcion);
					$objBeanSector->setdPrdFecInic($dFechaIni);
					$objBeanSector->setdPrdFecFin($dFechaFin);
					$objBeanSector->setnPrdTipo(1);

					$objSector       = new ClsSector_Dat();
					# REGISTRAR EL Sector COMO PARAMETRO
					$objParametro     = new ClsParametro_Dat();
					$objBeanParametro = new Bean_Parametro() ;
				  	$objBeanParametro->setnParCodigo($nParSector) ;
				  	$objBeanParametro->setnParClase(2001) ;
					$objBeanParametro->setcParNombre($cParObservacion);
					$objBeanParametro->setcParDescripcion($cPrdDescripcion) ;
				try
	        	{	# iniciamos la transaccion
	        		$objSector->beginTransaction() ;
	        		$data = $objSector->Upd_Sector($objBeanSector);

	        		$objParametro->Upd_Parametro($objBeanParametro);
					Insertar_Transaccion(2,"ACTUALIZO Sector: nParCodigo : ".$nParSector." - nParClase : 2001 - cParDescripcion : ".$cPrdDescripcion,"") ;

					# si todo a tendido exito
	        		$objSector->commit();
	        		$Funcion = "xajax_Listar_Sectores(0,20,1,1); ocultar_emergente();";

	        	}catch(Exception $e)
	        	{
	        		# si ha habido algun error
	        		$objSector->rollback();
	        		$MsjAlter = "Error de registro: " ;
	        	}
			}


			$objResponse->assign("labelMsj","innerHTML",$MsjAlter);
			$objResponse->script($Funcion);
			return $objResponse;
		}

	#MOSTRAR ELIMINAR
		function Eliminar_Sector($frm)
		{
			$objResponse = new xajaxResponse();

			if(empty($frm["rdCodigo"]))
			{
				$rdCodigo = "";
			}
			else
			{
				$arr = explode('-', $frm["rdCodigo"]);
				$rdCodigo = $arr[0];
				$nEstado  = $arr[1];
			}


			$formulario = FrmEliminar("ConfEliminar_Sector",$rdCodigo);

			$FrmRpta = FrmEmergente("ELIMINAR Sector", $formulario);
			$objResponse->script("mostrar_emergente();");
			$objResponse->assign("emergente","style.height","130px");
			$objResponse->assign("emergente_contenido","innerHTML",utf8_encode($FrmRpta));

			return $objResponse;
		}

	#CONFIRMAR ELIMINACION
		function ConfEliminar_Sector($nParPerCodigo , $nEstado = 0 )
		{
			$objResponse = new xajaxResponse();
			$objSector = new ClsSector_Dat();

			$MsjAlter = "&nbsp;";
			$Funcion = "";

			$objSector       = new ClsSector_Dat();
			$objBeanSector   = new Bean_Sector();
			$objBeanSector->setnPrdCodigo($nParPerCodigo);
			$objBeanSector->setnPrdEstado($nEstado);

			try
	    	{	# iniciamos la transaccion
	    		$objSector->beginTransaction() ;

				// $AdoPrd = $objSector->Upd_Sector_Estado($nParCodigo , $nEstado) ;

	    		$data = $objSector->Upd_Sector_Estado($objBeanSector);
	    		if($nEstado == 0)
	    		{
	    			# Actulizar estado del paramentro  como Sector
					$objParametro     = new ClsParametro_Dat();
					$objBeanParametro = new Bean_Parametro() ;
				  	$objBeanParametro->setnParCodigo($nParPerCodigo) ;
				  	$objBeanParametro->setnParClase(2001) ;
					$objBeanParametro->setnParTipo($nEstado);

	    			$objParametro->Upd_Parametro_Estado($objBeanParametro);
	    		}
				Insertar_Transaccion(3,"ELIMNO Sector: nParCodigo : ".$nParPerCodigo." - nParClase : 2001 - cParDescripcion : ".$cPrdDescripcion,"") ;

				# si todo a tendido exito
	    		$objSector->commit();

	    		$Funcion = "xajax_Listar_Sectores(0,20,1,1); ocultar_emergente();";

	    	}catch(Exception $e)
	    	{
	    		# si ha habido algun error
	    		$objSector->rollback();
	    		$MsjAlter = "Error de registro: ";
	    		// $MsjAlter = "Error de registro: ". $e->getMessage() ;
	    	}

			$objResponse->assign("labelMsj","innerHTML",$MsjAlter);
			$objResponse->script($Funcion);
			return $objResponse;
		}

	#FRM NUEVO
		function Frm_Sector($funcion="",$nParCodigo="",$cPrdDescripcion="",$fechaini="",$fechafin="" , $Observacion ="")
		{
				$formulario ="";
			    $formulario .='
			    	<div class="vform vformContenedor">
			    		<fieldset class="c12">
				    		<input type="hidden" name="nParSector" value="'.$nParCodigo.'" />
					    	<fieldset class="c6">
					    		<label for="Departamento_">Departamento</label>
					    		<select name="Departamento_" id="Departamento_"></select>
					    	</fieldset>
					    	<fieldset class="c6">
					    		<label for="Provincia_">Provincia</label>
					    		<select name="Provincia_" id="Provincia_"></select>
					    	</fieldset>
					    	<fieldset class="c6">
					    		<label for="Distrito_">Distrito</label>
					    		<select name="Distrito_" id="Distrito_"></select>
					    	</fieldset>
							'.InputTextPre("Sector","txtSector","INGRESE Sector ",$cPrdDescripcion,"icon-text", "c6 ").'
						</fieldset>
						'.botonRegistrar($funcion).'
					</div>
			    ';
				return $formulario;
		}

	# FUNCION DE REPORTES EN EXCEL
?>