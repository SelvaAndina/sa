;
/*OCULTANDO EMERGENTE*/
function ocultar_emergente()
{
	var jqn= jQuery.noConflict();
    	jqn("#emergente").css("display","none");
    	jqn("#emergente").css("left","");
	   jqn("#emergente").css("top","");
	   jqn("#emergente").css("height","");
   		jqn("#vidrio").css("display","none");

    return false;
}
window.onresize = function()
{
    if(window.document.getElementById("vidrio").style.display == "block")
    {
        mostrar_emergente();
    }
}

function mostrar_emergente()
{
	// PARA QUE JQUERY NO HAGA COMFLICTO CON LA DEMAS LIBRERIAS
 		var jqn= jQuery.noConflict();
 	// ancho y alto del navegador
		w = jqn(window).width();
		h = jqn(window).height();
	// ancho y alto del emergente
		var ancho_popup = jq("#emergente").width() ;
		var alto_popup  = jq("#emergente").height();

   //Centrar el popup
	   w = (w/2) - (ancho_popup/2) - 5 ;
	   h = (h/2) - (alto_popup/2);
	// darle posicion del div
	   jqn("#emergente").css("left",w + "px");
	   jqn("#emergente").css("top",h + "px");
    	jqn("#vidrio").css("display","block");
	//  animamos
     jqn("#emergente").fadeIn(1000);
     // jq("#emergente").slideDown();
     return false;
}

