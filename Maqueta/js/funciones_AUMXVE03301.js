//---------------------------Funciones para (Modificar) 10500.jsp---------------------------------------------
//------------------------------------------------------------------------------------------------
function cambiaBanderaCliente(){
	banderaCliente=false;
}



//-----------------------------------Funcion para el boton busqueda------------------------------

function js_cliente(){
	var numeCliente = document.AUMXVE03301.NUM_CLIENTE;		
	var msg_err='';
	var ventana=document.AUMXVE03301.ventana.value;
	var flujo=document.AUMXVE03301.flujo.value;
	var noCliente=$('#numeCliente').val();
	var destino=$('#hdn_DESTINO').val();
	$('#numCliente').val(noCliente);

	if(!numeCliente.value){
		msg_err += "N\u00FAmero de cliente - Debe capturar el n\u00FAmero de cliente\n";
	}
	if(!validarAlfanumericoOchoCaracteres(numeCliente)){
		msg_err += "N\u00FAmero de cliente - El n\u00FAmero de cliente debe contener 8 caracteres alfanum\u00E9ricos\n"
	}
	if(msg_err){
		alert("Estimado usuario, favor de validar los siguientes campos: \n\n" + msg_err);
	}
	else if(document.AUMXVE03301.BAN_CTE.value = "true"){
	
	$.ajax({url:destino,
			data:{'evento':'0X2501016', 'ventana':ventana, 'flujo':flujo, 
			'numCliente':noCliente},
			cache:false,
			success:function(objetoSalida){
				alert("Success");
			},
			error:function(objetoSalida){
				alert("Error");
			},
			type:'POST',
			dataType:'text',
			async: true
		}); return false;
	}
}



//-----------------------------------Funcion para el boton modificar------------------------------







//-----------------------------------Funcion habilitar/deshabilitar boton busqueda----------------

function esCliente(){
	var numeCliente = document.AUMXVE03301.NUM_CLIENTE.value;

	if(numeCliente == ""){
		document.getElementById("no").checked = true;
		js_IndCli();
	}
	if(banderaCliente){
		document.getElementById('nombreEmpresa').disabled = true;
	}else{
		document.getElementById('nombreEmpresa').disabled = false;
	}
}

function js_IndCli(){
	if(document.getElementById("no").checked){	
        document.AUMXVE03301.NUM_CLIENTE.value="";		
		document.getElementById("BTN_BUSQUEDA").disabled = true;
		document.getElementById("BTN_BUSQUEDA").className = "btn btn-success";
		document.getElementById("numeCliente").disabled = true;
		document.getElementById("nombreEmpresa").disabled = false;				
		
	}else{
		document.getElementById("BTN_BUSQUEDA").disabled = false;
		document.getElementById("BTN_BUSQUEDA").className = "btn btn-success";
		document.getElementById("nombreEmpresa").disabled = true;	
		document.getElementById("numeCliente").disabled = false;
	}
}



//-------------------------------------Funciones validar entrada de datos---------------------------------------------------
	 
function valkey(e,tipo){

tecla=(document.all) ? e.keyCode : e.which;
//alert(tecla)
	switch(tipo)
	{
		case "numeros": 
		{	
			if (validatecla (tecla," 0123456789") == false)
			{
				return false;
			}
			return;
		}  
		case "importe":
		{
			if (validatecla (tecla,"-0123456789.,") == false)
			{
				return false;
			}              
			return;
		}  
		case "alfa":
		{
			if (validatecla (tecla,"ABCDEFGHIJKLMNÃ‘OPQRSTUVWXYZ 0123456789.,:;()/-_Ã¡Ã©Ã­Ã³ÃºÃ Ã‰Ã Ã“ÃšabcdefghijklmnÃ±opqrstuvwxyz") == false)
			{
				return false;
			}              
			return;
		}
		case "letraynumero":
		{
			if (validatecla (tecla,"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 Ã¡Ã©Ã­Ã³ÃºÃ Ã‰Ã Ã“Ãšabcdefghijklmnopqrstuvwxyz") == false)
			{
				return false;
			}	
			return;
		}
		
		case "letra":
		{
			if (validatecla (tecla,"ABCDEFGHIJKLMNOPQRSTUVWXYZÃ¡Ã©Ã­Ã³ÃºÃ Ã‰Ã Ã“Ãšabcdefghijklmnopqrstuvwxyz") == false)
			{
				return false;
			}	
			return;
		}
		default:  return; break;
	}
}

function validatecla (strtecla,strtextopermitido){          
	var swok=0;
	
	if ((strtecla == 13) || (strtecla == 8) || (strtecla == 0)) {
		return (true);
	}
	
	if(strtextopermitido == "$0123456789."){
		if(strtecla == 36){
			return (true);
		}
	}
	
	if((strtecla == 241) || (strtecla == 209)){
		return false;
	}
	
	for (var j=0 ; j < strtextopermitido.length; j++ ){
	   charc = strtextopermitido.charCodeAt(j);
	   if (charc==1121)  
	     	charc=209;
	   if ( strtecla == charc ){	
			swok++;
			break;
	   }                                             
	}

	if (swok == 0 )
		return (false);
	return (true);
}










//---------------------------------Funciones para 10300.jsp (vincular) y 10400.jsp(desvincular)----------------
//---------------------------------Funcion del boton que cambia el valor por el radio (Menu aplicacion)--------


function js_aplicacion(){
	if($('#vincular').prop('checked')){
		$('#BTN_APLICACION').prop({
			disabled: false,
			value: 'Vincular'
		});
		$('#aplicacion').prop('disabled', false);
		$('#perfil').prop('disabled', false);
	}
	else{
		$('#BTN_APLICACION').prop('value', 'Desvincular');
		$('select#aplicacion').prop({
			disabled: true,
			selectedIndex: 0
		});
		$('select#perfil').prop({
			disabled: true,
			selectedIndex: 0
		});
	}
}





//----------------Funciones para 10800.jsp(modificar niveles)---------------------------------------------
function recuperar(vars){
	tot=total;

	//vars trae la cadena concatenada
	renglones=vars.split("|");
	datos=new Array();
	for(i=0;i<renglones.length;i++){
		datos[i]=renglones[i].split("-");
	}
	//ya tengo n arreglos "datos", cada uno con un arreglo de splits
	//ahora solo los pinto en donde les toca:
	for(i=0;i<datos.length;i++){
		gebi("desc_"+i).value=datos[i][3];
		
		if(i>=llenos){
			gebi("clave_"+i).value=datos[i][2];
		}
	}	
}
	





//----------------Funciones para 12600.jsp(Asignar token)---------------------------------------------



function soloNumeros(e, decimal){
	var key;
	var keychar;
	if (window.event) {key = window.event.keyCode;}
	else if (e)	{key = e.which;}
	else {return true;}
	keychar = String.fromCharCode(key);
	if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ){return true;}
	else if ((("0123456789").indexOf(keychar) > -1)) {return true;}
	else  return false;	
}//numbersonly
	







//---------------Funciones para estrcutura
//---------------Funcion del boton que cambia el valor por el radio(Menu estructura)------------------
function js_estructura(){
	if( $('#alta').prop('checked')) {
		$('#BTN_ESTRUCTURA').prop({
			disabled: false,
			value: 'Alta'
		});
	}
	else{
		$('#BTN_ESTRUCTURA').prop({
			disabled: false,
			value: 'Modificar'
		});
	}
}