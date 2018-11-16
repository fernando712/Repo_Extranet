// JavaScript Document
// Componente: AUMXVE21101

	function jsModificacion(){
	var msg_err='';
	var descripcion=document.getElementById('TXT_DESCRIPCION').value;
	var calle=document.getElementById('TXT_CALLE').value;
	var num_ext=document.getElementById('TXT_NUM_EXT').value;
	var colonia=document.getElementById('TXT_COLONIA').value;
	var num_int=document.getElementById('TXT_NUM_INT').value;			
	var del_mun = document.getElementById('TXT_DEL_MUN').value;
	var codPostal = document.getElementById('TXT_CP').value;
	var ciudad = document.getElementById('TXT_CIUDAD').value;
	var entidad = document.getElementById('TXT_ENTIDAD').value;
	var tel1 = document.getElementById('TXT_TEL1').value;
	var ext1 = document.getElementById('TXT_EXT1').value;
	var tel2 = document.getElementById('TXT_TEL2').value;
	var ext2 = document.getElementById('TXT_EXT2').value;
	var cr = document.getElementById('CR').value;	//Se agregó la variable CR por modificación
	
	//Se válida que este informado el campo de texto CR por modificación 
	if (cr.length <= 3){
		msg_err += 'Plaza/CR - Debe introducir una Plaza/CR (4 caracteres)\n';
	}
	
	//var clave = document.getElementById('TXT_CLAVE').value;

	if (descripcion.length <= 0){
		msg_err += 'Descripción - Debe introducir una descripción \n';
	}
	
	/*if (clave.length <= 7){
		msg_err += 'Clave Operación - Debe introducir una clave de operación válida \n';
	}*/
	
	if (msg_err.length>0){
		alert('Estimado usuario favor de validar los siguientes campos: \n\n'+msg_err);
		return;
	}
	
	document.forms[0].evento.value= '0X250100C';//modificación
	
	document.AUMXVE21101.N_HDN_DESC_ENTIDAD.value = descripcion;
	document.AUMXVE21101.N_HDN_D_CALLE.value = calle;
	document.AUMXVE21101.N_HDN_D_NUM_EXT.value = num_ext;
	document.AUMXVE21101.N_HDN_D_NUM_INT.value = num_int;
	document.AUMXVE21101.N_HDN_D_COL.value = colonia;
	document.AUMXVE21101.N_HDN_D_DEL_MUN.value = del_mun;
	document.AUMXVE21101.N_HDN_D_CODPOS.value = codPostal;
	document.AUMXVE21101.N_HDN_D_CIUDAD.value = ciudad;
	document.AUMXVE21101.N_HDN_D_ENTIDAD.value = entidad;
	document.AUMXVE21101.N_HDN_D_TEL1.value = tel1;
	document.AUMXVE21101.N_HDN_D_EXT1.value = ext1;
	document.AUMXVE21101.N_HDN_D_TEL2.value = tel2;
	document.AUMXVE21101.N_HDN_D_EXT2.value = ext2;
	//document.AUMXVE21101.N_HDN_CVE_OPER.value = clave;
	//Se agregó por modificación
	document.AUMXVE21101.N_HDN_PLAZA_CR.value = cr;
	EnviarFormulario();		
}