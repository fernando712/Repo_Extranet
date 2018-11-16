// JavaScript Document
// Componente AUMXVE21100


	var camp1=false;
	var camp2=true;
	var camp3=true;
	var camp4=true;
	var camp5=true;
	var camp6=true;
	var camp7=true;
	var camp8=true;
	var camp9=true;
	var camp10=true;
	var	text="";		
	var emp_numref='';
	var emp_nom_empresa='';	
	var nivel='';
	var nivel_ent_id='';
	var nivel_ent_cr='';
	var nivel_ent_desc='';
	
			
		
	function jsValida(){				
		if (msg_err.length>0){
			alert('Estimado usuario favor de validar los siguientes campos: \n'+msg_err);
			msg_err='';
			return false;
		}else{
			return true;
		}
	}

	function trim(cadena)
	{
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
			
	function jsConsulta(){
		var reg="";
		var estructura="";
		
		text="Estimado usuario favor de validar los siguientes campos:\n";
		
		document.forms[0].evento.value = '0X2501016';//consulta
		
		reg_nv = document.AUMXVE21100.N_HDN_S_NIVEL.value;
		aux = reg_nv.split('|');
		nivel = aux[0];
		
		if(nivel=="1")
		{
			reg = document.forms[0].S_NIVEL_1.value;
		}
		if(nivel =="2")
		{
			reg = document.forms[0].S_NIVEL_2.value;
		}
		if(nivel =="3")
		{
			reg = document.forms[0].S_NIVEL_3.value;
		}
		if(nivel =="4")
		{
			reg = document.forms[0].S_NIVEL_4.value;
		}
		if(nivel =="5")
		{
			reg = document.forms[0].S_NIVEL_5.value;	
		}
		if(nivel =="6")
		{
			reg = document.forms[0].S_NIVEL_6.value;		
		}
		if(nivel =="7")
		{
			reg = document.forms[0].S_NIVEL_7.value;		
		}
		if(nivel =="8")
		{
			reg = document.forms[0].S_NIVEL_8.value;	
		}
		if(nivel =="9")
		{
			reg = document.forms[0].S_NIVEL_9.value;
		}
	
		if(document.getElementById('s_niv').value!=-1){
			camp1=true;
		} else {
			camp1=false;
		}
	   
		num_nv =parseInt(nivel);

		if(num_nv >0){
			if(document.getElementById('cmbEst_1').value!=-1)
				camp2=true;
			else
				camp2=false;
		}
		if(num_nv >1){
			if(document.getElementById('cmbEst_2').value!=-1)
				camp3=true;
			else
				camp3=false;
		}
		if(num_nv >2){
			if(document.getElementById('cmbEst_3').value!=-1)
				camp4=true;
			else
				camp4=false;
		}
		if(num_nv >3){
			if(document.getElementById('cmbEst_4').value!=-1)
				camp5=true;
			else
				camp5=false;
		}
		if(num_nv >4){
			if(document.getElementById('cmbEst_5').value!=-1)
				camp6=true;
			else
				camp6=false;
		}
		if(num_nv >5){
			if(document.getElementById('cmbEst_6').value!=-1)
				camp7=true;
			else
				camp7=false;
		}
		if(num_nv >6){
			if(document.getElementById('cmbEst_7').value!=-1)
				camp8=true;
			else
				camp8=false;
		}
		if(num_nv >7){
			if(document.getElementById('cmbEst_8').value!=-1)
				camp9=true;
			else
				camp9=false;
		}
		if(num_nv >8){
			if(document.getElementById('cmbEst_9').value!=-1)
				camp10=true;
			else
				camp10=false;
		}
				
				
		if(!camp1){
			text+="\nNivel – Debe seleccionar un Nivel";
		}

		if(!camp2){
			text+="\nEstructura Nivel 1 –  Debe seleccionar una entidad";
		}

		if(!camp3){
			text+="\nEstructura Nivel 2 –  Debe seleccionar una entidad";
		}
		
		if(!camp4){
			text+="\nEstructura Nivel 3 –  Debe seleccionar una entidad";
		}
		
		if(!camp5){
			text+="\nEstructura Nivel 4 –  Debe seleccionar una entidad";
		}
		
		if(!camp6){
			text+="\nEstructura Nivel 5 –  Debe seleccionar una entidad";
		}
		
		if(!camp7){
			text+="\nEstructura Nivel 6 –  Debe seleccionar una entidad";
		}
		
		if(!camp8){
			text+="\nEstructura Nivel 7 –  Debe seleccionar una entidad";
		}
			
		if(!camp9){
			text+="\nEstructura Nivel 8 –  Debe seleccionar una entidad";
		}
		
		if(!camp10){
			text+="\nEstructura Nivel 9 –  Debe seleccionar una entidad";
		}
		
			
		if((camp1)&&(camp2)&&(camp3)&&(camp4)&&(camp5)&&(camp7)&&(camp8)&&(camp9)&&(camp10)){
			estructura = reg.split('|');
			document.forms[0].N_HDN_S_ENT_ID.value=estructura[0];
			document.AUMXVE21100.submit();
		} else {
			alert(text);
		}
		
	}			
	
	function doEntidad1(nivel){
		if(nivel!="-1"){
			document.forms[0].N_HDN_S_NIVEL.value=nivel;
			document.forms[0].IDENTI.value="00000";
			document.forms[0].NIVENT.value="1";
			document.AUMXVE21100.evento.value="0X2501004"; //estructuras
			document.AUMXVE21100.submit();
		}

	}
	
	function doEntidadN(nivel,reg){
		var aux_nv = document.forms[0].N_HDN_S_NIVEL.value;
		var nv = aux_nv.split('|');
		var num_nv = nv[0];
		var n_nv=0;
		var estructura = reg.split('|');

		if(nivel=="1"){
			document.forms[0].S_NIVEL_1.value=reg;
		}
		if(nivel =="2"){
			document.forms[0].S_NIVEL_2.value=reg;
		}
		if(nivel =="3"){
			document.forms[0].S_NIVEL_3.value=reg;
		}
		if(nivel =="4"){
			document.forms[0].S_NIVEL_4.value=reg;	
		}
		if(nivel =="5"){
			document.forms[0].S_NIVEL_5.value=reg;		
		}
		if(nivel =="6"){
			document.forms[0].S_NIVEL_6.value=reg;		
		}
		if(nivel =="7"){
			document.forms[0].S_NIVEL_7.value=reg;		
		}
		if(nivel =="8"){
			document.forms[0].S_NIVEL_8.value=reg;		
		}
		if(nivel =="9"){
			document.forms[0].S_NIVEL_9.value=reg;
		}
		
		if(nivel == num_nv){
			document.forms[0].IDENTI.value = estructura[0];
				
		}else{
			n_nv =parseInt(nivel)+1;
			document.forms[0].IDENTI.value = estructura[0];
			document.forms[0].NIVENT.value = n_nv;
			document.AUMXVE21100.evento.value="0X2501004"; 
			document.AUMXVE21100.submit();
		}			
	}
	
	function jsLanzaMensaje()
	{
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