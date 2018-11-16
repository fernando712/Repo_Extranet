// JavaScript Document
// Componente: AUMXVE10700

	
	
	function jsBaja()
	{
		//var clave = document.getElementById("TXT_CVE_OPER").value;
		/*if(clave.length <= 7)
		{
			alert("Estimado usuario favor de validar los siguientes campos: \n     Clave Operación - Debe introducir una clave de operación válida");
		}*/
		//else
		//{
			respuesta = confirm("Desea dar de baja la empresa");
			if(respuesta)
			{
				document.forms[0].evento.value="0X250100A";
				//document.AUMXVE10700.N_HDN_CVE_OPER.value = clave;
				EnviarFormulario(); 
			}
		//}
	}
	/*function jsVerificaAlfabetico(e){
		if(e.keyCode==9 || e.keyCode==46 || e.keyCode==8 || e.keyCode==35 || e.keyCode==36 || e.keyCode==37 || e.keyCode==39){
			return true;
		}
		kc=e.keyCode?e.keyCode:e.which;				
		if(kc==209||kc==241){
			return false;
		}
		kc=String.fromCharCode(kc);
		if(/[^a-zA-Z0-9 ]/.test(kc)){ 
			return false;
		}
	}*/