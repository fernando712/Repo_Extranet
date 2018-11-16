var banderaClick = false; // Bandera que limita el q se llame a funcionalidad varias veces
var banderaExportarClick = false; // Bandera que limita el q se llame a funcionalidad varias veces
var flag=0;				//bandera que indica cuando pintar los botones despues de imprimir

	//Variable global que se utiliza para la validacion de correo
	var aprueba = true;		

/**
Esta funcion realiza 
la impresion del comprobante de operacion
*/
function Imprimir_p(width, height, autoImprimir, cad, estilo){
	if(estilo==null)
		estilo="\"/aumx_es_web_pub/estilos/estilosEX.css\"";
	else
		estilo="\"" + estilo + "\"";
	if(cad==null)
		cad="";
	if(autoImprimir==null)
		autoImprimir=false;
	var objImprimible= document.getElementById("impresion");

	var Titulo= document.getElementsByTagName("title")[0].innerHTML;
	var funciones = "<script language=\"JavaScript1.2\">"+
					"function OcultaBotones(){"+
						"document.getElementById('botonesImpresion').style.display='none';"+
						"window.print();"+
						"}"	+
					"window.onafterprint = "+
					"function () {"+
					"document.getElementById('botonesImpresion').style.display='';"+
					"};"+
					"</script>";
	var encabezados="<html>\n<head>\n<title>"+Titulo+"</title>\n"+funciones+
			"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n"+
			"<% if(!utils.isInternetExplorer()) { %>" +
			"<link rel=\"stylesheet\" href=\"/atcl_es_web_pub/estilos/NacarNS.css\" type=\"text/css\">\n"+
			"<% } else { %>"+
			"<link rel=\"stylesheet\" href=\"/atcl_es_web_pub/estilos/NacarIE.css\"  type=\"text/css\">\n"+
			"<% } %>"+
            "<link rel=\"STYLESHEET\" type='text/css' href=\"/aumx_es_web_pub/estilos/estilosEX.css\">\n"+			
			"</head>\n<body bgcolor=#FFFFFF>\n"+
			"<font size=2>\n";
	var buttom="</font></body>\n</html>\n";
	var llamaPrint = "<table border=1 width=\"680\" cellspacing=0 cellpadding=1  align=\"center\" bgcolor=#FFFFFF bordercolor=#FFFFFF>\n"+
		  "<tr id='botonesImpresion' align=\"center\">\n"+
          " <td width=\"340\"> \n"+
		  "	 <br>\n"+
          "    <input type='button' name='BTcerrar' class='button_little' value='Cerrar' onClick='window.close()'>\n"+		  
//		  "<a onClick='window.close()' ><img src=\"/twmx_es_web_pub/imagenes/botones/bot_cerrar.gif\" name='Cerrar' width='88' height='26' border='0' ></a>\n"+
          "  </td>\n"+		  
          " <td> \n"+
		  "	 <br>\n"+		  
		  "	 &nbsp;&nbsp;&nbsp;&nbsp;\n"+
          "  </td>\n"+		  		  
          " <td width=\"340\"> \n"+
		  "	 <br>\n"+		
          "    <input type='button' name='BTimprimir' class='button_little' value='Imprimir' onClick='OcultaBotones()'>\n"+		    
//		  "<a onClick='OcultaBotones()' ><img src=\"/twmx_es_web_pub/imagenes/botones/bot_imprimir.gif\" name='Imprimir' width='88' height='26' border='0' ></a>\n"+
          "  </td>\n"+
          " </tr>\n"+
          "</table>\n";
	if (autoImprimir)
		llamaPrint = "<script language=\"JavaScript1.2\">self.print();</script>";
		
	var ventana= window.open("_blank","impresion","location=0,menubar=0,resizable=0,status=0,titlebar=0,toolbar=0,top=30,left=30,scrollbars=1,width="+width+",height="+height);
		ventana.document.write(encabezados+objImprimible.innerHTML+cad+llamaPrint+buttom);
		ventana.window.location.reload();
		
		

}


//FUNCION PARA IMPRIMIR
// En el jsp, lo que se desee imprimir debe ir entre
//<div id="impresion"> </div>
function Imprimir(width, height, autoImprimir, cad, estilo)
{
	if(estilo==null)
		estilo="\"/aumx_es_web_pub/estilos/estilosEX.css\"";
	else
		estilo="\"" + estilo + "\"";
	if(cad==null)
		cad="";
	if(autoImprimir==null)
		autoImprimir=false;
	var objImprimible= document.getElementById("impresion");
//	var objLista= document.getElementById("impresion_lista");
	var Titulo= document.getElementsByTagName("title")[0].innerHTML;
	var funciones = "<script language=\"JavaScript1.2\">"+
					"function OcultaBotones(){"+
						"document.getElementById('botonesImpresion').style.display='none';"+
						"window.print();"+
						"}"	+
					"window.onafterprint = "+
					"function () {"+
					"document.getElementById('botonesImpresion').style.display='';"+
					"};"+
					"</script>";
	var encabezados="<html>\n<head>\n<title>"+Titulo+"</title>\n"+funciones+
			"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n"+
		//	"<% if(!utils.isInternetExplorer()) { %>" +
		//	"<link rel=\"stylesheet\" href=\"/atcl_es_web_pub/estilos/NacarNS.css\" type=\"text/css\">\n"+
		//	"<% } else { %>"+
		//	"<link rel=\"stylesheet\" href=\"/atcl_es_web_pub/estilos/NacarIE.css\"  type=\"text/css\">\n"+
		//	"<% } %>"+
            "<link rel=\"STYLESHEET\" type='text/css' href=\"/aumx_es_web_pub/estilos/estilosEX.css\">\n"+		
			"</head>\n<body bgcolor=#FFFFFF>\n"+
			"<font size=2>\n";
	var buttom="</font></body>\n</html>\n";
	var llamaPrint = "<table border=1 width=\"680\" cellspacing=0 cellpadding=1  align=\"center\" bgcolor=#FFFFFF bordercolor=#FFFFFF>\n"+
		  "<tr id='botonesImpresion' align=\"center\">\n"+
          " <td width=\"340\"> \n"+
		  "	 <br>\n"+
          "    <input type='button' name='BTcerrar' class='button_little' value='Cerrar' onClick='window.close()'>\n"+		  
//		  "<a onClick='window.close()' ><img src=\"/twmx_es_web_pub/imagenes/botones/bot_cerrar.gif\" name='Cerrar' width='88' height='26' border='0' ></a>\n"+
          "  </td>\n"+		  
          " <td> \n"+
		  "	 <br>\n"+		  
		  "	 &nbsp;&nbsp;&nbsp;&nbsp;\n"+
          "  </td>\n"+		  		  
          " <td width=\"340\"> \n"+
		  "	 <br>\n"+		
         "    <input type='button' name='BTimprimir' class='button_little' value='Imprimir' onClick='OcultaBotones()'>\n"+		    
//		  "<a onClick='OcultaBotones()' ><img src=\"/twmx_es_web_pub/imagenes/botones/bot_imprimir.gif\" name='Imprimir' width='88' height='26' border='0' ></a>\n"+
          "  </td>\n"+
          " </tr>\n"+
          "</table>\n";
	/*if (autoImprimir)
		llamaPrint = "<script language=\"JavaScript1.2\">self.print();</script>";
		
	var ventana= window.open("_blank","impresion","location=0,menubar=0,resizable=0,status=0,titlebar=0,toolbar=0,top=30,left=30,scrollbars=1,width="+width+",height="+height);
		ventana.document.write(encabezados+objImprimible.innerHTML+cad+llamaPrint+buttom);
		ventana.window.location.reload();*/
		
		if (autoImprimir)
		llamaPrint = "<script type=\"text/javascript\">self.print();</script>";
		
		var ventana = window.open("", "impresion","location=0,menubar=0,resizable=0,status=0,titlebar=0,toolbar=0,top=30,left=30,scrollbars=1,width=799,height=580");
		var contenido = "<html><head><link rel='stylesheet' href='/aumx_es_web_pub/estilos/estilosEX.css' type='text/css'></head><body>  " + document.getElementById("impresion").innerHTML + "</body></html>";
		ventana.document.open();
		ventana.document.write(encabezados+contenido+llamaPrint+buttom);
		ventana.document.close();
		
		

}

/**
	Valida el formato del mail
	
	*/


function validarEmail(objeto){
	var myValidation=/^\w{1,}@\w{1,}(\.\w{1,})+$/;
	if(myValidation.test(objeto.value)==true)
		return true;
	else
		return false
}


function validarAlfanumerico(){
	var args=validarAlfanumerico.arguments;
	var longitud=args.length;
	
	var objeto = args[0];
	var minimo = 1;
	var maximo = "";

	if(longitud == 2){
		maximo = args[1];
	} 
	
	if(longitud == 3){
		minimo = args[1];
		maximo = args[2];
	}
	
		var myValidation = new RegExp("^([\\w]){"+minimo+","+maximo+"}$");
				
		if(myValidation.test(objeto.value)==true){			
			return true;
		}else{
		return false;
		}
		
}	

	/******************************************************************************************************
	function validarAlfabetico(){
	******************************************************************************************************/
	function validarAlfabetico(){
	
		var args=validarAlfabetico.arguments;
		var longitud=args.length;
	
		var objeto = args[0];
		var minimo = 1;
		var maximo = "";
	
	
		if(longitud == 2){
			maximo = args[1];
		}
	
		if(longitud == 3){
			minimo = args[1];
			maximo = args[2];
		}
		
			var myValidation=new RegExp("^([A-Za-z ]){"+minimo+","+maximo+"}$");
	
			if(myValidation.test(objeto.value)==true)
				return true;
			else
			return false;
	}

/******************************************************************************************************
Función rellenaCadena(cadena, cantidad,rellenarCon) : 
	Esta función dada una cadena original, regresa la cadena rellena con el caracter indicado, y la longitud dada

Parámetros
  cadena = cadena original
  cantidad= longitud máxima de la cadena
  rellenarCon= caracter con el que se rellenará la cadena
  
  Ejemp: cad=rellenaCadena('hola a todos','20','*');
         cad=hola a todos
*****************************************************************************************************/
function rellenaCadena(cadena, cantidad,rellenarCon){	
	tamanio = cantidad  -  cadena.length ;
	cadena2 = "";
	for(i = 0; i < tamanio; i++){
		cadena2 +=rellenarCon;  
	}
	return cadena+cadena2;
}

/******************************************************************************************************
Función validarNumero() : 
	Esta función permite validar si el valor de un objeto es numérico o no

Nota: Esta función califica como cadena cualquier conjunto de caracteres que no tengan Números[0-9]

Parámetros
  objeto = nombre del objeto del cual se hace referencia
  decimales = cantidad de decimales

Nota: 
  Esta función se puede utilizar mandando uno o dos parámetros a la función

Ejemplos: 
  objeto = document.forms[0].campoTexto;
  decimales = 2

a)	 validarNumero(objeto) : Regresa true si el valor del objeto ingresado es anumérico. 
	 si el valor de campoTexto es:
		12345678    , regresará true	 
		12345678.   , regresará false		
		12345678.2  , regresará false
		12345678.22 , regresará false


b)	 validarNumero(objeto, decimales) : Regresa true si el valor del objeto ingresado, 
	 								 	es numérico y los números decimales son exactamente iguales al numero de decimales establecido
	 si el valor de campoTexto es:
		12345678.22 , regresará true
		12345678.2  , regresará false
		12345678.   , regresará false		
		12345678    , regresará false		
*****************************************************************************************************/ 
function  validarNumero(){
   
	var args=validarNumero.arguments;
	var longitud=args.length;
	
	var objeto = args[0];
	var decimales = 0;
	
	var myValidation=new RegExp("^[0-9]{1,}$");
	
	if(longitud == 2){
		decimales = args[1];
	//	alert("decimales "+decimales)
		myValidation=new RegExp("^[0-9]+[.][0-9]{"+decimales+"}$");
	}
	
	if(myValidation.test(objeto.value)==true)
		return true;
	else
		return false;
}

/**
Valida los campos
para que acepte solo numeros o letras	
*/
function esValidoText(evento){
var validos="abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéóíúÁÉÍÓÚ1234567890 ";
var letra = (document.all) ? evento.keyCode : evento.which; 
if (letra==8 || letra==0) return true; //ddd: para poder borrar con backspace. Supr=0
letra=String.fromCharCode(letra);
	for(jota=0;jota<validos.length;jota++){
		if(validos.charAt(jota)==letra){
			return true;
		}
	}
	return false;
}
/** DDD:
Valida los campos
para que acepte solo numeros
*/
function esValidoNum(evento){
var validos="1234567890";
var letra = (document.all) ? evento.keyCode : evento.which;
if (letra==8 || letra==0) return true; //ddd: para poder borrar con backspace. Supr=0
letra=String.fromCharCode(letra);
	for(jota=0;jota<validos.length;jota++){
		if(validos.charAt(jota)==letra){
			return true;
		}
	}
	return false;
}

/**Validar DISPOSITIVOS con solo numeros usando keyCode***/


/**************************************************************************************************
Funcion Evento() : Permite llamar a un evento NACAR
Parámetros
 	 EventoHexadecimal, formulario
	 
Ejem: Evento('0X21E0104C','BTXYVE10505');
**************************************************************************************************/
function Evento(eventoHexad,form) {
	raiz='document.'+form+'.';
	eval(raiz+"evento.value='"+eventoHexad+"'");
	document.body.style.cursor='wait';
	if(BanderaClick(banderaClick, "banderaClick"))
		eval(raiz+"submit();");
}


/**************************************************************************************************
Funcion Evento() : Permite llamar a un evento NACAR
Parámetros
 	 EventoHexadecimal, formulario
	 
Ejem: EventoExportar('0X21E0104C','BTXYVE10505');
**************************************************************************************************/
function EventoExportar(eventoHexad,form) {
	raiz='document.'+form+'.';
	eval(raiz+"evento.value='"+eventoHexad+"'");
	document.body.style.cursor='wait';
//	if(BanderaClick(banderaExportarClick , "banderaExportarClick"))
		eval(raiz+"submit();");
	document.body.style.cursor ="default";		
}

/**************************************************************************************************
Funcion BanderaClick(banderaClick) : Permite cambiar el status de la banderaClick 

Parámetros
 	 bandera 
	 nombreBandera = "banderaExportarClick"
	 
Ejem: BanderaClick(bandera, nombreBandera);
**************************************************************************************************/
function BanderaClick(bandera, nombreBandera) {
	if(!bandera){
		eval(nombreBandera + "= true");
		return true;
	}else{
		return false;	
	}
}

//funciones DDD:

//gebi
//de "getElementById"
//llamada:
//elemento=gebi("idElemento"); en lugar de elemento=document.getElementById("IdElemento");
function gebi(elemento){
	return document.getElementById(elemento);
}

//gebn
//de "getElementsByName"
//regresa el elemento indicado, si no se indica un indice, regresa el primero (indice 0)
//NOTA: no sirve para regresar elementos como arreglos, como por ejemplo radiobuttons o arreglos normales
//para eso, usar gebnArr();
//llamada:
//elemento=gebn("nombreElemento"); en lugar de elemento=document.getElementById("IdElemento")[0];
//elemento=gebn("nombreElemento",ind); en lugar de elemento=document.getElementById("IdElemento")[ind];
function gebn(elemento,indice){
	return document.getElementsByName(elemento)[indice==null?0:indice];
}

//gebnArr
//similar a gebn() pero este solo recibe el nombre de los elementos (plural), y regresa un ARREGLO de todos los elementos con ese nombre.
//llamada:
//arregloDeElementos=gebnArr("nombreElementos");
function gebnArr(elemento){
	return document.getElementsByName(elemento);
}
//al
//simplemente muestra con un alert el mensje indicado, solo es para abreviar "alert" para fines de depuracion rapida.
//llamada:
//al(...); en lugar de alert(...);
//NOTA: antes se llamaba simplemente 'a()', pero para no entrar en conflicto con otras funciones, se cambio a 'al'
function al(mensaje){
	alert(mensaje);	
}


function seleccionarCodigoCombo(objeto, codigoCombo,formulario)
	{
		var paso;
		var texto = codigoCombo;
		var i=0;
		var numElementos=0;
		numElementos = eval('document.'+formulario+'.'+objeto+'.length');
		if(numElementos == 1){
			paso = eval('document.'+formulario+'.'+objeto+'.value');
				if(paso == texto)
					eval('document.'+formulario+'.'+objeto+'.selected = true') ; 
				
		}else{
			for(i;i<numElementos;i++)
			{
				paso = eval('document.'+formulario+'.'+objeto+'['+i+'].value');
				if(paso == texto){
					eval('document.'+formulario+'.'+objeto+'['+i+'].selected =  true');
					}
			}
		}
}


/* validar solo numeros sin KEYCODE se implementa como
  document.getElementById("captura0").setAttribute("onKeyUp","validaNum(this.id)");
 */
function validaNum(idCampo) {
    var RegExPattern = /^[\d]*$/;
	var lastchart=document.getElementById(idCampo).value;	
	var text="";
	var aux;	
	var i;	
	for(i=0;i<lastchart.length;i++)		
	{
	   RegExPattern.test(lastchart.charAt(i))?aux=lastchart.charAt(i):aux=''
	   text+=aux;	   
	}
	document.getElementById(idCampo).value=text;
}

/*Validar con KEYCODE*/
function validarKey(evento, tipo)
{
	if(tipo==1 || tipo==2 || tipo==3 || tipo==4 || tipo==5 || tipo==6 || tipo==7 || tipo==8 || tipo==9 || tipo==10 || tipo==11 || tipo==12 || tipo==13 || tipo==14 || tipo==15 || tipo==16 || tipo==17 || tipo==18 || tipo==19 || tipo==20)
		return validaEntero(evento);
	else
		return quitaCtrl(evento);
	
	return false;
}
		
			
function validaEntero(evento) 
	{ 
		var tecla = (document.all) ? evento.keyCode : evento.which; 
		var patron='0123456789';
	  	if ( (tecla==8) || (tecla >= 48 && tecla <= 57) || (tecla >= 96 && tecla <= 105) || (tecla==9) ) //Tecla de retroceso (para poder borrar), si es numerico y moverse atraves del tab
	  		return true; 
	  	tecla=String.fromCharCode(tecla);
		
				
	  	if(patron.indexOf(tecla)<0)
	  		return false;
		return true;
	}
			
function quitaCtrl(evento) 
	{ 
		var tecla = (document.all) ? evento.keyCode : evento.which; 
		if(evento.ctrlKey){	//Control presionado?
		  	if (tecla==86 || tecla==67 || tecla==99 || tecla==112 || tecla==88)	//Quitando copiar y pegar
		  		return false; //Tecla de Ctrl
		}
		if(evento.shiftKey){	//Control presionado?
			if(tecla==45)
				return false;
		}
		return true;
	}
	
	/******************************************************************************************************
	Funcion que valida que la cadena contenga ocho caracteres Alfanumericos
	******************************************************************************************************/

	function validarAlfanumericoOchoCaracteres(idUsuario){
		
	var objeto = idUsuario;
	
	var myValidation = new RegExp("^([\\w]){8}$");
		
		if(myValidation.test(idUsuario.value)==true){			
			return true;
		}else{
			return false;
		}
			
	}
	
	/******************************************************************************************************
	Funcion que valida que el correo electronico contenga el formato adecuado
	******************************************************************************************************/

	function validarCorreo(correo){
		
	var email = correo.value;	
	validarCaracter(email);
	
		if(aprueba){ 
				
				if(email == "" || !(/[a-zA-Z0-9ñÑ(.)(_)][@][\w\-]{1,}([.]([\w\-]{1,})){1,3}$/.test(email)) ){
					return false;
				}else{
					return true;								
					 }							
				}
		else{
			return false;
		}				
	}
	
	
	/******************************************************************************************************	
	Funcion que valida que la cadena no contega carcteres especiales a excepcion de . y _	
	******************************************************************************************************/
	function validarCaracter(email){
	
	var caracteresPermitidos = "0123456789abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ_.@";	
	aprueba = true;
	
	for(i=0; i<email.length; i++){				
			 if(caracteresPermitidos.indexOf(email.charAt(i),0) == -1 ){
					aprueba = false;										 
				 }			 
			}
		}	
	/******************************************************************************************************	
	Funcion comun que manda a llamar la funcion que imprime un comprobante
	******************************************************************************************************/
	function jsImprimirComprobante(){
	   Imprimir(800,600);
	}
	
	function submitEsto(e){
	document.forms[0].evento.value=e;
	document.forms[0].submit();
	}
	/******************************************************************************************************	
	Funcion comun que regresa a la jsp anterior recibe el evento como parametro	
	******************************************************************************************************/
	function jsRegresar(evento){
		document.forms[0].evento.value = evento; 
		EnviarFormulario();
	}
	/******************************************************************************************************	
	Funcion comun que envia el formulario
	******************************************************************************************************/
	function EnviarFormulario(){
		document.forms[0].submit();
	}
	
	/*********************************************************************************************************
Función  ValidaForm(): Esta funcion permite validar que los campos de tipo text, combos y checkbox
que son requeridos, tengan datos, y devuelve un false si hay errores
PARAMETROS
nombreCampo,etiquetaJSP,MensajeError,Tipo, ...
nombreCampo2,etiquetaJSP2,MensajeError2,Tipo2,..
Formulario

Tipo= isText, isCombo, isCheck
EJEM: valorRetorno=ValidaForm('txtCliente','Cliente','Favor de Capturar Datos','isText',					
					'caja','Aplica','Favor de Seleccionar un Dato,'isCheck',						
					'LNOPROCESO','No. de Proceso','Favor de Seleccionar un Registro','isCombo',
					'BTXYVE10105');  
		if(valorRetorno==false)
		  return;
**********************************************************************************************************/
function ValidaForm(){
	var args=ValidaForm.arguments;
	var longitud=args.length-1;
	var form=args[longitud];//nombre del formulario
	var tipoUsuario=args[longitud-1];//nombre del tipo de Usuario
	
	var raiz,element,foco="",errores="";	
	var campo,nombreCampo,mensaje,tipo,texto;
	raiz='document.'+form+'.'
	
	for (i=0; i<(longitud-1); i+=4)
	{
		campo=args[i]; //nombre campo
		nombreCampo=args[i+1]; //etiqueta en el jsp
		mensaje=args[i+2]; //mensaje error
		tipo=args[i+3]; //tipo
		
		element= eval(raiz+campo+".value");
		
		if(tipo=='isText') //******************** CAJAS DE TEXTO
		{
			texto=TrimLeft(element);	
			if (texto=="")
			{		 
			 if(foco=="")		 
		 		foco=eval(raiz+campo+".focus()");			
		 	errores+='- \"'+nombreCampo+'"   '+mensaje+'\n';
		 	}
		 }// isText
		if(tipo=='isCombo')  //******************** COMBOS
		{	
			if (element=="")
			{		 
			 if(foco=="")		 
		 		foco=eval(raiz+campo+".focus()");			
		 	errores+='- \"'+nombreCampo+'"   '+mensaje+'\n';
		 	}
		}// isCombo
		if(tipo=='isCheck')  //******************** CHECKBOX
		{
			element= false;
			long = eval(raiz+campo+".length")

			if(!isNaN(long)){
				for (j = 0; j < long; j++) {
					if (eval(raiz+campo+"[j].checked")){
						element = true;
						break;
					}
				}		
			}
			else {
				element = eval(raiz+campo+".checked")			
			}

			if (element==false)
			{		 
			 	errores+='- \"'+nombreCampo+'"   '+mensaje+'\n';
		 	}
		}// isCheck
	}//fin for	
	 if (errores) 
	 {
        //if(banderaMensajes == 'S'){
			alert('Estimado usuario:\n\n'+errores);
		//	alert('Estimado '+tipoUsuario+':\n\n'+errores);
		//}
		return  false;		
	}	
	 else {
	 return  true;
	 }	
}

/******************************************************************************************************
Función TrimLeft(str) : 
	Esta función permite eliminar los espacios del lado izquierdo de una cadena

Parámetros
  str = cadena a la que se le eliminarán los espacios
  
  Ejemplo: 
	str = "     cadena de prueba      ";
	resultado = TrimLeft(str);
	resultado = "cadena de prueba      ";

*****************************************************************************************************/ 

	function TrimLeft( str ) {
		var resultStr = "";
		var i = len = 0;
		if (str+"" == "undefined" || str == null)
			return null;
		str += "";
		if (str.length == 0)
			resultStr = "";
		else {
			len = str.length;
			while ((i <= len) && (str.charAt(i) == " "))
				i++;
			resultStr = str.substring(i, len);
		}
		return resultStr;
	}
	
function ValidaUsuGenerico(){ // funcion para AUMXVE12101 - 12201


	var valor = document.getElementById("dessub").value;
	var posicion = valor.lastIndexOf('='); 	
		if(posicion=="-1"){ 
			document.getElementById("trUsuGenerico").style.display ="none"	
			
		}else if (posicion!="-1"){ 					
				document.getElementById("trUsuGenerico").style.display ="block"	
				var elem = valor.split('=')
				descrip = elem[0];
				usuario = elem[1];

				document.getElementById("dessub").value=descrip;
				document.getElementById("usuGen").value=usuario;			
		}
}
