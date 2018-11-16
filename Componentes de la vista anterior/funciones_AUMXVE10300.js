// JavaScript Document
// Componente: AUMXVE10300

		function trim(cadena){
			for(i=0; i<cadena.length; ){
				if(cadena.charAt(i)==" ")
					cadena=cadena.substring(i+1, cadena.length);
				else
				break;
			}
			for(i=cadena.length-1; i>=0; i=cadena.length-1){
				if(cadena.charAt(i)==" ")
					cadena=cadena.substring(0,i);
				else
				break;
			}
			return cadena;
		}
		
		function doPerfil(aplic){
			if(aplic!="-1"){
				var s_aplic = aplic.split('-');
				document.AUMXVE10300.N_HDN_S_APLIC.value = s_aplic[0];
				document.AUMXVE10300.S_NOM_APLIC.value = s_aplic[1];
				document.forms[0].evento.value= "0X2501016";
				document.forms[0].submit();
			}
		}

		function jsAsignar(){
			var msg_err="";

			var aplic = document.AUMXVE10300.N_HDN_S_APLIC.value;

			if(aplic==""){
				msg_err += "Aplicación  -  Debe seleccionar una aplicación\n";

			}
			if(document.AUMXVE10300.cmb_perfil.options[document.AUMXVE10300.cmb_perfil.selectedIndex].value == "-1"){
				msg_err += "Perfil  -  Debe seleccionar un perfil\n";
			}else{
				var perfil = document.AUMXVE10300.cmb_perfil.options[document.AUMXVE10300.cmb_perfil.selectedIndex].value;
				 var s_perfil = perfil.split('-');
				document.AUMXVE10300.S_PERFIL.value = s_perfil[0];
				document.AUMXVE10300.S_NOM_PERFIL.value = s_perfil[1];
			}


			if (msg_err.length > 0){
				alert("Estimado usuario favor de validar los siguientes campos: \n\n"+ msg_err);
				return;
			}else{
				document.forms[0].evento.value= "0X250100F";
				document.forms[0].submit();
			}

		}

			
		function jsLanzaMensaje(){
			//String.prototype.trim = function(){ return this.replace(/^\s+|\s+$/g,'') }				
			var erBandera = document.getElementById("ER_BANDERA").value;

			if(erBandera == "1"){
				var mensajeEr = document.getElementById("ER_CODIGO").value;
				mensajeEr = trim(mensajeEr);
				var mensajeAv = document.getElementById("AV_CODIGO").value;
				mensajeAv = trim(mensajeAv);

				if(mensajeEr != ""){
					alert(mensajeEr);
				}else if(mensajeAv != ""){
					alert(mensajeAv);
				}else{
					alert("Estimado usuario:\n Ocurrio un error inesperado");
				}
				document.getElementById("ER_BANDERA").value = "";
				document.getElementById("ER_CODIGO").value = "";
				document.getElementById("AV_CODIGO").value = "";
			}
		}
