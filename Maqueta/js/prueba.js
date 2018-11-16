function cambiaBanderaCliente(){
	banderaCliente=false;
}

//-----------------------------------Funcion habilitar/deshabilitar boton busqueda---------------------------------------
function js_cliente(){
	// var numeCliente = document.AUMXVE03301.NUM_CLIENTE;
	var numeCliente = "";
	var msg_err = "";
	
	if(numeCliente.value == "" ){
		msg_err += 'N\u00FAmero de cliente - Debe capturar el n\u00FAmero de cliente\n';
	}
	if(!validarAlfanumericoOchoCaracteres(numeCliente)){
		msg_err += 'N\u00FAmero de cliente - El n\u00FAmero de cliente debe contener 8 caracteres alfanum\u00E9ricos\n';
	}
	if (msg_err.length>0){
		alert('Estimado usuario favor de validar los siguientes campos: \n'+msg_err);
		return;
	}
}




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



function js_aplicacion(){
	if($('#vincular').prop('checked')){
		$('#BTN_APLICACION').prop({
			disabled: false,
			value: 'Vincular'
		});
		$('#aplicacion').prop('disabled', false);
		$('#perfil').attr('disabled', false);
	}
	else{
		$('#BTN_APLICACION').prop({
			disabled: false,
			value: 'Desvincular'
		});
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



function js_structure(){
	if( $('#alta').prop('checked') ) {
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


$( function() {
    $("#LST_DISP").change( function() {
        if ($(this).val() === "-1") {
            $("#BTN_DISPOSITIVOS").prop("disabled", true);
            $('#BTN_DISPOSITIVOS').prop('value', 'Aceptar')
        } else {
            $("#BTN_DISPOSITIVOS").prop("disabled", false);
            $('#BTN_DISPOSITIVOS').prop('value', 'Asignar')
        }
    });
});
// function js_dispositivo(){
// 	if($('#disp').val() === "-1"){
// 		$("#BTN_DISPOSITIVOS").prop("disabled", true);
// 		$("#BTN_DISPOSITIVOS").prop("value", "Aceptar");
// 	}
// 	else{
// 		$("#BTN_DISPOSITIVOS").prop("disabled", false);
// 		$("#BTN_DISPOSITIVOS").prop("value", "Asignar");
// 	}
// }


// function js_dispositivo(){
// 	$("#disp").change( function() {
//         if ($(this).val() === "-1") {
//         	$("#BTN_DISPOSITIVOS").prop("disabled", true);
//         } else {
//             $("#BTN_DISPOSITIVOS").prop("disabled", false);
//         }
//     });
// }