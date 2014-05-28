<?php

    /**
     * [Paginar funciona que permite crear un paginado ]
     * @param [type]  $nNumRegExist   [Numero de registros existentes totales ]
     * @param [type]  $nNumRegMostrarxPag [numero de registros a mostror por pagina ]
     * @param [type]  $nPagAct        [pagina Actual]
     * @param [type]  $cNameFunction  [funcion que va a cargar ]
     * @param [type]  $frm            [formulario que contiene los datos   ]
     * @param integer $cantlink       [cantidad de paginas a mostrar(LINK )]
     */
        function Paginar($nNumRegExist, $nNumRegMostrarxPag, $nPagAct,  $cNameFunction, $frm , $ncantlink = 5 )
        {
            # vamos a generar un metodo que sivar para pagina, buscar , ordenar si carajooo
             $nPagAnt = $nPagAct - 1;
             $nPagSig = $nPagAct + 1;
            $paginacion   = "";
            $cantpag = ceil($nNumRegExist / $nNumRegMostrarxPag);
            if ($cantpag > 1) {
                $ini = 1;
                $fin = $cantpag;
                // $ncantlink = 5;
                if ($cantpag > $ncantlink)
                    $fin = $ncantlink;
                if ($nPagAct > ceil($ncantlink / 2)) {
                    $resto = $ncantlink % 2; // para no tener problemas cuando sea impar o par la cantidad de paginas
                    if ($resto == 0) {
                        $ini = $nPagAct - floor($ncantlink / 2) + 1;
                    } else {
                        $ini = $nPagAct - floor($ncantlink / 2);
                    }
                   # redondea fracciones hacia abajo
                    $fin = $nPagAct + floor($ncantlink / 2); //ceil($ncantlink / 2);
                }
                if ($ini <= 0)
                    $ini = 1;
                if ($fin > $cantpag) {
                    $ini = $ini - ($fin - $cantpag);
                    if ($ini <= 0)
                        $ini = 1;
                    $fin = $cantpag;
                }

                $paginacion .= '<div class="pagin text-center"> <ul> ';
                if ($nPagAct != 1) {
                    $paginacion .= "<li><a href='#' onClick='".$cNameFunction."(0,".$nNumRegMostrarxPag.",1,1,".$frm." ); return false'  title='Ir Primera Pagina'> &laquo;&laquo;  </a></li>" . "\n";
                    $paginacion .= "<li><a href='#' onClick='".$cNameFunction."(".(($nPagAnt-1)*$nNumRegMostrarxPag).",".$nNumRegMostrarxPag.",1,".($nPagAct-1).",".$frm." ); return false'  title='Anterior'> &laquo;  </a></li>" . "\n";
                } else {
                     $paginacion .= '<li> <a href="#" class="cursor-default previus-off" onClick="return false ;"> &laquo;&laquo;  </a> </li>' . "\n";
                     $paginacion .= '<li> <a href="#" class="cursor-default previus-off" onClick="return false ;"> &laquo;  </a> </li>' . "\n";
                }
                for ($i = $ini; $i <= $fin; $i++) {
                    if ($i != $nPagAct) {
                        $paginacion .= "<li><a href='#'  onClick='".$cNameFunction."(".(($i-1)*$nNumRegMostrarxPag).",".$nNumRegMostrarxPag.",1,".$i.",".$frm."); return false ;'>" . $i . "</a></li>" . "\n";
                    } else {
                        $paginacion .= ' <li> <a href="#" class="active"> ' . $i . ' </a> </li>';
                    }
                }
                if ($nPagAct != $fin) {
                    $paginacion .= "<li><a href='#' onClick='".$cNameFunction."(".($nPagAct*$nNumRegMostrarxPag).",".$nNumRegMostrarxPag.",1,".$nPagSig.",".$frm."); return false ;'  title='Siguiente'> &raquo; </a></li>" . "\n";
                    $paginacion .= "<li><a href='#' onClick='".$cNameFunction."(".($nNumRegExist-$nNumRegMostrarxPag).",".$nNumRegMostrarxPag.",1,".$cantpag .",".$frm."); return false ;'  title='Ir Ultima Pagina'> &raquo;&raquo; </a></li>" . "\n";
                } else {
                    $paginacion .= '<li> <a href="#" class="cursor-default net-off" onClick="return false ;"  > &raquo; </a> </li>';
                    $paginacion .= '<li> <a href="#" class="cursor-default net-off" onClick="return false ;"  > &raquo;&raquo; </a> </li>';
                }
                $paginacion .= '</ul> </div>';
                return $paginacion;
            }
        }

    # SOLO PARA OPTION DE SELECT
    function SelectOption($objDatos, $indexReferen = 0, $textReferen = 1, $selectValue = "")
    {
        $select = "";
        if(is_array($objDatos) && count($objDatos)>0)
        {
            for ($i = 0; $i < count($objDatos); $i++) {
                $select .=      "<option value='".$objDatos[$i][$indexReferen]."'";
                if ($selectValue!= '' && $selectValue==$objDatos[$i][$indexReferen]) {
                    $select .=  'selected class="sel"';
                }
                $select .=      ">".Mayusc($objDatos[$i][$textReferen])."</option>";
            }
        }
        return $select;
    }

    /**
     * [FrmEmergente armar el contenido del emergente]
     * @param [type] $Titulo    [Titulo del emergente ]
     * @param [type] $Contenido [contenido del emergente]
     */
        function FrmEmergente($Titulo, $Contenido)
        {
            $FrmEmergente = "";
            $FrmEmergente.=     "<span id='title_emergente' class='title-emergente'>";
            $FrmEmergente.=         $Titulo;
            $FrmEmergente.=     "</span>";
            $FrmEmergente.= "<hr id='hrTitle' style='margin:5px;'>";
            $FrmEmergente.= "<div id='spanContenido'>";
            $FrmEmergente.=     $Contenido;
            $FrmEmergente.= "</div>";

            return $FrmEmergente;
        }
    # funcion que muestra mensaje cuando el usuario no a seleccionado ningun registro a editar o eliminar
        function SeleccionarRegistro()
        {
            $formulario = "";
            $formulario .="<div class='divContenedor'>";
            $formulario .=  "<div class='c12 text-center' style='margin-top:10px; height:60px'>";
            $formulario .=      "<label class='labelMsj'>¡SELECCIONES UN REGISTRO DE LA LISTA!</label>";
            $formulario .=  ' <div class="c9" style="width:75%;">
                            </div>
                            <div class="c3 text-right" style="width:25%;">
                                <div id="botonCancelar" class="c2 text-right hide" >
                                    <a   href="#" onclick="ocultar_emergente();" >
                                        <span class="boton-cancelar"></span>
                                    </a>
                                </div>
                            </div>' ;

            $formulario .=  "</div>";



            $formulario .="</div>";
            return $formulario ;
        }

    /**
     * [FrmEliminar Mostrar el Fomulario Eliminar ]
     * @param [type] $fncNombre [Nombre de la funcion para Eliminar]
     * @param [type] $ncodgio   [Codigo de que va A Eliminar ]
     */
        function FrmEliminar($funcion, $ncodgio , $mensaje ="")
        {
                   $formulario = "";
                   if(empty($mensaje))
                    $mensaje ="Presione sobre el bot&oacute;n para confirmar eliminar" ;
                        if (!empty($ncodgio)) {
                            $formulario .="<div class='divContenedor'>";
                            $formulario .=  "<div class='text-center'>";
                            $formulario .=      "<label style='color:#000000; font-family:Arial; font-size:12px; font-weight:bold;'>".$mensaje.".</label>";
                            $formulario .=  "</div>";
                             $formulario .= '<div class="c9" style="width:75%;">
                                            <div id="labelMsj"  class="c12 MsjAlert "  ></div>
                                            <div id="botonCancelar" class="c2 text-right hide" >
                                                <a   href="#" onclick="ocultar_emergente();" >
                                                    <i class="boton-cancelar"></i>
                                                </a>
                                            </div>
                                        </div>

                                        <div class="c3 text-right" style="width:25%;">
                                            <a href="#" onclick="xajax_'.trim($funcion).'('.$ncodgio.');" > <i class="boton-eliminar"></i>
                                            </a>
                                        </div> ' ;
                            $formulario .="</div>";
                            $formulario = utf8_encode($formulario);
                        }
                        else{

                                $formulario .="<div class='divContenedor'>";
                                $formulario .=  "<div class='divFila' style='text-align:center; margin-top:10px;'>";
                                $formulario .=      "<label style='color:#000000; font-family:Arial; font-size:12px; font-weight:bold;'>¡SELECCIONES UN REGISTRO DE LA LISTA!</label>";
                                $formulario .=  "</div>";
                                $formulario .="</div>";
                        }
                    return $formulario;
        }
    # Fomulario Confirm NO , YES
        function FrmConfirm($funcion, $ncodgio="" , $mensaje = "Esta Seguro de Eliminar el Registro ? " )
        {
                $formulario = "";
                    if (!empty($ncodgio))
                    {
                        $formulario .="<div class='divContenedor'>";
                        $formulario .=      '<div class="c12 text-center "> '.$mensaje.' </div>' ;
                        $formulario .=      '<div class="c12 text-center space-min-all"> ' ;
                        $formulario .=          '<a href="#" onclick="ocultar_emergente();return false;" >
                                                    <span class="boton-no"></span>
                                                </a> ' ;
                        $formulario .=          '<a href="#" onclick="xajax_'.trim($funcion).'(\''.$ncodgio.'\');" >
                                                    <span class="boton-yes"></span>
                                                </a> ' ;
                        $formulario .=      '</div>' ;
                        $formulario .=      "<div class='c12'>";
                        $formulario .=          "<label class='labelMsj' id='labelMsj' ></label>";
                        $formulario .=      "</div> " ;
                        $formulario .="</div>";
                    }
                    else
                    {
                            $formulario .="<div class='divContenedor'>";
                            $formulario .=  "<div class='c12 space-min-top text-center' >";
                            $formulario .=      "<label style='color:#000000; font-family:Arial; font-size:12px; font-weight:bold;'>¡SELECCIONES UN REGISTRO DE LA LISTA!</label>";
                            $formulario .=  "</div>";
                            $formulario .="</div>";
                    }
                return $formulario;
        }
    /**
     * [InputFrm crea un input]
     * @param [type] $nameLabel     [nombre del lable]
     * @param [type] $nameInput     [nombre de input y nombre del id ]
     * @param string $placeholder   [opcional placeholder del input]
     * @param string $valueImput    [opcional value del input]
     * @param string $class         [clase css del input ]
     * @param string $classFieldset [clase css del fieldset]
     */
        function InputText($nameLabel,$nameInput,$placeholder="",$valueImput="",$class="input-text" , $classFieldset="c6")
        {
            $input ="";
            $input .='
                            <fieldset class="'.$classFieldset.'">
                                <label for="'.$nameInput.'" >'.$nameLabel.'</label>
                                <input  type="text" class="'.$class.'" name="'.$nameInput.'" id="'.$nameInput.'" value="'.$valueImput.'" placeholder="'.$placeholder.'" >
                            </fieldset>
            ';
            return $input;
        }

        function InputTextPre($nameLabel,$nameInput,$placeholder="",$valueImput="",$classIcon="icon-text" , $classFieldset="c6" , $classInput = "")
        {
            $input ="";
            $input .='
                            <fieldset class="'.$classFieldset.'">
                                <label for="'.$nameInput.'" >'.$nameLabel.'</label>
                                <span class="pre '.$classIcon.'"></span>
                                <input  type="text" class="pre '.$classInput.'" name="'.$nameInput.'" id="'.$nameInput.'" value="'.$valueImput.'" placeholder="'.$placeholder.'" >
                            </fieldset>
            ';
            return $input;
        }



    /**
     * [BotonRegistrar crear un boton para registrar los datos(envia datos del fomulario ) ademas crear el contenedor del mensaje de alerta]
     * @param  [type] $funcion [funciona a la cual permite enviar los datos ]
     */
        function BotonRegistrar($funcion)
        {
            $formulario ="";
              $formulario .=' <div class="clear"></div>

                                <div id="labelMsj"  class="c12 MsjAlert "  ></div>
                                <div id="botonCancelar" class="c2 text-right hide" >
                                    <a   href="#" onclick="ocultar_emergente();" >
                                        <span class="boton-cancelar"></span>
                                    </a>
                                </div>


                            <div id="botonGuardar" class="c3 text-right" >
                                <a href="#" onclick="xajax_'.trim($funcion).'(xajax.getFormValues(frmEmergente));" >
                                    <span class="boton-guardar"></span>
                                </a>
                            </div>
                            ';

            return $formulario;
        }

    # FUNCIONES CADENAS
        /**
         * [Mayusc CONVERTIR A MAYUSCULA Y CON CARACTERES ESPECIALES Ñ Y TILDES]
         * @param string $cadena [cadena de texto a convertir ]
         */
        function Mayusc($cadena="")
        {
            $cadena=trim($cadena);
            $cadenaMayusc = mb_strtoupper($cadena, "utf-8");
            return $cadenaMayusc ;
        }


# FUNCIONES PARA FECHAS
    # 14/09/2013 A 2013-09-14
        function fecha_es_db($fecha){
            $arr = explode('/', $fecha);
            $newDate = $arr[2].'-'.$arr[1].'-'.$arr[0];
            return $newDate;
        }
    #14/09/2013 A 14-09-2013
        function fecha_es_guion_procedure($fecha){
            $arr = explode('/', $fecha);
            $newDate = $arr[0].'-'.$arr[1].'-'.$arr[2];
            return $newDate;
        }

    # 14-09-2013 A 14/09/2013
        function fecha_barra_es($fecha){
            // $fecha="25/12/2013";
            $arr = explode('-', $fecha);
            $newDate = $arr[0].'/'.$arr[1].'/'.$arr[2];
            return $newDate;
        }
    # 2013-09-14 A 14/09/2013
        function fecha_BD_Barra($fecha){

            $arr = explode('-', $fecha);
            $newDate = $arr[2].'/'.$arr[1].'/'.$arr[0];
            return $newDate;
        }
    # viernes 27 de septiembre del 2013
        function Fecha_Actual_Larga(){
            date_default_timezone_set('America/Lima');
            setlocale(LC_TIME, 'spanish');

            return strftime(" %A, %d de %B del %Y");
        }

    # FUNCION FECHA ACTUAL
        function Fecha_Actual_Barra(){
            $fecha = date('d/m/Y') ;
            return $fecha ;
        }
    # fecha actual BD
    # FUNCION FECHA ACTUAL
        function Fecha_Actual_BD(){
            $fecha = date('Y-m-d') ;
            return $fecha ;
        }
?>