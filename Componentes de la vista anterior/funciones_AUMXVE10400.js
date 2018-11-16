// JavaScript Document
// Componente: AUMXVE10400
	
	//Variables globales
	var ban_tit = false;

	function SelFunc(){
		var checks = document.AUMXVE10400.CHCK_APLIC.length;
		var concatenados = "";
		var separa = "";
		if(checks <= 0){
			return false;
		}
		for(i=0; i<checks; i++){
			if(document.AUMXVE10400.CHCK_APLIC[i].checked){
				if(document.AUMXVE10400.radioAplic[i].checked){
					ban_tit = true;
				}
				concatenados = concatenados + document.AUMXVE10400.CHCK_APLIC[i].value + "|";
				separa = concatenados.substring(0, concatenados.length-1);
			}
		}
		if(concatenados == ""){
			return false;
		}else{
			document.AUMXVE10400.S_APLIC.value = separa;
			return true;
		}
	}
	
	function SelFuncOne(){
		var concatenados = "";
		var separa = "";
		if(document.AUMXVE10400.CHCK_APLIC.checked){
			if(document.AUMXVE10400.radioAplic.checked){
					ban_tit = true;
			}
			concatenados = concatenados + document.AUMXVE10400.CHCK_APLIC.value + "|";
			separa = concatenados.substring(0, concatenados.length-1);
		}
		
		if(concatenados == ""){
			return false;
		}else{
			document.AUMXVE10400.S_APLIC.value = separa;
			return true;
		}
	}	

	function jsDesasignar(TamLista){
	var msg_err='';
		if (TamLista==0){
			alert('"Estimado usuario favor de validar los siguientes campos:" \n\n Aplicación  -  Debe seleccionar una Aplicación \n "');
			return false;
		}
		else if (TamLista==1){
			
			//var clave = document.getElementById('TXT_CLAVE').value;
				if(SelFuncOne() != true){
					msg_err += 'Aplicación  -  Debe seleccionar una Aplicacion \n';
				}
				/*if(ban_tit == true){
					msg_err += 'Aplicación titular -  No puede des-asignar una aplicación titular\n';
					ban_tit=false;
				}*/
				/*if (clave.length <= 7){
					msg_err += 'Clave Operación - Debe introducir una clave de operación válida \n';
				}*/
				if (msg_err.length>0){
					alert('Estimado usuario favor de validar los siguientes campos: \n\n'+msg_err);
					return;
				}
				else{
					document.forms[0].evento.value= '0X2501010'; 
					//document.AUMXVE10400.N_HDN_CVE_OPER.value = clave;
					EnviarFormulario();
				}
		}
		else{
			//var clave = document.getElementById('TXT_CLAVE').value;
				if(SelFunc() != true){
					msg_err += 'Aplicación  -  Debe seleccionar una aplicación \n';
				}
			/*	if(ban_tit == true){
					msg_err += 'Aplicación titular -  No puede des-asignar una aplicación titular\n';
					ban_tit=false;
				}*/
				/*if (clave.length <= 7){
					msg_err += 'Clave Operación - Debe introducir una clave de operación válida \n';
				}*/
				if (msg_err.length>0){
					alert('Estimado usuario favor de validar los siguientes campos: \n\n'+msg_err);
					return;
				}
				else{
					document.forms[0].evento.value= '0X2501010';
					//document.AUMXVE10400.N_HDN_CVE_OPER.value = clave;
					EnviarFormulario();
				}
		}
	}
