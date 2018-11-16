// JavaScript Document
// Componente:AUMXVE12600

	function js_Asignar(){
		var msj ="";
		//var pass = document.getElementById("CVE_OPER").value;
		var combo = document.getElementById("LST_DISP").value;
		var dispositivo =true;
		for(i=1; i<=20; i++)
		{
			var varia = "";
			varia = (i<10)?'0'+i:i;
			if(document.getElementById('DISP' + varia).value.length == 0 || document.getElementById('DISP' + varia).value.length < 8)
			{
				dispositivo =false;
			}
			else
			{
				dispositivo =true;
				
				//document.getElementById('DISP' + varia).focus();
				break;
			}
		}

		//if(pass != "" && pass.length >= 8 && combo != "-1" && dispositivo==true)
		if(combo != "-1" && dispositivo==true)
		{
			var DISP_SEL = document.getElementById("LST_DISP").value;
			document.AUMXVE12600.SEL_DISP.value = DISP_SEL;
			document.forms[0].evento.value= '0X250100F';
			EnviarFormulario();
		}
		else
		{
		
			if(combo == "-1")
				msj+="Modelo de dispositivos -  Debe seleccionar un modelo de dispositivo\n";
			if(dispositivo==false)
				msj+="Dispositivos -  Debe capturar un número de serie de un dispositivo \n";	
			/*if(pass == "" || pass.length < 8)
				msj+="Clave Operación - Debe introducir una clave de operación válida";*/
				
			alert('Estimado usuario favor de validar los siguientes campos: \n\n'+msj);
		}
	}

	//Onchange cmbModelos combo
	function SelDispositivo(modelo)
	{
		if(modelo.value != "-1")
		{
			document.getElementById('LST_DISP').disabled = false;
			
		}
		else{
			for(i=0; i<=19; i++){
				var varia = "";
				varia = (i<10)?'0'+i:i;
				document.getElementById('DISP' + varia).disabled = true;
				//document.getElementById('DISP' + varia).value = "";
			}
		}
	}
	
	//Validar de un txtfield a otro
	function Dispositivos(disp, num){
		if(disp.length >= 8){
			document.getElementById('Disp'+ num + 1 ).disabled = false;
			document.getElementById('Disp'+ num + 1 ).focus();
		}
	}
	

	
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
	