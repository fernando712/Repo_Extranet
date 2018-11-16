<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
	<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Last-Modified" content="0">
	<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, shrink-to-fit=no" />
	<title>Modificar de Empresa</title>
	<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
	<link rel="stylesheet" type="text/css" href="/aumx_es_web_pub/css/bundle.css">
	<link rel="stylesheet" type="text/css" href="/aumx_es_web_pub/css/styles.css">
	<link rel="stylesheet" type="text/css" href="/aumx_es_web_pub/css/jquery.modal.css">
	
	<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>	
	<script type="text/javascript" src="/aumx_es_web_pub/js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/jQuery.print.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/tether.min.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/html2canvas.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/promise.min.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/modal.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE03301.js"></script>	

<script>
	var clientIndicator = '<%=utils.getValorContexto("BAN_CTE").trim()%>';
</script>
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>">
	<customform>
		<!-- Customhidden de modificar -->
		<customhidden><input name="h_niveles" type="hidden" value='<%= utils.getValorContexto("NIVELES") %>' /></customhidden>
		<customhidden><input name="h_contact" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
		<customhidden><input name="h_calle" type="hidden" value='<%= utils.getValorContexto("CALLE") %>' /></customhidden>
		<customhidden><input name="h_numext" type="hidden" value='<%= utils.getValorContexto("NUMEXT") %>' /></customhidden>
		<customhidden><input name="h_colonia" type="hidden" value='<%= utils.getValorContexto("COLONIA") %>' /></customhidden>
		<customhidden><input name="h_numint" type="hidden" value='<%= utils.getValorContexto("NUMINT") %>' /></customhidden>
		<customhidden><input name="h_delmun" type="hidden" value='<%= utils.getValorContexto("DELMUN") %>' /></customhidden>
		<customhidden><input name="h_codpos" type="hidden" value='<%= utils.getValorContexto("CODPOS") %>' /></customhidden>
		<customhidden><input name="h_ciudad" type="hidden" value='<%= utils.getValorContexto("CIUDAD") %>' /></customhidden>
		<customhidden><input name="h_entidad" type="hidden" value='<%= utils.getValorContexto("ENTIDAD") %>' /></customhidden>
		<customhidden><input name="h_calleref" type="hidden" value='<%= utils.getValorContexto("CALLEREF") %>' /></customhidden>
		<customhidden><input name="h_telef01" type="hidden" value='<%= utils.getValorContexto("TELEF01") %>' /></customhidden>
		<customhidden><input name="h_exttel1" type="hidden" value='<%= utils.getValorContexto("EXTTEL1") %>' /></customhidden>
		<customhidden><input name="h_telef02" type="hidden" value='<%= utils.getValorContexto("TELEF02") %>' /></customhidden>
		<customhidden><input name="h_exttel2" type="hidden" value='<%= utils.getValorContexto("EXTTEL2") %>' /></customhidden>
		<customhidden><input name="h_email" type="hidden" value='<%= utils.getValorContexto("EMAIL") %>' /></customhidden>
		<customhidden><input name="h_cve_oper" type="hidden" value='<%= utils.getValorContexto("CVE_OPER") %>' /></customhidden>
		<customhidden><input name="h_codacc" type="hidden" value='<%= utils.getValorContexto("CODACC") %>' /></customhidden>
		<customhidden><input name="h_estadoe" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
		<customhidden><input name="h_refdesc" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
		<customhidden><input name="h_tipadmi" id="h_tipadmi" type="hidden" value='<%= utils.getValorContexto("TIPADMI") %>' /></customhidden>
		<customhidden><input id="banCTE" name="BAN_CTE" type="hidden" value='<%= utils.getValorContexto("BAN_CTE") %>' /></customhidden>
		<customhidden><input name="h_tipemp" type="hidden" value='<%= utils.getValorContexto("TIPEMP") %>' /></customhidden>
		<customhidden><input name="numCliente" type="hidden" value='<%= utils.getValorContexto("NUM_CLIENTE") %>' /></customhidden>

		<!-- customhidden de vincular aplicacion -->
		<customhidden><input id="N_HDN_REFEREN" name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
		<customhidden><input id="N_HDN_S_APLIC" name="N_HDN_S_APLIC" type="hidden" value='<%= utils.getValorContexto("S_APLIC") %>' /></customhidden>
		<customhidden><input id="S_NOM_APLIC" name="S_NOM_APLIC" type="hidden" value='<%= utils.getValorContexto("S_NOM_APLIC") %>' /></customhidden>
		<customhidden><input id="S_PERFIL" name="S_PERFIL" type="hidden" value='<%= utils.getValorContexto("S_PERFIL") %>' /></customhidden>
		<customhidden><input id="S_NOM_PERFIL" name="S_NOM_PERFIL" type="hidden" value='<%= utils.getValorContexto("S_NOM_PERFIL") %>' /></customhidden>
		<customhidden><input id="AV_CODIGO" name="AV_CODIGO" type="hidden" value='<%= utils.getValorContexto("AV_CODIGO") %>' /></customhidden>
		<customhidden><input id="ER_CODIGO" name="ER_CODIGO" type="hidden" value='<%= utils.getValorContexto("ER_CODIGO") %>' /></customhidden>
		<customhidden><input id="ER_BANDERA"name="ER_BANDERA" type="hidden" value='<%= utils.getValorContexto("ER_BANDERA") %>' /></customhidden>


		<!-- customhidden de desvincular aplicacion -->
		<customhidden><input name="N_HDN_LST_APLIC" type="hidden" value='<%= utils.getValorContexto("LST_APLIC") %>' /></customhidden>

		<!-- customhidden de asignar dispositivos -->
		<customhidden><input name="SEL_DISP" type="hidden" value='<%= utils.getValorContexto("SEL_DISP") %>' /></customhidden>

		<!-- customhidden de modificar niveles-->
		<customhidden><input name="h_apptitu" type="hidden" value='<%= utils.getValorContexto("APPTITU") %>' /></customhidden>
		<customhidden><input name="h_indadm" type="hidden" value='<%= utils.getValorContexto("INDADM") %>' /></customhidden>
		<customhidden><input name="h_lst_aniv" type="hidden" value='<%= utils.getValorContexto("LST_ANIV") %>' /></customhidden>

		<!-- customhidden de reactivar administrador -->
		<customhidden><input name="ADMINEM" type="hidden" value='<%= utils.getValorContexto("ADMINEM") %>' /></customhidden>
		<customhidden><input name="CVE_ACCESO" type="hidden" value='<%= utils.getValorContexto("CVE_ACCESO") %>' /></customhidden>
		<script>startLevel="<%=utils.getValorContexto("NIVELES")%>";</script>

		<div class="container">
			<header>
				<div class="row">
					<p class="pb-1 mx-2 my-2 title"><span class="icon icon-11 pt-2"></span> -Modificaci&oacute;n de Empresa</p>
				</div>
			</header>			
		</div>
		<div class="container">
			<form id="signup" name="AUMXVE03301" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" id="evento" name="evento">
  				<input type="hidden" id="flujo" name="flujo" value="<%=utils.getFlujoID()%>">
  				<input type="hidden" id="ventana" name="ventana" value="<%=utils.getVentana()%>">
				<input type="hidden" name="hdn_DESTINO" id="hdn_DESTINO" value="<%=utils.getDestinoFormulario()%>" />
				<input type="hidden" name="MENSAJE" id="MENSAJE" value="<%= utils.getValorContexto("MENSAJE") %>" />
				<input type="hidden" name="COD_ERROR" id="COD_ERROR" value="<%= utils.getValorContexto("COD_ERROR") %>" />
				<div class="col-12 row subtitle">
					<div class="col-5 center">
						REFERENCIA: &nbsp;&nbsp;&nbsp;
						<span id="referenceHeader"><%=utils.getValorContexto("REFEREN")%></span>
					</div>
					<div class="col-7 center">
						NOMBRE DE LA EMPRESA: &nbsp;&nbsp;&nbsp;
						<span id="companyNameHeader"><%=utils.getValorContexto("REFDESC")%></span>
					</div>
				</div>
				<br/>
				<div class="card">
					<div id="accordion" class="card-block accordion" role="tablist" aria-multiselectable="true">
						<!-- ModifySection -->
						<div id="modifySection" class="card">
							<div class="card-header" role="tab" id="heading-0">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-0" aria-expanded="false" aria-controls="collapse-0">
									<span class="icon icon-58"></span>Modificar
								</a>
							</div>
							<div id="collapse-0" class="collapse" role="tabpanel" aria-labelledby="heading-0">
								<div class="card-block sin-space">
									<div class="card">
										<div class="card-header blue first">
											<h4>Datos de la empresa</h4>
										</div>
										<div class="card-block sin-space">			
											<div class="col-12 row">
												<div class="col-2">
													<label>Referencia</label><br/>
													<input class="form-control form-control-sm col-sm-10" type="text" id="referen" name="REFEREN" value='<%=utils.getValorContexto("REFEREN").trim()%>' size="30" readonly>
												</div>
												<div class="col-2">
													<label>Estado</label><br/>
													<input id="estadoe" class="form-control form-control-sm col-sm-10" type="text" name="ESTADO" value='<%=utils.getValorContexto("ESTADOE")=="A1"?"ACTIVO":"NO ACTIVO"%>' size="30" readonly>
												</div>
												<div class="col-2">
													<label>Cliente Bancomer</label><br/>
													<input type="radio" name="rb_cli" id="si" onclick="js_IndCli();" checked>&nbsp;
													<label for="si">Si</label>&nbsp;&nbsp;
													<input type="radio" name="rb_cli" id="no" onclick="js_IndCli();">&nbsp;
													<label for= "no">No</label>		
												</div>
												<div class="col-2">
													<label>N&uacute;mero de Cliente</label><br/>
													<input id="clientNumber" class="form-control form-control-sm col-sm-10" type="text" autocomplete="off" size="8" maxlength="8" sentido="N" value='<%=utils.getValorContexto("NUM_CLIENTE").trim()%>' onkeydown="changeClientIndicator();">
													<%=getIndicadorRequeridoDerecha(false)%>
												</div>
												<div class="col-2" data-html2canvas-ignore>
													<br/>
													<input id="btnSearch" class="btn btn-success" type="button" value="B&uacute;squeda" onclick="jsClient();"><br/>
												</div>
												<div class="col-2" data-html2canvas-ignore>
													<br/>
													<input id="btnModify" class="btn btn-success" type="button" value="Modificar" onclick="js_modificar();">
												</div>
											</div>					
											<div class="col-12 row">
												<div class="col-4">
													<label>Nombre de la empresa</label><br/>
													<input  id="companyName" class="form-control form-control-sm col-sm-10" type="text" size="70" maxlength="60" value='<%=utils.getValorContexto("REFDESC").trim()%>' onkeypress="return valkey(event,'alfa');">
												</div>
												<div class="col-2">
													<label>Nombre corto</label><br/>
													<input id="nickName" class="form-control form-control-sm col-sm-10" type="text" size="6" maxlength="3" value='<%=utils.getValorContexto("NOMCTO").trim()%>' onkeypress="return valkey(event,'letra');">
													<%=getIndicadorRequeridoDerecha(false)%>
												</div>
												<div class="col-4">
													<br/>
													<label class="text-success">Capture el nombre corto si es empresa Aduex,<br/>este dato no podr&aacute; ser modificado posteriormente</label>
												</div>
												<div class="col-2" data-html2canvas-ignore>
													<br/>
													<input id="btnUnsubscribe" class="btn btn-success" type="button" value="Baja" onclick="jsUnsubscribe();">
												</div>
											</div>
											<div class="col-12 row">
												<div class="col-2">
													<label>Nivel</label>
													<br/>
													<input id="levels" name="levels" class="form-control form-control-sm col-sm-10" type="text" maxlength="1" <%= (utils.getValorContexto("TIPEMP").equals("P"))?"class=\"disabled\"value=\"1\"":"class=\"requerido\"value=\"" + utils.getValorContexto("NIVELES").trim() + "\"" %> onkeypress="return esValidoNum(event)">
												</div>
												<div class="col-2">
													<label>CR</label><br/>
													<input id="cr" class="form-control form-control-sm col-sm-10" type="text"  size="6" maxlength="6" value='<%=utils.getValorContexto("CR").trim()%>'>
													<%=getIndicadorRequeridoDerecha(false)%>
												</div>
												<div class="col-2">
													<label>Delegaci&oacute;n de Administraci&oacute;n</label><br/>
													<input id="adminType" type="checkbox" size="2" value='' <%=(utils.getValorContexto("TIPADMI").equals("N"))?"":"Checked"%>> &nbsp;
													<label for="adminType">Administrador</label>
												</div>
												<div class="col-2">
													<label>Identificador de administrador</label><br/>
													<input id="identifierAdminName" class="form-control form-control-sm col-sm-10" type="text" name="ADMINEN" value='<%=utils.getValorContexto("ADMINEM").trim()%>' readonly>
												</div>
												<div class="col-2">
													<span id="accessKey" style="display:none">
														<label>Nueva clave de acceso</label><br/>
														<label class="text-danger"><%=utils.getValorContexto("CVE_ACCESO").trim()%></label>
													</span>
												</div>
												<div class="col-2" data-html2canvas-ignore>
													<br/>
													<input id="btnReactivate" class="btn btn-success" type="button" value="Reactivar" onclick="jsReactivate();">
												</div>
											</div>
										</div>
										<div class="card-header blue first">
											<h4>Datos del contacto</h4>
										</div>
										<div class="card-block sin-space">
											<div class="col-12 row">
												<div class="col-6">
													<label>Nombre del contacto</label>
													<br/>
													<input id="contactName" class="form-control form-control-sm col-sm-10" type="text" size="35" maxlength="35" value='<%=utils.getValorContexto("CONTACT").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-6">
													<label>E-mail</label>
													<br/>
													<input id="email" class="form-control form-control-sm col-sm-10" type="text" size="45" maxlength="45" value='<%=utils.getValorContexto("EMAIL").trim()%>'>
												</div>
											</div>
											<div class="col-12">
												<label>Direcci&oacute;n</label>
											</div>
											<div class="col-12 row">
												<div class="col-4">
													<label>Calle</label><br/>
													<input id="street" class="form-control form-control-sm col-sm-10" type="text" size="35" maxlength="35" value='<%=utils.getValorContexto("CALLE").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-2">
													<label>N&uacute;mero exterior</label><br/>
													<input id="outdoorNumber" class="form-control form-control-sm col-sm-10" type="text" size="5" maxlength="5" value='<%=utils.getValorContexto("NUMEXT").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-2">
													<label>N&uacute;mero interior</label><br/>
													<input id="interiorNumber" class="form-control form-control-sm col-sm-10" type="text" size="5" maxlength="5" value='<%=utils.getValorContexto("NUMINT").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-2">
													<label>Colonia</label><br/>
													<input id="neighborhood" class="form-control form-control-sm col-sm-10" type="text" size="30" maxlength="35" value='<%=utils.getValorContexto("COLONIA").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-2">
													<label>C&oacute;digo postal</label><br/>
													<input id="zipcode" class="form-control form-control-sm col-sm-10" type="text" size="30" maxlength="5" value='<%=utils.getValorContexto("CODPOS").trim()%>' onkeypress="return esValidoNum(event)">
												</div>
											</div>
											<div class="col-12 row">
												<div class="col-4">
													<label>Delegaci&oacute;n o Municipio</label><br/>
													<input id="municipality" class="form-control form-control-sm col-sm-10" type="text" size="30" maxlength="35" value='<%=utils.getValorContexto("DELMUN").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-2">
													<label>Ciudad</label><br/>
													<input id="city" class="form-control form-control-sm col-sm-10" type="text" size="30" maxlength="30" value='<%=utils.getValorContexto("CIUDAD").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-2">
													<label>Entidad Federativa</label><br/>
													<input id="state" class="form-control form-control-sm col-sm-10" type="text" size="25" maxlength="25" value='<%=utils.getValorContexto("ENTIDAD").trim()%>' onkeypress="return esValidoText(event)">
												</div>
												<div class="col-2">
													<label>Calle de referencia</label><br/>
													<input id="referenceStreet" class="form-control form-control-sm col-sm-10" type="text" size="30" maxlength="40" value='<%=utils.getValorContexto("CALLEREF").trim()%>'onkeypress="return esValidoText(event)">
												</div>
											</div>
											<div class="col-12 row">
												<div class="col-4">
													<label>Tel&eacute;fono 1</label><br/>
													<input id="telephone1" class="form-control form-control-sm col-sm-10" type="text" size="10" maxlength="10" value='<%=utils.getValorContexto("TELEF01").trim()%>' onkeypress="return esValidoNum(event)">
												</div>
												<div class="col-2">
													<label>Ext 1</label><br/>
													<input id="extTelephone1" class="form-control form-control-sm col-sm-10" type="text" size="5" maxlength="5" value='<%=utils.getValorContexto("EXTTEL1").trim()%>' onkeypress="return esValidoNum(event)">
												</div>
												<div class="col-2">
													<label>Tel&eacute;fono 2</label><br/>
													<input id="telephone2" class="form-control form-control-sm col-sm-10" type="text" size="10" maxlength="10" value='<%=utils.getValorContexto("TELEF02").trim()%>' onkeypress="return esValidoNum(event)">
												</div>
												<div class="col-2">
													<label>Ext 2</label><br/>
													<input id="extTelephone2" class="form-control form-control-sm col-sm-10" type="text" size="5" maxlength="5" value='<%=utils.getValorContexto("EXTTEL2").trim()%>' onkeypress="return esValidoNum(event)">
												</div>
											</div>
											<br/>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<!-- AttachSection -->		
						<div id="attachSection" class="card">
							<div class="card-header" role="tab" id="heading-1">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-1" aria-expanded="false" aria-controls="collapse-1">
									<span class="icon icon-147"></span>Vincular - Desvincular Aplicaciones
								</a>
							</div>
							<div id="collapse-1" class="collapse" role="tabpanel" aria-labelledby="heading-1">
								<div class="card-block sin-space">
									<div id="attachArea" class="card">
										<div class="card-header blue first">
											<h4>Aplicaciones</h4>
										</div>
										<div class="card-block">
											<div class="col-12 row">
												<div class="col-2">
													<input id="attach" type="radio" name="radSize" onclick="jsAplication();">&nbsp;
													<label for="attach">Vincular</label><br>
													<input id="unAttach" type="radio" name="radSize" onclick="jsAplication();">&nbsp;
													<label for="unAttach">Desvincular</label>
												</div>
												<div class="col-4 row">
													<label class="labelSelect">Aplicaci&oacute;n</label>&nbsp;&nbsp;&nbsp;
													<select id="aplicationCombo" class="form-control col-sm-7" name="cmb_apli" disabled onchange="jsjsDoProfile_doPerfil(this.value)"">
														<option value="-1">Seleccione aplicaci&oacute;n</option>
														<%
															int i = 0;
															String cod_aplic = "";
															String nom_aplic = "";
															int tam_Lista = 0;

															tam_Lista = utils.getDatoContexto("LST_APLIC").getLongitud();

															for(i = 0; i < tam_Lista; i++){
																cod_aplic = utils.getValorContexto("LST_APLIC." + i + ".CODAPLI").trim();
																nom_aplic = utils.getValorContexto("LST_APLIC." + i + ".NOMAPLI").trim();

																if(!cod_aplic.equals("EXTU")){				
														%>
																<option value="<%=cod_aplic%>-<%=nom_aplic%>"><%=nom_aplic%></option>
														<%
																}
															}
														%>
													</select>
												</div>
												<div class="col-4 row">
													<label class="labelSelect">Perfil</label>&nbsp;&nbsp;&nbsp;
													<select id="profile" class="form-control col-sm-7" name="cmb_profile" disabled>
														<option value="-1">Seleccione perfil</option>
														<%
															i=0;
															String cod_perfil = "";
															String nom_perfil = "";
						
															while(!utils.getValorContexto("LST_PERF."+i+".CODPERF").equals("")){
																cod_perfil = utils.getValorContexto("LST_PERF." + i + ".CODPERF").trim();
																nom_perfil = utils.getValorContexto("LST_PERF." + i + ".DESPERF").trim();
									
														%>
														<option value="<%=cod_perfil%>-<%=nom_perfil%>"> <%=nom_perfil%> </option>
														<%
															i++;
															}
														%>
													</select>
												</div>
												<div class="col-2">
													<input id="btnAplication" class="btn btn-success" type="button" value="Aceptar" disabled>
												</div>
											</div>
											<br/>
											<div class="col-12 row">
												<div class="col-4">Aplicaci&oacute;n</div>
												<div class="col-4">Perfil</div>
												<div class="col-2">Aplicaci&oacute;n Titular</div>
											</div>
											<br/>
											<%
												int tamLista = 0;
												int contApli = 0;
												try{ 
							
													String apptitu = utils.getValorContexto("APPTITU").trim();
													tamLista = utils.getDatoContexto("LST_APLIC").getLongitud();
													String aplicacion = "";
													String perfil = "";
													String codAplica = "";
													String codPerfil = "";
													String cadena = "";
													int cont = 0;			
													for(int x = 0 ; x<tamLista;x++){
														cont=x;
														aplicacion = utils.getValorContexto("LST_APLIC."+x+".NOMAPLI").trim();
														perfil = utils.getValorContexto("LST_APLIC."+x+".DESPERF").trim();
														codAplica = utils.getValorContexto("LST_APLIC."+x+".CODAPLI").trim();
														codPerfil = utils.getValorContexto("LST_APLIC."+x+".CODPERF").trim();
														cadena = codAplica+"-"+aplicacion+"-"+codPerfil+"-"+perfil;
															if(!codAplica.equals("EXTU")){
																contApli++;										
											%>
											<div class="col-12 row">
												<div class="col-4">
													<input id="aplicationCheck<%=cont%>" type="checkbox" name="aplicationCheck" size="2" value="<%=cadena%>" disabled>&nbsp;&nbsp;
													<label for="aplicationCheck<%=cont%>"><%=aplicacion%></label>
												</div>
												<div class="col-4">
													<label for="perfil"><%=perfil%></label>
												</div>
												<div class="col-2 aplicationRadio">
													<input id="aplicationRadio<%=cont%>" type="radio" name="aplicationRadio" size="2" disabled <%=apptitu.equals(codAplica)?"checked='checked'":""%>>
													<label for="aplicationRadio<%=cont%>"></label>
												</div>
											</div>
												<%
														}
													}
												}
												catch(Exception e){}
												%>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<!-- Tercer acordeon-->

						<div id="levelsSection" class="card">
							<div class="card-header" role="tab" id="heading-2">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2">
								<span class="icon icon-176"></span>Modificar Niveles - Capturar Niveles
								</a>
							</div>
							<div id="collapse-2" class="collapse" role="tabpanel" aria-labelledby="heading-2">
								<div class="card-block sin-space">
									<div class="card">
										<div class="card-block">
											<div class="col-9 row">
												<div class="col-4 center">
													<label>Nivel</label>
												</div>
												<div class="col-4 center">
													<label>Clave</label>
												</div>
												<div class="col-4 center">
													<label>Descripci&oacute;n</label>
												</div>
											</div>
											<%
											/*Modificaciones Niveles*/
												int w=0;
												int lim=0;
											try{
																		
												String campo="";
												String dato = "";
												String cant_niv=utils.getValorContexto("AUX1"); //aqui vendra el numero de niveles TOTALES
																		
												if(cant_niv!=""){					
													lim=Integer.parseInt(cant_niv);
												}
																	
												while (!utils.getValorContexto("LST_NIVEL."+w+".NVNUME").trim().equals("")){
											%>
											<div class="col-9 row">
												<div class="col-4 center">
													<label><%=utils.getValorContexto("LST_NIVEL."+w+".NVNUME")%></label>
												</div>
												<div id="keyLevel<%=w%>" class="col-4 center" name="keysLevels" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVCLAVE")%>">
													<input id="key_<%=w%>" name="descLevel" class="requerido form-control form-control-sm col-sm-4" maxlength="30" type="text" size="35" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVCLAVE")%>">
												</div>
												<div class="col-4 center">
													<input id="desc_<%=w%>" name="descLevel" class="requerido form-control form-control-sm col-sm-4" maxlength="30" type="text" size="35" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVDESCR").trim()%>">
												</div>
											</div>																																					
											<%
													w++;
												}/*fin while */
												
												int num_niveles=request.getParameter("levels");
												if(w<num_niveles){
													for(int y=w;y<=num_niveles;y++){
													 %>
													<div class="col-9 row">
														<div class="col-4 center">
															<label><%=y%></label>
														</div>
														<div id="keyLevel<%=w%>" class="col-4 center" name="keysLevels" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVCLAVE")%>">
															<input id="key_<%=w%>" name="descLevel" class="requerido form-control form-control-sm col-sm-4" maxlength="30" type="text" size="35" value="">
														</div>
														<div class="col-4 center">
															<input id="desc_<%=w%>" name="descLevel" class="requerido form-control form-control-sm col-sm-4" maxlength="30" type="text" size="35" value="">
														</div>
													</div>	
													 <%
													}
												}
												

																	
												for(int x = w; x < lim; x++){
																		
													if(x == 0){
														campo = "requerido";
														dato = "*";
													}else{
														campo = "enabled";
														dato = "";
													}
											%>
											<div class="col-9 row">
												<div class="col-4 center">
													<label><%=x+1%></label>
												</div>
												<div class="col-4 center">
													<input id="keyLevel<%=x%>" name="keysLevels" class="<%=campo%> form-control form-control-sm col-sm-4" maxlength="4" type="text" size="5" value="">
													<%=dato%>
												</div>
												<div class="col-4 center">
													<input id="desc_<%=x%>" name="descLevel" class="<%=campo%> form-control form-control-sm col-sm-4" maxlength="30" type="text" size="35" value="">
													<%=dato%>
												</div>
											</div>
											<%
												}					
											}
											catch(NumberFormatException ex){
												System.out.println(ex);
											}
											/*Fin modificaciones*/
											%>
											<div class="col-12 right">
												<input  id="btnLevel" class="btn btn-success" type="button" name="btnLevel" value="Modificar">
											</div>
										</div>							
									</div>
								</div>
							</div>
						</div>
						<!-- cuarto acordeon-->
						<div id="structureSection" class="card">
							<div class="card-header" role="tab" id="heading-4">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-4" aria-expanded="false" aria-controls="collapse-4">
								<span class="icon icon-65"></span>Estructura
								</a>
							</div>
							<div id="collapse-4" class="collapse" role="tabpanel" aria-labelledby="heading-4">
								<div class="card-block sin-space">
									<div class="card">
										<div class="card-block sin-space">
											<br/>
											<div class="col-12 row">
												<div class="col-5 center">
													<input id="register" type="radio" name="rb_cli" value="true" onclick="js_estructura();">
													<label for="register">Alta</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input id="modifyStructure" type="radio" name="rb_cli" value="false" onclick="js_estructura();">
													<label for="modifyStructure">Modificar</label>&nbsp;
												</div>
												<div class="col-5 row center">
													<label class="labelSelect">Selecci&oacute;n de nivel</label>&nbsp;&nbsp;
													<select id="levelSelector" class="form-control col-sm-6" disabled>
														<option>Seleccione nivel</option>
													</select>
												</div>
												<div class="col-2">
													<input id="btnStructure" class="btn btn-success" type="button" name="btnStructure" value="Aceptar" disabled>
												</div>
											</div>
											<br/>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<!--Quinto acordeoa-->
						<div id="devicesSection" class="card">
							<div class="card-header" role="tab" id="heading-5">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-5" aria-expanded="false" aria-controls="collapse-5">
								<span class="icon icon-5"></span>Asignar Dispositivos - Captura el n&uacute;mero de serie de los dispositivos de Acceso Seguro Digital Adicionales
								</a>
							</div>
							<div id="collapse-5" class="collapse" role="tabpanel" aria-labelledby="heading-5">
								<div class="card-block sin-space">
									<div class="card">
										<div class="card-block sin-space">
											<br/>
											<div class="col-12 row">
												<div class="col-8">
													<div class="col-12 row">
														<div class="col-3">
															<input type="text" id="device1" name="device1" value='<%=utils.getValorContexto("DISP01")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);" />
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device2" name="device2" value='<%=utils.getValorContexto("DISP02")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device3" name="device3" value='<%=utils.getValorContexto("DISP03")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>	
														<div class="col-3">
															<input type="text" id="device4" name="device4" value='<%=utils.getValorContexto("DISP04")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
													</div>
													<br/>
													<div class="col-12 row">
														<div class="col-3">
															<input type="text" id="device5" name="device5" value='<%=utils.getValorContexto("DISP05")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device6" name="device6" value='<%=utils.getValorContexto("DISP06")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device7" name="device7" value='<%=utils.getValorContexto("DISP07")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device8" name="device8" value='<%=utils.getValorContexto("DISP08")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
													</div>
													<br/>
													<div class="col-12 row">
														<div class="col-3">
															<input type="text" id="device9" name="device9" value='<%=utils.getValorContexto("DISP09")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device10" name="device10" value='<%=utils.getValorContexto("DISP10")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device11" name="device11" value='<%=utils.getValorContexto("DISP11")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device12" name="device12" value='<%=utils.getValorContexto("DISP12")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
													</div>
													<br/>
													<div class="col-12 row">
														<div class="col-3">
															<input type="text" id="device13" name="device13" value='<%=utils.getValorContexto("DISP13")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device14" name="device14" value='<%=utils.getValorContexto("DISP14")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device15" name="device15" value='<%=utils.getValorContexto("DISP15")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device16" name="device16" value='<%=utils.getValorContexto("DISP16")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
													</div>
													<br/>
													<div class="col-12 row">
														<div class="col-3">
															<input type="text" id="device17" name="device17" value='<%=utils.getValorContexto("DISP17")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device18" name="device18" value='<%=utils.getValorContexto("DISP18")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device19" name="device19" value='<%=utils.getValorContexto("DISP19")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
														<div class="col-3">
															<input type="text" id="device20" name="device20" value='<%=utils.getValorContexto("DISP20")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
															<%=getIndicadorRequeridoDerecha(false)%>
														</div>
													</div>
													<br/>
												</div>
												<br/>
												<div class="col-4">
													<div class="col-12 row">
														<label class="col-sm-6 labelSelect right">Modelo de dispositivo</label>
														<select id="devicesSelector" class="form-control col-sm-6" name="devicesSelector">
															<option value="-1">Seleccione tipo</option>
															<%
																int tam_L = 0;
																tam_L = utils.getDatoContexto("LST_DISP").getLongitud();
																int k = 0;
																String mod = "";
																for(k = 0; k < tam_L; k++){
																	mod = utils.getValorContexto("LST_DISP." + k + ".MOD").trim();
															%>
															<option value="<%=mod%>"><%=mod%></option>
															<%
																}
															%>
														</select>
													</div>
													<br/>
													<div class="col-12 row">
														<label class="col-6 right">CR</label>
														<input class="form-control form-control-sm col-sm-6" type="text" name="CR" value='<%=utils.getValorContexto("CR").trim()%>' size="5" maxlength="4">
														<%=getIndicadorRequeridoDerecha(false)%>
													</div>
													<br/>
													<div class="col-12 right">
														<input id="btnDevices" class="btn btn-success" type="button" name="btnDevices" value="Actualizar">
													</div>
													<br/>
												</div>
											</div>
										</div>	
										<br/>						
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
								
				<!-- Inicio de Modal Notificacion -->
				<div id="notificationModal" class="body" style="display: none;">					
					<div class="contenidoModal">
						<p class="text-info verifyIco"><span class="icon icon-72"></span></p>
						<p class="text-info"><span>&nbsp;&nbsp;Notificaci&oacute;n</span></p>
						<div class="message-info">
							<div id="messageInfo"></div>
						</div>
					</div>
					<div class="contenidoBoton">
						<input type="button"  class="btn btn-primary closeModal" value="Entendido" />
					</div>
				</div>
				<!-- Fin Modal  -->
				<!-- Inicio de Modal de Error -->
				<div id="errorModal" class="body" style="display: none;">
					<div class="contenidoModal">
						<p class="text-danger verifyIco"><span class="icon icon-71"></span></p>
						<p class="text-danger"><span>&nbsp;&nbsp;Ha ocurrido un error</span></p>
						<p class="message-danger" id="messageError"></p>
					</div>
					<div class="contenidoBoton">
						<input type="button" class="btn btn-danger closeModal" value="Entendido" />
					</div>
				</div>
				<!-- Fin Modal  -->
				<!--Modal confirmar-->
				<div id="modalConfirmar" class="body" style="display: none;">
					<p class="notification"><span id="lblMsjConfirmacion">Notificaci&oacute;n</span></p>
					<br class="clear">
					<div class="contenidoModal">
						<p class="text-success verify" id="lblConfirmar"></p>
						<p class="text-success verifyIco"><span class="icon icon-153"></span></p>						
					</div>
					<div class="contenidoBoton">
						<input type="button" id="confirmarCerrar" class="btn btn-success closeModal" value="Aceptar"/>
					</div>
				</div>
				<!--Inicia Modal Imprimir-->
				<div id="printModal" class="body" style="display: none;">			
					<div class="contenidoModal">
						<p class="text-success verifyIco"><span class="icon icon-153" ></span></p>
						<p class="text-success"><span>&nbsp;&nbsp;Proceso satisfacorio</span></p>
						<div class="message-success">
							<div id="messageSuccess"></div>
							<div>&iquest; Desea imprimir &quest;</div>
						</div>
					</div>
					<div class="contenidoBoton">
						<input type="button" id="imprimirCerrar" class="btn btn-success closeModal" value="Regresar"/>
						<input type="button" id="imprimirActual" class="btn btn-success" value="Imprimir"/>
					</div>
				</div>
				<!--Fin Modal Imprimir-->	
				<!--Inicia Modal Baja de Referencia-->
				<div id="unsubscribeModal" class="body" style="display: none;">			
						<div class="contenidoModal">
							<p class="text-info verifyIco"><span class="icon icon-200" ></span></p>
							<p class="text-info"><span>&nbsp;&nbsp;Proceso de baja de referencia</span></p>
							<div class="message-info">
								<div id="messageUnsubscribe" class="left"></div>
								<div>&iquest; Desea continuar &quest;</div>
							</div>
						</div>
						<div class="contenidoBoton">
							<input type="button" class="btn btn-primary closeModal" value="Cancelar"/>
							<input type="button" id="continueUnsubscribe" class="btn btn-primary" value="Aceptar"/>
						</div>
					</div>
					<!--Fin Modal Baja de Referencia-->			
				<div id="printingArea" hidden>
					<img id="imageToPrint" src="" alt="">
				</div>
			</form>			
		</div>
	</customform>
	<script type="text/javascript">
		window.onload=function(){
		nivAE="<%=utils.getValorContexto("NIVELES")%>";
		total=<%=lim%>;
		llenos=<%=w%>;

		if(nivAE.indexOf("|")>=0){ //si SI hay pipe, quiere decir que vengo del fin error (porque ya no vale un solo numero) y tomo esos valores.
			recuperar(nivAE);
		}
		

		var cta_cliente = '<%=utils.getValorContexto("NUM_CLIENTE").trim()%>';				
		var selec="";
		selec=document.AUMXVE03301.SEL_DISP.value;
		if(selec!="")
			seleccionarCodigoCombo('LST_DISP',selec,'AUMXVE03301');	


		if('<%=utils.getValorContexto("ERROR_MDO")%>'!=null  &&  '<%=utils.getValorContexto("ERROR_MDO").trim()%>'!=""){ //DEBE SER AND (&&), mas no OR (||)
			if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-8")
				alert('Estimado usuario  su clave de operación es incorrecta');
			else if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-10")
				alert('Estimado usuario su clave de operación esta bloqueada');
			else
				alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
		}
			
		if ('<%=utils.getValorContexto("ER_BANDERA").trim()%>'=="0"){
			if('<%=utils.getValorContexto("ER_CODIGO")%>'==null  ||  '<%=utils.getValorContexto("ER_CODIGO").trim()%>'=="")
				alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
		}
		
			
		//esCliente();
		if(cta_cliente!=""){
			clientIndicator=true;   
			document.getElementById("companyName").disabled = true;	
			document.getElementById("si").checked = true;
		}
				
		if(document.getElementById("nickName").value !=""){
			document.getElementById("nickName").disabled = true;
			document.getElementById("nickName").readOnly = true;
						
		}else{		
			document.getElementById("nickName").readOnly = false;
			document.getElementById("nickName").disabled = false;
			document.getElementById("nickName").className = "form-control form-control-sm col-sm-4";
		}			
	}
	</script>

	<script type="text/javascript">
	var cod=document.AUMXVE03301.N_HDN_S_APLIC.value;
	var des=document.AUMXVE03301.S_NOM_APLIC.value;
	var selec ="";
	if(cod != ""){
		selec = cod+"-"+des;
		seleccionarCodigoCombo('cmb_apli',selec,'AUMXVE03301');
	}
	/*Funciones Niveles*/
	function validar(){
		//validar campos
		//todos los renglones ya definidos deben tener algun valor.
		tot=total;//sacado de la cuenta de renglones al armar la tabla.
		ok=true;
		
		
		
		for(i=llenos;i<tot;i++){
			document.getElementById("desc_"+i).value=removeSpecialChars(document.getElementById("desc_"+i).value);
			document.getElementById("key_"+i).value=removeSpecialChars(document.getElementById("key_"+i).value);

		}
		
		
		//armar
		cad="";
		c="";
		d="";
		if(ok){
		
			for(i=0;i<tot;i++){
				c=document.getElementById("key_"+i).value;
				d=document.getElementById("desc_"+i).value;
				
				if(c!="" && d!=""){
					if(i>=llenos){
					cad+="A"
					}else{
					cad+="M"
					}
					cad+="-"+(i+1)+"-"+c+"-"+d+"|";
				}
			}
			
			if(cad.length>0){
			cad=cad.substring(0,cad.length-1); //para quitar el ultimo pipe
			}
			
		}
		
		
		if(ok ){
			actualizar();
		}else{ //mostrar mensajes de error
			alert("ERROR");
		}
	}
	function actualizar(){
	
		document.getElementById("h_niveles").value=cad;
		
		document.AUMXVE03301.evento.value="0X2501011";
		document.AUMXVE03301.submit();
	}
	function removeSpecialChars(str) {
  		return str.replace(/(?!\w|\s)./g, '')
    	.replace(/\s+/g, ' ')
    	.replace(/^(\s*)([\W\w]*)(\b\s*$)/g, '$2');
	}
	/*Fin funciones niveles*/
	</script>	
</body>
</html>