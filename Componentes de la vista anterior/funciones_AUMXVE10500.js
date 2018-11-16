// JavaScript Document
// Componente: AUMXVE10500

	function cambiaBanderaCliente(){
		banderaCliente=false;
	}

	function modificar(){
		
		ok=true;
		var av="Estimado usuario favor de validar los siguientes campos:\n\n";
		_niveles=gebi("niveles").value;
		_contact=gebi("contact").value;
		_des_refer=gebi("nombreEmpresa").value;
				
		av="Estimado usuario favor de validar los siguientes campos:\n\n";
			
		if(_niveles==""){
			av+="Nivel - Debe capturar un n˙mero de nivel\n";
			ok=false;
		}else{		
			if( parseInt(_niveles) < parseInt(nivel_inicial) ){
				av+="Nivel - Debe de ser mayor al nivel inicial ("+nivel_inicial+")\n";
				ok=false;
			}
		}		
		if(_contact==""){
			av+="Nombre contacto - Debe capturar el nombre del contacto\n";
			ok=false;
		}		
		if(_des_refer==""){
			av+="Nombre empresa - Debe capturar el nombre de la empresa\n";
			ok=false;
		}
		if(gebi("email").value!="" && !validarEmail(gebi("email")) ){
			av+="E-mail - Debe capturar un E-mail  valido\n";
			ok=false;
		}		
			
		if(!document.getElementById("no").checked){
		
			var numCliente = document.AUMXVE10500.NUM_CLIENTE;	
		
			if(numCliente.value == "" || !validarAlfanumericoOchoCaracteres(numCliente) ){	
							
				if(numCliente.value == "" ){
					av += 'N˙mero de cliente - Debe capturar el numero de cliente\n';
					ok=false;
				}
				if(!validarAlfanumericoOchoCaracteres(numCliente)){
					av += 'N˙mero de cliente - El n˙mero de cliente debe contener 8 caracteres alfanumericos\n';
					ok=false;
				}			
			}
		}
		
		if(document.getElementById("no").checked){ 
		    document.AUMXVE10500.NUM_CLIENTE.value="";
		}
		
		if(!banderaCliente && document.getElementById("si").checked){ 
			av += 'N˙mero de cliente - El n˙mero de cliente se debe de validar con el nombre de la empresa\n';
			ok=false;
		}	
			
		if(ok){
			subirDatos();		
		}else
			alert(av);
	
	}		

	function js_Cliente(){
			
		var numCliente = document.AUMXVE10500.NUM_CLIENTE;		
		var msg_err='';
		
		if(numCliente.value == "" ){
			msg_err += 'N˙mero de cliente - Debe capturar el numero de cliente\n';
		}
		if(!validarAlfanumericoOchoCaracteres(numCliente)){
			msg_err += 'N˙mero de cliente - El n˙mero de cliente debe contener 8 caracteres alfanumericos\n';
		}
		if (msg_err.length>0){
			alert('Estimado usuario favor de validar los siguientes campos: \n'+msg_err);
			return;
		}
		else{
				//BUSQUEDA CLIENTE
				document.AUMXVE10500.BAN_CTE.value = "true"; 
				document.AUMXVE10500.evento.value="0x2501002"; 
				document.AUMXVE10500.submit();					
				
		}			
	}
	
	function esCliente(){
	
		var numCliente = document.AUMXVE10500.NUM_CLIENTE.value;
									
		if(numCliente == "" ){
				document.getElementById("no").checked = true;	
				js_IndCli();										
		}
						
		if(banderaCliente){
			document.getElementById("nombreEmpresa").disabled = true;											
		}else{
			document.getElementById("nombreEmpresa").disabled = false;	
		}			
	}		
	
	function js_IndCli(){
		if(document.getElementById("no").checked){	
	        document.AUMXVE10500.NUM_CLIENTE.value="";		
			document.getElementById("BTN_BUSQUEDA").disabled = true;
			document.getElementById('BTN_BUSQUEDA').className="button_little_Deshabilitado";
			document.getElementById("numCliente").disabled = true;
			document.getElementById('numCliente').className="enabled";
			document.getElementById("nombreEmpresa").disabled = false;	
			document.getElementById('nombreEmpresa').className="requerido";
			document.getElementById('tdNombreEmpresa').innerHTML="*";
			document.getElementById('tdInputNombreEmpresa').className="cellTablaN";				
			
		}else{
			document.getElementById("BTN_BUSQUEDA").disabled = false;
			document.getElementById('BTN_BUSQUEDA').className="button_little";
			document.getElementById("nombreEmpresa").disabled = true;	
			document.getElementById("numCliente").disabled = false;				
			document.getElementById('nombreEmpresa').className="enabled";
			document.getElementById('numCliente').className="requerido";
			document.getElementById('tdNombreEmpresa').innerHTML="";
		}
	}
	 
		 
	 function valkey(e,tipo)
{
	
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
			if (validatecla (tecla,"ABCDEFGHIJKLMN—OPQRSTUVWXYZ 0123456789.,:;()/-_·ÈÌÛ˙¡…Õ”⁄abcdefghijklmnÒopqrstuvwxyz") == false)
			{
				return false;
			}              
			return;
		}
		case "letraynumero":
		{
			if (validatecla (tecla,"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ·ÈÌÛ˙¡…Õ”⁄abcdefghijklmnopqrstuvwxyz") == false)
			{
				return false;
			}	
			return;
		}
		
		case "letra":
		{
			if (validatecla (tecla,"ABCDEFGHIJKLMNOPQRSTUVWXYZ·ÈÌÛ˙¡…Õ”⁄abcdefghijklmnopqrstuvwxyz") == false)
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
