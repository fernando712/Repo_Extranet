const expRegEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
const alfa8 = /[A-Za-z0-9]{8}/;
//--------------------------Funciones para activar modal------------------------------------------------------
function showModal(idModal, idMessage, message){
	$("#"+idMessage).html(message);
	$("#"+idModal).openModal({
		anchoModal: '500',
		altoModal: '220',
		posicionizq: '21',
		posicionTop: '30',
		cerrarModal: 'cerrarModal', 
		tituloModal: 'tituloModal',
		contenidoModal: 'contenidoModal',
		informacionModal: 'informacionModal',
		contenidoBoton: 'contenidoBoton'
	});	
	$(".closeModal").click(function(){
		$($(this)).prop('onclick',null).off('click');
		$("#"+idModal).closeModal();
	});
}

function showErrorModal(message){
	showModal("errorModal", "messageError", message);
}

function showNotification(message){
	showModal("notificationModal", "messageInfo", message);
};

function showPrint(section,transaction,message){
	showModal("printModal","messageSuccess",message);
	printData(section,transaction);	
}

function printData(section,transaction){
	$('#imprimirActual').click(function(event){
		event.preventDefault();
		$($(this)).prop('onclick',null).off('click');
		$('#printModal').closeModal();
		$("#printingArea").html("");
		if(transaction=="unsubscribe"){
			$(section).find(".card").prepend("<div class='card-header blue first' style='text-align:center'>"+
												"<h2>Baja de Referencia</h2>"+
											 "</div>");
		}
		html2canvas(section).then(function(canvas) {
			var imageBase64 =canvas.toDataURL("image/png",1.0);
			var imgElement = '<img id="imageToPrint" src="'+imageBase64+'" alt="">'
			$("#printingArea").append(imgElement);
			$("#imageToPrint").print();
		});
	});
}

function activaConfirmar(message){
	showModal("modalConfirmar", "lblConfirmar", message);
};

//---------------------------Funciones para MODIFICAR 10500.jsp---------------------------------------------
//---------------------------Funciones para MODIFICAR 10500.jsp---------------------------------------------
//---------------------------Funciones para MODIFICAR 10500.jsp---------------------------------------------
//---------------------------Funciones para MODIFICAR 10500.jsp---------------------------------------------
function changeClientIndicator(){
	clientIndicator=false;
}

//-----------------------------------Funcion para el boton busqueda------------------------------
//-----------------------------------Funcion para el boton busqueda------------------------------
function jsClient(){
	var clientNumber = $('#clientNumber').val();	
	var msg_err='';
	var companyName;
	var parameters = "&numCliente="+clientNumber;
	var urlAjax = $("#signup").attr("action")+ "&ventana="+$("#ventana").val()+"&evento=0X2501016"+parameters;
	
	if(!clientNumber || !alfa8.test(clientNumber)){
		msg_err += "<div>N\u00FAmero de cliente - El n\u00FAmero de cliente debe contener 8 caracteres alfanum\u00E9ricos.</div>"
	}
	if(msg_err){
		message="<div>Estimado usuario, favor de validar los siguientes campos:</div>"+msg_err;
		showNotification(message);
	}
	else if(clientIndicator){
		$.post({
			contentType: "application/json",
			dataType: "json",
			processData: false,
			url: urlAjax,
			async: false
		})
		.done(function(data){
			response = responseJSON!=undefined ? data.responseJSON.response : data;
			try{
				companyName = response.companyName;
				if(companyName == ""){
					showNotification("No hay datos del cliente");
				}else{
					activaConfirmar("Consulta Exitosa");
					$("#companyName").val(companyName);
				}
			}catch(err){
				showNotification("No hay datos");
			}
		})
		.fail(function(error){
			error = error.responseJSON != undefined ? error.responseJSON.response : error;
			showErrorModal(error.message);
		});       
	}
}


//-----------------------------------Funcion para el boton modificar------------------------------
//-----------------------------------Funcion para el boton modificar------------------------------
//var bandera = false;
function updateData(){
	var n_niveles = $('#levels').val();
	var n_contact = $('#contactName').val();
	var n_calle = $('#street').val();
	var n_numext = $('#outdoorNumber').val();
	var n_numint = $('#interiorNumber').val();
	var n_colonia = $('#neighborhood').val();
	var n_delmun = $('#municipality').val();
	var n_codpos = $('#zipcode').val();
	var n_ciudad = $('#city').val();
	var n_entidad = $('#state').val();
	var n_calleref = $('#referenceStreet').val();
	var n_telef01 = $('#telephone1').val();
	var n_telef02 = $('#telephone2').val();
	var n_exttel1 = $('#extTelephone1').val();
	var n_exttel2 = $('#extTelephone2').val();
	var n_email = $('#email').val();
	var n_refdesc = $('#companyName').val();
	
	if($("#adminType").prop("checked")){
		gebn("h_tipadmi").value="S";
	}else{
		gebn("h_tipadmi").value="N";
	}	

	var parameters = "&h_refdesc="+n_refdesc+"&h_niveles="+n_niveles+"&h_contact="+n_contact+"&h_email="+n_email+"&h_calle="+n_calle+"&h_numext="+n_numext+"&h_numint="+n_numint+"&h_colonia="+n_colonia+"&h_codpos="+n_codpos+"&h_delmun="+n_delmun+"&h_ciudad="+n_ciudad+"&h_entidad="+n_entidad+"&h_calleref="+n_calleref+"&h_telef01="+n_telef01+"&h_exttel1="+n_exttel1+"&h_telef02="+n_telef02+"&h_exttel2="+n_exttel2;
	var urlAjax = $("#signup").attr("action")+ "&ventana="+$("#ventana").val()+"&evento=0X250100C"+parameters;

	$.post({
		contentType: "application/json",
		dataType: "json",
		processData: false,
		url: urlAjax,
		async: false
	})
	.done(function(data){
		response = data.response != undefined ? data.response : data;	
		try{
			window.top.console.log("Response: ",response);
			$("#referen").val(response.reference);
			$("#referenceHeader").html(response.reference);
			$("#estadoe").val(response.stateCompany);
			//Option
			//Pendiente
			$("#clientNumber").val("");
			$("#companyName").val(response.companyName);
			$("#companyNameHeader").html(response.companyName);
			//Pendiente
			$("#nickName").val("");
			$("#levels").val(response.levels);
			//PENDIENTE
			$("#cr").val("");
			//PENDIENTE
			$("#adminType").prop("checked");
			$("#identifierAdminName").val(response.identifierAdminName);
			$("#contactName").val(response.contactName);
			$("#email").val(response.email);
			$("#street").val(response.street);
			$("#outdoorNumber").val(response.outdoorNumber);
			$("#interiorNumber").val(response.interiorNumber);
			$("#neighborhood").val(response.neighborhood);
			$("#zipcode").val(response.zipcode);
			$("#municipality").val(response.municipality);
			$("#city").val(response.city);
			$("#state").val(response.state);
			$("#referenceStreet").val(response.referenceStreet);
			$("#telephone1").val(response.telephone1);
			$("#extTelephone1").val(response.telephoneExt1);
			$("#telephone2").val(response.telephone2);
			$("#extTelephone2").val(response.telephoneExt2);
			showPrint($("#modifySection")[0],"modify","Sus datos han sido actualizados correctamente");
		}catch(err){
			showErrorModal("Sus datos no han sido actualizados");
		}
	})
	.fail(function(error){
		error = error.responseJSON != undefined ? error.responseJSON.response : error;
		window.top.console.log("responseError: ",error);
		showErrorModal(error.message);
	});
}	


function js_modificar(){
	ok=true;
	var av="Estimado usuario, favor de validar los siguientes campos:\n\n";
	_levels = gebi("levels").value;
	_contact = 	gebi("contactName").value;
	_des_refer = gebi("companyName").value;		
	av="Estimado usuario, favor de validar los siguientes campos:\n\n";
			
	if(_levels==""){
		av+="<div>Nivel - Debe capturar un n\u00FAmero de nivel.</div>";
		ok=false;
	}else{		
		if(parseInt(_levels) < parseInt(startLevel) ){
			av+="<div>Nivel - Debe de ser mayor al nivel inicial ("+startLevel+").</div>";
			ok=false;
		}
	}		
	if(_contact==""){
		av+="<div>Nombre contacto - Debe capturar el nombre del contacto.</div>";
		ok=false;
	}		
	if(_des_refer==""){
		av+="<div>Nombre empresa - Debe capturar el nombre de la empresa.</div>";
		ok=false;
	}
	if(gebi("email").value!="" && !validarEmail(gebi("email"))){
		av+="<div>E-mail - Debe capturar un E-mail  valido.</div>";
		ok=false;
	}				
	if($("#si").prop("checked")){	
		var numCliente = $("#clientNumber").val();	
		if(numCliente == "" || !alfa8.test(numCliente)){						
			if(numCliente == "" ){
				av += '<div>N\u00FAmero de cliente - Debe capturar el n\u00FAmero de cliente.</div>';
				ok=false;
			}
			if(!alfa8.test(numCliente)){
				av += '<div>N\u00FAmero de cliente - El n\u00FAmero de cliente debe contener 8 caracteres alfanum\u00E9ricos.</div>';
				ok=false;
			}			
		}
	}	
	if(!clientIndicator && $("#si").prop("checked")){ 
		av += '<div>N\u00FAmero de cliente - El n\u00FAmero de cliente se debe de validar con el nombre de la empresa.</div>';
		ok=false;
	}			
	if(ok){
		updateData();
	}else{
		showNotification(av);
	}	
}

//-----------------------------------Funcion habilitar/deshabilitar boton busqueda----------------
/*function esCliente(){
	var clientNumber = $("#clientNumber").val();
	if(clientNumber == ""){
		$("#no").prop("checked",true);
		js_IndCli();
	}
	if(clientIndicator){
		document.getElementById('companyName').disabled = true;
	}else{
		document.getElementById('companyName').disabled = false;
	}
}*/

function js_IndCli(){
	radioId=$("input[name='rb_cli']:checked").attr("id"); 
	if(radioId=="si"){
		$("#clientNumber").removeAttr("disabled");
		$("#companyName").removeAttr("disabled");
		$("#btnSearch").removeAttr("disabled");
	}else if(radioId=="no"){
		$("#clientNumber").val(""); 
		$("#clientNumber").prop("disabled","true");
		$("#companyName").prop("disabled","true");
		$("#btnSearch").prop("disabled","true");
	}
}

//-------------------------------------Funciones validar entrada de datos---------------------------------------------------
//-------------------------------------Funciones validar entrada de datos---------------------------------------------------
	 
function valkey(e,tipo){
	tecla=(document.all) ? e.keyCode : e.which;
	//alert(tecla)
	switch(tipo){
		case "numeros": {	
			if(!keyValidator(tecla," 0123456789")) return false;
			return;
		}
		case "importe": {
			if(!keyValidator(tecla,"-0123456789.,")) return false;
			return;
		}  
		case "alfa": {
			if(!keyValidator(tecla,"ABCDEFGHIJKLMNÃ‘OPQRSTUVWXYZ 0123456789.,:;()/-_Ã¡Ã©Ã­Ã³ÃºÃ Ã‰Ã Ã“ÃšabcdefghijklmnÃ±opqrstuvwxyz"))
				return false;           
			return;
		}
		case "letraynumero": {
			if(!keyValidator(tecla,"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 Ã¡Ã©Ã­Ã³ÃºÃ Ã‰Ã Ã“Ãšabcdefghijklmnopqrstuvwxyz"))
				return false;
			return;
		}
		case "letra": {
			if(!keyValidator(tecla,"ABCDEFGHIJKLMNOPQRSTUVWXYZÃ¡Ã©Ã­Ã³ÃºÃ Ã‰Ã Ã“Ãšabcdefghijklmnopqrstuvwxyz"))
				return false;
			return;
		}
		default:  return; 
		break;
	}
}

function keyValidator(strtecla, strtextopermitido){          
	var swok=0;	
	if (strtecla==13||strtecla==8||strtecla==0) return true;
	
	if(strtextopermitido == "$0123456789.")	if(strtecla == 36) return true;
	
	if(strtecla==241 || strtecla == 209) return false;
	
	for(var j=0; j<strtextopermitido.length; j++){
	   charc = strtextopermitido.charCodeAt(j);
	   if (charc==1121)  
	     	charc=209;
	   if ( strtecla == charc ){	
			swok++;
			break;
	   }                                             
	}

	if (swok==0) return false;
	return true;
}

//---------------------------------Funciones para BAJA DE REFERENCIA 10700.jsp---------------------------------
//---------------------------------Funciones para BAJA DE REFERENCIA 10700.jsp---------------------------------
//---------------------------------Funciones para BAJA DE REFERENCIA 10700.jsp---------------------------------
//---------------------------------Funciones para BAJA DE REFERENCIA 10700.jsp---------------------------------

function jsUnsubscribe(){
	var urlAjax = $("#signup").attr("action")+ "&ventana="+$("#ventana").val()+"&evento=0X250100A";
	txtData="<div>Referencia: "+$("#referen").val()+"</div>"+
			"<div>Nombre de la empresa: "+$("#companyName").val()+"</div>"+
			"<div>Nombre del contacto: "+$("#contactName").val()+"</div>";
	showModal("unsubscribeModal","messageUnsubscribe",txtData);
	$("#continueUnsubscribe").click(function(event){
		event.preventDefault();
		$.post({
			contentType: "application/json",
			dataType: "json",
			processData: false,
			url: urlAjax,
			async: false
		})
		.done(function(data){
			response = data.responseJSON != undefined ? data.responseJSON.response : data;
			try{
				showPrint($("#modifySection")[0],"unsubscribe","Baja de referencia realizada");
			}catch(error){
				showErrorModal(error.getMessage());
			}
		})
		.fail(function(error){
			error = error.responseJSON != undefined ? error.responseJSON.response : error;
			showErrorModal(error.message);
		});	
	});
}

//---------------------------------Funciones para REACTIVAR 12900.jsp---------------------------------
//---------------------------------Funciones para REACTIVAR 12900.jsp---------------------------------
//---------------------------------Funciones para REACTIVAR 12900.jsp---------------------------------
//---------------------------------Funciones para REACTIVAR 12900.jsp---------------------------------

function reactivation(){
	$("#accessKey").css("display","inline");
}

function jsReactivate(){
	var urlAjax = $("#signup").attr("action")+ "&ventana="+$("#ventana").val()+"&evento=0X250100D";
	
	$.post({
		contentType: "application/json",
		dataType: "json",
		processData: false,
		url: urlAjax,
		async: false
	})
	.done(function(data){
		response = data.responseJSON != undefined ? data.responseJSON.response : data;
		try{
			reactivation();
			showPrint("Reactivaci\u00F3n de Administrador exitosa");
		}catch(err){
			showErrorModal("El administrador no ha sido reactivado");
		}
	})
	.fail(function(error){
		error = error.responseJSON != undefined ? error.responseJSON.response : error;
		showErrorModal(error.message);
	});	
}

//---------------------------------Funciones para 10300.jsp (vincular) y 10400.jsp(desvincular)----------------
//---------------------------------Funciones para 10300.jsp (vincular) y 10400.jsp(desvincular)----------------
//---------------------------------Funciones para 10300.jsp (vincular) y 10400.jsp(desvincular)----------------
//---------------------------------Funciones para 10300.jsp (vincular) y 10400.jsp(desvincular)----------------
//---------------------------------Funcion del boton que cambia el valor por el radio (Menu aplicacion)--------
//---------------------------------Funcion del boton que cambia el valor por el radio (Menu aplicacion)--------


function jsAplication(){
	if($('#attach').prop('checked')){
		$('#btnAplication').prop({
			disabled: false,
			value: 'Vincular'
		});
		$('#aplicationCombo').prop('disabled', false);
		$('#profile').prop('disabled', false);
		$("input[name='aplicationCheck']").prop("checked",false);
		$("input[name='aplicationCheck']").prop("disabled",true);
	}
	else{
		$('#btnAplication').prop('value', 'Desvincular');
		$('select#aplicationCombo').prop({
			disabled: true,
			selectedIndex: 0
		});
		$('select#profile').prop({
			disabled: true,
			selectedIndex: 0
		});
		$("input[name='aplicationCheck']").prop("disabled",false);
	}
}

//------------------------------------Funciones para 10300.jsp (vincular)-----------------------------------
//------------------------------------Funciones para 10300.jsp (vincular)-----------------------------------
/*function trim(cadena){
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
}*/

function jsDoProfile(aplic){
	var _referen = $("#N_HDN_REFEREN").val();
	//debugger;
	if(aplic!="-1"){
		var s_aplic = aplic.split('-');
		var _sApli = s_aplic[0];
		var _sNomAplic = s_aplic[1];
		var _sPerfil = $("#S_PERFIL").val();
		var _sNomPerfil = $("#S_NOM_PERFIL").val();
		var parameters = "&N_HDN_REFEREN="+_referen+"&N_HDN_S_APLIC="+_sApli+"&S_NOM_APLIC="+_sNomAplic+"&S_PERFIL="+_sPerfil+"&S_NOM_PERFIL="+_sNomPerfil;
		var urlAjax = $("#signup").attr("action")+ "&ventana="+$("#ventana").val()+"&evento=0X2501041"+parameters;
		$.post({
			contentType: "application/json",
			dataType: "json",
			processData: false,
			url: urlAjax,
			async: false
		})
		.done(function(data){
			response = data.responseJSON != undefined ? data.responseJSON.response : data;
			window.top.console.log(response);
			//var i = 0;
			//var codPerf = "";
			//var nomPerf = "";			
			//while(!)
			//response = data.responseJson != undefined ? data : data;
			//alert(response.sNomAplic);
			//alert(JSON.stringify(response));
		})
		.fail(function(error){
			error = error.responseJSON != undefined ? error.responseJSON.response : error;
			window.top.console.log(error);
			//response = data.responseJson != undefined ? data : data;
			//alert(JSON.stringify(response));
			//activaModal("Ocurri\u00F3 un error en la transacci\u00F3n");
		});	
	}
}

/*function jsLanzaMensaje(){
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
}*/

//----------------Funciones para 10800.jsp(modificar niveles)---------------------------------------------
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
			gebi("keyLevel"+i).value=datos[i][2];
		}
	}	
}

//----------------Funciones para 12600.jsp(Asignar token)---------------------------------------------
//----------------Funciones para 12600.jsp(Asignar token)---------------------------------------------

//Onchange cmbModelos combo
function SelDispositivo(modelo){
	if(modelo.value != "-1"){
		document.getElementById('devicesSelector').disabled = false;
	}else{
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

//-----------------------------Funciones para estrcutura----------------------------------------------
//-----------------------------Funciones para estrcutura----------------------------------------------

//---------------Funcion del boton que cambia el valor por el radio(Menu estructura)------------------
//---------------Funcion del boton que cambia el valor por el radio(Menu estructura)------------------

function js_estructura(){
	if( $('#register').prop('checked')) {
		$('#btnStructure').prop({
			disabled: false,
			value: 'Alta'
		});
		$("#levelSelector").prop("disabled",false);
	}else{
		$('#btnStructure').prop({
			disabled: false,
			value: 'Modificar'
		});
		$("#levelSelector").prop("disabled",false);
	}
}