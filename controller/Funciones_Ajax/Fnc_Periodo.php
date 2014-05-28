<?php

		$xajax->registerFunction("Listar_Periodos");
		$xajax->registerFunction("Filtrar_Periodo");
		$xajax->registerFunction("Nuevo_Periodo");
		$xajax->registerFunction("Insertar_Periodo");
		$xajax->registerFunction("Editar_Periodo");
		$xajax->registerFunction("Actualizar_Periodo");
		$xajax->registerFunction("Eliminar_Periodo");
		$xajax->registerFunction("ConfEliminar_Periodo");
		$xajax->registerFunction("Cerrar_Periodo");
		$xajax->registerFunction("ConfCerrar_Periodo");
		$xajax->registerFunction("Reportes_Periodo");

	# LISTAR
		function Listar_Periodos($nOriRegistros, $nNumRegMostrar, $nPagRegistro, $nPagAct)
		{
			    	$objResponse = new xajaxResponse();

			   		$FuncionSearch = 'xajax_Filtrar_Periodo('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.',  xajax.getFormValues(FrmPrincipal) );';
					$FuncionEnter = ' if(event.keyCode == 13){'.$FuncionSearch.'} ';

					// onkeyup="xajax_Filtrar_Periodo('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.', xajax.getFormValues(FrmPrincipal) );"
					 // onsearch="xajax_Filtrar_Periodo('.$nOriRegistros.', '.$nNumRegMostrar.', '.$nPagRegistro.', '.$nPagAct.', xajax.getFormValues(FrmPrincipal) );"

					$formulario ='';
					$formulario .= '<div class="ContenedorTable">

							<table style="width:100%;">
								<tr class="title-table text-left" >
									<th  style="width:10%;">&nbsp; CÓDIGO </th>
									<th  style="width:40%;">&nbsp; PERIODO </th>
									<th  style="width:20%;">&nbsp; FECHA INICIO </th>
									<th  style="width:20%;">&nbsp; FECHA FIN</th>
									<th  style="width:10%;">&nbsp; ESTADO </th>
								</tr>
						    	<tr class="vform">

									<td>
									    <input  type="search" disabled="disabled" name="" placeholder="" />
									</td>
									<td>
						    		    <input type="search" name="cParDescripcion_" id="cParDescripcion_" placeholder="Buscar Periodo"
						    		    onkeyup="'.$FuncionEnter.'"
							    		onsearch="'.$FuncionSearch.'" />
									</td>
									<td>
									    <input  type="search" disabled="disabled" name="" placeholder="" />
									</td>
									<td>
									    <input  type="search" disabled="disabled" name="" placeholder="" />
									</td>

									<td>
									    <input  type="search" disabled="disabled" name="" placeholder="" />
									</td>
								</tr>

								<tbody id="tbodyData" class="table table-hover table-border">

								</tbody>
						    </table>
						    </div>';
				    $objResponse->assign("ContenedorPrincipal","innerHTML",$formulario);
				    $objResponse->script("xajax_Filtrar_Periodo('".$nOriRegistros."', '".$nNumRegMostrar."', '".$nPagRegistro."', '".$nPagAct."',  xajax.getFormValues(FrmPrincipal) );");
				return $objResponse;
		}

	#LISTAR LOS REGISTROS DE BD
		function Filtrar_Periodo($nOriRegistros, $nNumRegMostrar, $nPagRegistro, $nPagAct,$frm)
		{
			$objResponse    = new xajaxResponse();
			$objPeriodo     = new ClsPeriodo_Dat();
			$objBeanPeriodo = new Bean_Periodo();

			if(empty($frm["cParDescripcion_"]))
			{
				 $cParDescripcion="-";
			}else{
				$cParDescripcion=$frm["cParDescripcion_"];
			}


	    	$objBeanPeriodo->setnOriRegistros(0) ;
			$objBeanPeriodo->setnNumRegMostrar(0) ;
			$objBeanPeriodo->setnPagRegistro(0) ;//que no pagine
			$objBeanPeriodo->setcPrdDescripcion($cParDescripcion) ;

		    $AdoRs =$objPeriodo->Get_Sel_Periodos($objBeanPeriodo);

	   		//  #Capturar el número de registros
	    	$nNumRegExist = count($AdoRs["cuerpo"]);
	    	// $nNumRegExist = $AdoRs->num_rows;

	    	 #Filtrar registros deacuerdo al origen de datos y y viene paginados
		    $objBeanPeriodo->setnOriRegistros($nOriRegistros) ;
			$objBeanPeriodo->setnNumRegMostrar($nNumRegMostrar) ;
			$objBeanPeriodo->setnPagRegistro($nPagRegistro) ;

		    #Filtrar registrar
	    	$data =$objPeriodo->Get_Sel_Periodos($objBeanPeriodo);

			$formulario= "";
			$Paginacion="";
			if (count($data["cuerpo"]) > 0)
			{
				# se recorre el array y se extraer cada uno de los registros
				for ($i = 0; $i < count($data["cuerpo"]); $i++)
	            {

						$nEstado =$data["cuerpo"][$i]["nPrdEstado"]  ;

						if($nEstado == 1 )
						{
							// Radio_Habilidatar(\'rdCodgio'.$i.'\')  ;
							$valEstado = ' <a href="#" title="Aperturar Periodo" onclick=" js_checked(\'rdCodigo'.$i.'\', true) ;xajax_Cerrar_Periodo(xajax.getFormValues(FrmPrincipal));">
											<span class="icon-check"></span> </a> ' ;
										}
						elseif($nEstado == 2 )
						{
							$valEstado = '<a href="#" title="Cerrar Periodo"  onclick="js_checked(\'rdCodigo'.$i.'\', true) ; xajax_Cerrar_Periodo(xajax.getFormValues(FrmPrincipal));" >
										  <span class="icon-lock"></span>  </a>' ;
						}
						$formulario.="<tr id='tr".$i."' onclick=\"js_seleccionar_fila(".$i.");\">";
	                    $formulario.= 	"<td>";
	                    $formulario.=      "  <input class='inputRadio' type='radio' value='".$data["cuerpo"][$i]["nPrdCodigo"]."-".$nEstado ."' name='rdCodigo' id='rdCodigo".$i."'/>";
	                    $formulario.=          substr("0000".$data["cuerpo"][$i]["nPrdCodigo"],-5);
	                    $formulario.=  	"</td>";
					   	$formulario.= 	"<td>".$data["cuerpo"][$i]["cPrdDescripcion"]."</td>";
					   	$formulario.= 	"<td>".$data["cuerpo"][$i]["dPrdFecInic"]."</td>";
					   	$formulario.= 	"<td>".$data["cuerpo"][$i]["dPrdFecFin"]."</td>";
					   	// $formulario.= 	"<td>".$data["cuerpo"][$i]["cParDescripcion"]."</td>";
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
		function Nuevo_Periodo()
		{
			$objResponse = new xajaxResponse();
			#Formulario
			// LLAMAR A LA FUNCION QUE CREA EL FORMULARIO
			$formulario =  Frm_Periodo("Insertar_Periodo");
			# configurando emergente
				$FrmRpta = FrmEmergente("NUEVO PERIODO", $formulario);
				$objResponse->script("mostrar_emergente();");
				// $objResponse->assign("emergente","style.height","180px");
				$objResponse->assign("emergente_contenido","innerHTML",$FrmRpta);
				// $objResponse->script("xajax_Combo_Parametro_Option('cboTipoPeriodo_','2031','1');");
				// $objResponse->script("Calendar_Load('dFechaIni');");
				// $objResponse->script("Calendar_Load('dFechaFin');");
				$objResponse->script("Calendar_Rango('dFechaIni', 'dFechaFin');");



			return $objResponse;
		}
	# INSERTAR
		function Insertar_Periodo($frm)
		{
			$objResponse = new xajaxResponse();

			$MsjAlter = "";
			$Funcion = "";

			# VALIDACION
				if(empty($frm["txtPeriodo"]))
				{
					$MsjAlter = "Completar Periodo.";
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
				$cPrdDescripcion = Mayusc($frm["txtPeriodo"] );
				$dFechaIni       = fecha_es_db($frm["dFechaIni"]) ;
				$dFechaFin       = fecha_es_db($frm["dFechaFin"] );
				$cParObservacion = Mayusc($frm["cParObservacion"]) ;

				$objPeriodo       = new ClsPeriodo_Dat();
				$objParametro     = new ClsParametro_Dat();
				$objBeanParametro = new Bean_Parametro() ;
				$objBeanPeriodo   = new Bean_Periodo();

				$objBeanPeriodo->setnPrdCodigo(0);
				$objBeanPeriodo->setcPrdDescripcion($cPrdDescripcion);
				$objBeanPeriodo->setdPrdFecInic('-');
				$objBeanPeriodo->setdPrdFecFin('-');
				$objBeanPeriodo->setnPrdTipo(1);

		    	$data = $objPeriodo->Validar_Periodo($objBeanPeriodo);

		        if(count($data["cuerpo"]) > 0)
		        {
		            $MsjAlter = "EL NOMBRE DE CAMPAÑA YA SE ENCUENTRA REGISTRADO";
		        }
		        else
		        {
		        	// $AdoRsFecInic =  $objPeriodo->Validar_Periodo_by_Fecha(fecha_es_db($frm["dFechaIni"]),$cboTipoPeriodo_) ;
					$objBeanPeriodo->setdPrdFecInic($dFechaIni);
		        	$dataFecha =  $objPeriodo->Validar_Periodo_by_Fecha($objBeanPeriodo) ;

		        	// $MsjAlter .= $dataFecha." ".$data["cuerpo"][0]["cPrdDescripcion"] ;
		        	if(count($dataFecha["cuerpo"]) > 0)
		        	{
		        		$cPerDescripcion = $dataFecha["cuerpo"][0]["cPrdDescripcion"] ;
		            	$MsjAlter = "FECHA INICIO SE ENCUENTRA DENTRO DEL RANGO DE CAMPAÑA: ".$cPerDescripcion ;
		        	}else
		        	{
			        	$objBeanPeriodo->setdPrdFecInic($dFechaFin);
			        	$dataFechaFin =  $objPeriodo->Validar_Periodo_by_Fecha($objBeanPeriodo) ;
			        	if(count($dataFechaFin["cuerpo"]) > 0)
			        	{
		        			$cPerDescripcion =$dataFechaFin["cuerpo"][0]["cPrdDescripcion"] ;
			            	$MsjAlter = "FECHA FIN SE ENCUENTRA DENTRO  DEL RANGO DE CAMPAÑA: ".$cPerDescripcion ;
			        	}
			        	else
			        	{
			        		// $objBeanPeriodo->setnPrdCodigo(0);
							$objBeanPeriodo->setcPrdDescripcion($cPrdDescripcion);
							$objBeanPeriodo->setdPrdFecInic($dFechaIni);
							$objBeanPeriodo->setdPrdFecFin($dFechaFin);
							$objBeanPeriodo->setnPrdTipo(1);
							$objBeanPeriodo->setnPrdEstado(2);

			        		#	Registro datos de Periodo
			        		try
				        	{	# iniciamos la transaccion
				        		$objPeriodo->beginTransaction() ;
				        		$dataPeriodo = $objPeriodo->Set_Periodo($objBeanPeriodo);
				        		$nParCodigo = $dataPeriodo["cuerpo"][0][0] ;
				        		// $nParCodigo = $dataPeriodo["cuerpo"][0]["nParCodigo"] ;

				        		// $objResponse->alert($nParCodigo);
				        		# REGISTRAR EL PERIODO COMO PARAMETRO
							  	$objBeanParametro->setnParCodigo($nParCodigo) ;
							  	$objBeanParametro->setnParClase(2001) ;
								$objBeanParametro->setcParNombre($cParObservacion);
								$objBeanParametro->setcParDescripcion($cPrdDescripcion) ;

				        		$data = $objParametro->Reg_Parametro($objBeanParametro);
								Insertar_Transaccion(1,"NUEVO PERIODO: nParCodigo : ".$nParCodigo." - nParClase : 2001 - cParDescripcion : ".$cPrdDescripcion,"") ;
								# si todo a tendido exito
				        		$objPeriodo->commit();
				        		$Funcion = "xajax_Listar_Periodos(0,20,1,1); ocultar_emergente();";

				        	}catch(Exception $e)
				        	{
				        		# si ha habido algun error
				        		$objPeriodo->rollback();
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
		function Editar_Periodo($frm)
		{
			$objResponse = new xajaxResponse();
			#Formulario

			$formulario = "";
			$nPrdTipo = "";
					if (!empty($frm["rdCodigo"])) {
						$arr = explode('-', $frm["rdCodigo"]);
						$nParCodigo = $arr[0];
						$nEstado    = $arr[1];

						$objPeriodo       = new ClsPeriodo_Dat();
						$objBeanPeriodo   = new Bean_Periodo();
						$objParametro     = new ClsParametro_Dat();
						$objBeanParametro = new Bean_Parametro() ;

						$objBeanPeriodo->setnPrdCodigo($nParCodigo);
						$objBeanPeriodo->setcPrdDescripcion('-');
						$objBeanPeriodo->setdPrdFecInic('-');
						$objBeanPeriodo->setdPrdFecFin('-');
						// $objBeanPeriodo->setnPrdTipo(1);

				    	$data = $objPeriodo->Validar_Periodo($objBeanPeriodo);
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

							$formulario .= Frm_Periodo("Actualizar_Periodo",$nnParCodigo,$cParDescripcion,$dPrdFecInic,$dPrdFecFin , $cParObservacion);
					}
					else{
						$formulario .="<div class='divContenedor'>";
		    			$formulario .=	"<div class='divFila' style='text-align:center; margin-top:10px;'>";
					    $formulario .= 		"<label style='color:#000000; font-family:Arial; font-size:12px; font-weight:bold;'>¡SELECCIONE UN REGISTRO DE LA LISTA!</label>";
					    $formulario .=	"</div>";
					    $formulario .="</div>";
					}

			# configurando emergente
				$FrmRpta = FrmEmergente("ACTUALIZAR PERIODO", $formulario);
				$objResponse->script("mostrar_emergente();");
				// $objResponse->assign("emergente","style.height","180px");
				$objResponse->assign("emergente_contenido","innerHTML",$FrmRpta);
				$objResponse->script("Calendar_Rango('dFechaIni', 'dFechaFin');");


			return $objResponse;
		}

	#ACTUALIZAR
		function Actualizar_Periodo($frm)
		{
			$objResponse = new xajaxResponse();

			$MsjAlter = "";
			$Funcion = "";

			if(empty($frm["txtPeriodo"]))
			{
				$MsjAlter = "Completar Periodo.";
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

					$nParPeriodo     = $frm["nParPeriodo"];
					$cPrdDescripcion = Mayusc($frm["txtPeriodo"] );
					$dFechaIni       = fecha_es_db($frm["dFechaIni"]) ;
					$dFechaFin       = fecha_es_db($frm["dFechaFin"] );
					$cParObservacion = Mayusc($frm["cParObservacion"]) ;

					$objBeanPeriodo   = new Bean_Periodo();
					$objBeanPeriodo->setnPrdCodigo($nParPeriodo);
					$objBeanPeriodo->setcPrdDescripcion($cPrdDescripcion);
					$objBeanPeriodo->setdPrdFecInic($dFechaIni);
					$objBeanPeriodo->setdPrdFecFin($dFechaFin);
					$objBeanPeriodo->setnPrdTipo(1);

					$objPeriodo       = new ClsPeriodo_Dat();
					# REGISTRAR EL PERIODO COMO PARAMETRO
					$objParametro     = new ClsParametro_Dat();
					$objBeanParametro = new Bean_Parametro() ;
				  	$objBeanParametro->setnParCodigo($nParPeriodo) ;
				  	$objBeanParametro->setnParClase(2001) ;
					$objBeanParametro->setcParNombre($cParObservacion);
					$objBeanParametro->setcParDescripcion($cPrdDescripcion) ;
				try
	        	{	# iniciamos la transaccion
	        		$objPeriodo->beginTransaction() ;
	        		$data = $objPeriodo->Upd_Periodo($objBeanPeriodo);

	        		$objParametro->Upd_Parametro($objBeanParametro);
					Insertar_Transaccion(2,"ACTUALIZO PERIODO: nParCodigo : ".$nParPeriodo." - nParClase : 2001 - cParDescripcion : ".$cPrdDescripcion,"") ;

					# si todo a tendido exito
	        		$objPeriodo->commit();
	        		$Funcion = "xajax_Listar_Periodos(0,20,1,1); ocultar_emergente();";

	        	}catch(Exception $e)
	        	{
	        		# si ha habido algun error
	        		$objPeriodo->rollback();
	        		$MsjAlter = "Error de registro: " ;
	        	}
			}


			$objResponse->assign("labelMsj","innerHTML",$MsjAlter);
			$objResponse->script($Funcion);
			return $objResponse;
		}

	#MOSTRAR ELIMINAR
		function Eliminar_Periodo($frm)
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


			$formulario = FrmEliminar("ConfEliminar_Periodo",$rdCodigo);

			$FrmRpta = FrmEmergente("ELIMINAR PERIODO", $formulario);
			$objResponse->script("mostrar_emergente();");
			$objResponse->assign("emergente","style.height","130px");
			$objResponse->assign("emergente_contenido","innerHTML",utf8_encode($FrmRpta));

			return $objResponse;
		}
	# CERRAR PERIODO
		function Cerrar_Periodo($frm)
		{
			$objResponse = new xajaxResponse();
			$nEstado = "" ;
			$mensaje = "";
			$titulo  = "PERIODO";
			// $objResponse->alert($frm);

			if(empty($frm["rdCodigo"]))
			{
				$rdCodigo = "";
			}
			else
			{

					$arr = explode('-', $frm["rdCodigo"]);
					$nEstado  = $arr[1];

					if($nEstado == 1 ){
						$mensaje = "¿Esta Seguro de Cerrar Campaña ?";
						$titulo  = "CERRAR CAMPAÑA";
						$rdCodgio = $arr[0]."','2";
					}
					elseif($nEstado == 2 ){
						$mensaje = "¿Esta Seguro de Aperturar Campaña ?";
						$titulo  = "APERTURAR CAMPAÑA";
						$rdCodgio = $arr[0]."','1";
					}
			}

			$formulario = FrmConfirm("ConfCerrar_Periodo",$rdCodgio, $mensaje );

			$FrmRpta = FrmEmergente($titulo, $formulario);
			$objResponse->script("mostrar_emergente();");
			$objResponse->assign("emergente","style.height","130px");
			$objResponse->assign("emergente_contenido","innerHTML",$FrmRpta);

			return $objResponse;
		}

	#CONFIRMAR ELIMINACION
		function ConfEliminar_Periodo($nParPerCodigo , $nEstado = 0 )
		{
			$objResponse = new xajaxResponse();
			$objPeriodo = new ClsPeriodo_Dat();

			$MsjAlter = "&nbsp;";
			$Funcion = "";

			$objPeriodo       = new ClsPeriodo_Dat();
			$objBeanPeriodo   = new Bean_Periodo();
			$objBeanPeriodo->setnPrdCodigo($nParPerCodigo);
			$objBeanPeriodo->setnPrdEstado($nEstado);

			try
	    	{	# iniciamos la transaccion
	    		$objPeriodo->beginTransaction() ;

				// $AdoPrd = $objPeriodo->Upd_Periodo_Estado($nParCodigo , $nEstado) ;

	    		$data = $objPeriodo->Upd_Periodo_Estado($objBeanPeriodo);
	    		if($nEstado == 0)
	    		{
	    			# Actulizar estado del paramentro  como periodo
					$objParametro     = new ClsParametro_Dat();
					$objBeanParametro = new Bean_Parametro() ;
				  	$objBeanParametro->setnParCodigo($nParPerCodigo) ;
				  	$objBeanParametro->setnParClase(2001) ;
					$objBeanParametro->setnParTipo($nEstado);

	    			$objParametro->Upd_Parametro_Estado($objBeanParametro);
	    		}
				Insertar_Transaccion(3,"ELIMNO PERIODO: nParCodigo : ".$nParPerCodigo." - nParClase : 2001 - cParDescripcion : ".$cPrdDescripcion,"") ;

				# si todo a tendido exito
	    		$objPeriodo->commit();

	    		$Funcion = "xajax_Listar_Periodos(0,20,1,1); ocultar_emergente();";

	    	}catch(Exception $e)
	    	{
	    		# si ha habido algun error
	    		$objPeriodo->rollback();
	    		$MsjAlter = "Error de registro: ";
	    		// $MsjAlter = "Error de registro: ". $e->getMessage() ;
	    	}

			$objResponse->assign("labelMsj","innerHTML",$MsjAlter);
			$objResponse->script($Funcion);
			return $objResponse;
		}

	#CONFIRMAR ELIMINACION
		function ConfCerrar_Periodo($nParPerCodigo , $nEstado = 0 )
		{
			$objResponse = new xajaxResponse();

			$MsjAlter = "&nbsp;";
			$Funcion = "";

			$objPeriodo       = new ClsPeriodo_Dat();
			$objBeanPeriodo   = new Bean_Periodo();
			$objBeanPeriodo->setnPrdCodigo($nParPerCodigo);
			$objBeanPeriodo->setnPrdEstado($nEstado);

			try
	    	{	# iniciamos la transaccion
	    		$objPeriodo->beginTransaction() ;

	    		$data = $objPeriodo->Upd_Periodo_Estado($objBeanPeriodo);
				Insertar_Transaccion(4,"CERRO Y/O APERTURO PERIODO: nParCodigo : ".$nParPerCodigo." - nParClase : 2001 - cParDescripcion : ".$cPrdDescripcion,"") ;

				# si todo a tendido exito
	    		$objPeriodo->commit();

	    		$Funcion = "xajax_Listar_Periodos(0,20,1,1); ocultar_emergente();";

	    	}catch(Exception $e)
	    	{
	    		# si ha habido algun error
	    		$objPeriodo->rollback();
	    		// $MsjAlter = "Error de registro: ";
	    		$MsjAlter = "Error de registro: ". $e->getMessage() ;
	    	}

			$objResponse->assign("labelMsj","innerHTML",$MsjAlter);
			$objResponse->script($Funcion);
			return $objResponse;
		}

	#FRM NUEVO / ACTUALIZAR para registrar cboTipoPeriodo1_ = periodo academico
		function Frm_Periodo($funcion="",$nParCodigo="",$cPrdDescripcion="",$fechaini="",$fechafin="" , $Observacion ="")
		{
				$formulario ="";
			    $formulario .='
			    	<div class="vform vformContenedor">
			    		<fieldset class="c12">
			    			<input type="hidden" name="nParPeriodo" value="'.$nParCodigo.'" />
							'.InputTextPre("PERIODO ","txtPeriodo","INGRESE PERIODO ",$cPrdDescripcion,"icon-text", "c12 space-min-left" , "c12").'
							'.InputTextPre("FECHA INICIO","dFechaIni","dd/mm/yyyy",$fechaini,"icon-calendar" ).'
							'.InputTextPre("FECHA FIN","dFechaFin","dd/mm/yyyy",$fechafin,"icon-calendar" ).'
							'.InputTextPre("Observación","cParObservacion","Observación",$Observacion ,"icon-text", "c12 space-min-left" , "c12").'

						</fieldset>
						'.botonRegistrar($funcion).'
					</div>
			    ';
				return $formulario;
		}

	# FUNCION DE REPORTES EN EXCEL
		/*function Reportes_Periodo($frm="")
		{
				$objResponse = new xajaxResponse();

				$objPeriodo = new ClsPeriodo_Dat();
    			$AdoRs =$objPeriodo->Get_Listado_Periodos(0,0,0,'-');

				$objPHPExcel= new PHPExcel();

				$tituloReporte   = utf8_encode( "LISTA DE PERIODOS");
				$titulosColumnas = array('NUM', 'CÓDIGO', 'PERIODO',"FECHA INICIO" , "FECHA FIN", "ESTADO");

				$objPHPExcel->setActiveSheetIndex(0)
		        		    ->mergeCells('A1:F1');

				$objPHPExcel->setActiveSheetIndex(0)
							->setCellValue('A1',$tituloReporte)
		        		    ->setCellValue('A2',  $titulosColumnas[0])
		        		    ->setCellValue('B2',  $titulosColumnas[1])
		        		    ->setCellValue('C2',  $titulosColumnas[2])
		        		    ->setCellValue('D2',  $titulosColumnas[3])
		        		    ->setCellValue('E2',  $titulosColumnas[4])
		        		    ->setCellValue('F2',  $titulosColumnas[5]) ;

	            $i = 3;
				while ($row = $AdoRs->fetch_array()) {

					$nEstado = $row["nPrdEstado"] ;
					if($nEstado     == 1 ) {$valEstado = "APERTURADO" ;}
					elseif($nEstado == 2 ) {$valEstado = "CERRADO" ;}

					$objPHPExcel->setActiveSheetIndex(0)
		        		    ->setCellValue('A'.$i,   $i-2)
				            ->setCellValue('B'.$i, substr($row['nPrdEstado'],-4))
				            ->setCellValue('C'.$i,  $row['cPrdDescripcion'])
				            ->setCellValue('D'.$i,  $row['dPrdFecInic'])
		        		    ->setCellValue('E'.$i,  $row['dPrdFecFin'])
		        		    ->setCellValue('F'.$i,  $valEstado);
							$i++;
				}

				$estiloTituloReporte = array(
		        	'font' => array(
			        	'name'      => 'Agency FB',
		    	        'bold'      => true,
		        	    'italic'    => false,
		                'strike'    => false,
		               	'size' =>14,
			            	'color'   => array(
		    	            	'rgb' => 'FFFFFF'
		        	       	)
		            ),
			        'fill' => array(
						'type'	=> PHPExcel_Style_Fill::FILL_SOLID,
						'color'	=> array('argb' => 'FF220835')
					),
		            'borders' => array(
		               	'allborders' => array(
		                	'style' => PHPExcel_Style_Border::BORDER_NONE
		               	)
		            ),
		            'alignment' =>  array(
		        			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
		        			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
		        			'rotation'   => 0,
		        			'wrap'          => TRUE
		    		)
		        );

				$estiloTituloColumnas = array(
		            'font' => array(
		                'name'      => 'Agency FB',
		                'bold'      => true,
		                'color'     => array(
		                    'rgb' => '000000'
		                )
		            ),
		            'fill' 	=> array(
						'type'		=> PHPExcel_Style_Fill::FILL_GRADIENT_LINEAR,
						'rotation'   => 90,
		        		'startcolor' => array(
		            		'rgb' => 'FDFCFE'
		        		),
		        		'endcolor'   => array(
		            		'argb' => 'F4F3F5'
		        		)
					),
		            'borders' => array(
		            	'top'     => array(
		                    'style' => PHPExcel_Style_Border::BORDER_MEDIUM ,
		                    'color' => array(
		                        'rgb' => '143860'
		                    )
		                ),
		                'bottom'     => array(
		                    'style' => PHPExcel_Style_Border::BORDER_MEDIUM ,
		                    'color' => array(
		                        'rgb' => '143860'
		                    )
		                )
		            ),
					'alignment' =>  array(
		        			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
		        			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
		        			'wrap'          => TRUE
		    		));

				$estiloInformacion = new PHPExcel_Style();


				$objPHPExcel->getActiveSheet()->getStyle('A1:F1')->applyFromArray($estiloTituloReporte);
				$objPHPExcel->getActiveSheet()->getStyle('A2:F2')->applyFromArray($estiloTituloColumnas);


				for($i = 'A'; $i <= 'F'; $i++){
					$objPHPExcel->setActiveSheetIndex(0)
						->getColumnDimension($i)->setAutoSize(TRUE);
				}

				// Se asigna el nombre a la hoja
				$objPHPExcel->getActiveSheet()->setTitle('Periodos');

				// Se activa la hoja para que sea la que se muestre cuando el archivo se abre
				$objPHPExcel->setActiveSheetIndex(0);
				// Inmovilizar paneles
				$objPHPExcel->getActiveSheet(0)->freezePaneByColumnAndRow(0,3);

				$fichero = '../Documents/Rpt_Periodos.xlsx' ;
				$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
				$objWriter->save($fichero);
    			$objResponse->script('window.open("'.$fichero.'", "_blank");');

				return $objResponse ;
		}*/
?>