// JavaScript Document
// Componente AUMXVE10200

	function SelFunc(){
		var radios = document.getElementsByName("RDB_EMPRESA").length;
		var cadena = "";
		if(radios <= 0){
			return false;	
		}
		if(radios > 1){
			for(i = 0; i < radios; i++){
				if(document.AUMXVE10200.RDB_EMPRESA[i].checked==true){
					var cadena = document.AUMXVE10200.RDB_EMPRESA[i].value;
					var arreglo = cadena.split("|");
					break;
				}
			}
		}else{
			var cadena = document.AUMXVE10200.RDB_EMPRESA.value;
			var arreglo = cadena.split("|");
		}
		if(cadena==""){
			alert("Estimado usuario favor de validar los siguientes campos: \n     Referencia - Seleccionar una referencia ");

		}else{
			document.AUMXVE10200.N_HDN_REFEREN.value = arreglo[0];
			document.AUMXVE10200.N_HDN_REFDESC.value = arreglo[1];
			document.AUMXVE10200.N_HDN_ESTADOE.value = arreglo[2];
			document.AUMXVE10200.N_HDN_ADMINEM.value = arreglo[3];
			document.AUMXVE10200.N_HDN_CONTACT.value = arreglo[4];
			document.AUMXVE10200.N_HDN_APPTITU.value = arreglo[5];
			document.AUMXVE10200.N_HDN_TITULAR.value = arreglo[6];
			document.AUMXVE10200.N_HDN_EMAIL.value   = arreglo[7];
			document.AUMXVE10200.N_HDN_INDADM.value  = arreglo[8];
			document.AUMXVE10200.N_HDN_NIVELES.value = arreglo[9];
			return true;
		}
	}
	
	function jsAsignar(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X250100F';//asignación
			EnviarFormulario();
		}
	}

	function jsDesasignar(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501010';//desasignación
			EnviarFormulario();
		}
	}

	function jsAsignaTokens(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501019';//asignaTokens
			EnviarFormulario();
		}	
	}

	function jsBajaTokens(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X250101A';//asignaTokens
			EnviarFormulario();
		}	
	}
	
	function jsModificar(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X250101D';//modificar
			EnviarFormulario();
		}
	}

		function jsModificarNuevo(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501033';//modificar
			EnviarFormulario();
		}
	}

	function jsModificarPerfil(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X250101E';//modificarPerfil
			EnviarFormulario();
		}
	}

	function jsBaja(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X250100A';//baja
			EnviarFormulario();
		}
	}
	function jsNiveles(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501011';//niveles
			EnviarFormulario();
		}
	}
	
	function jsAdmin(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501001';//administrador
			EnviarFormulario();
		}
	}
	
	function jsCambioTitular(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501014';//cambioTitular
			EnviarFormulario();
		}
	}
	
	function jsAltaEst(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501022';//Alta Estru
			EnviarFormulario();
		}
	}
	
	function jsModEst(){
		if( SelFunc() ){
			document.forms[0].evento.value = '0X2501023'; //Mod Estruct
			EnviarFormulario();
		}
	}
	
	function jsPaginar (indpag, cvepag){
		document.getElementById("N_HDN_INDPAG").value = indpag;
		document.getElementById("N_HDN_CVEPAG").value = cvepag;
	  
	   //document.forms[0].evento.value = '0X04021011';   
	   document.forms[0].evento.value = '0X250102C';   
	   document.forms[0].submit();
	}
