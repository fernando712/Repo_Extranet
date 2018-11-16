<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, shrink-to-fit=no" />
	<title>Modificar de Empresa</title>
	<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
	<link rel="stylesheet" type="text/css" href="/aumx_es_web_pub/css/bundle.css">
	<link rel="stylesheet" type="text/css" href="/aumx_es_web_pub/css/styles.css">
	<link rel="stylesheet" type="text/css" href="/aumx_es_web_pub/css/jquery.modal.css">

<script>
	var banderaCliente = '<%=utils.getValorContexto("BAN_CTE").trim()%>';
</script>
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>">
	<customform>
		<div class="container">
			<header>
				<div class="row">
					<p class="pb-1 mx-2 my-2 blue-text titulo"><span class="icon icon-11 pt-2"></span> -Modificaci&oacute;n de Empresa</p>
				</div>
			</header>			
		</div>
		<div class="container">
			<form name="AUMXVE03301" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento">
  				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">

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
<customhidden><input name="BAN_CTE" type="hidden" value='<%= utils.getValorContexto("BAN_CTE") %>' /></customhidden>
<customhidden><input name="h_tipemp" type="hidden" value='<%= utils.getValorContexto("TIPEMP") %>' /></customhidden>
<customhidden><input name="numCliente" type="hidden" value='<%= utils.getValorContexto("NUM_CLIENTE") %>' /></customhidden>

<!-- customhidden de vincular aplicacion -->
<customhidden><input name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
<customhidden><input name="N_HDN_S_APLIC" type="hidden" value='<%= utils.getValorContexto("S_APLIC") %>' /></customhidden>
<customhidden><input name="S_NOM_APLIC" type="hidden" value='<%= utils.getValorContexto("S_NOM_APLIC") %>' /></customhidden>
<customhidden><input name="S_PERFIL" type="hidden" value='<%= utils.getValorContexto("S_PERFIL") %>' /></customhidden>
<customhidden><input name="S_NOM_PERFIL" type="hidden" value='<%= utils.getValorContexto("S_NOM_PERFIL") %>' /></customhidden>
<customhidden><input name="AV_CODIGO" id="AV_CODIGO" type="hidden" value='<%= utils.getValorContexto("AV_CODIGO") %>' /></customhidden>
<customhidden><input name="ER_CODIGO" id="ER_CODIGO" type="hidden" value='<%= utils.getValorContexto("ER_CODIGO") %>' /></customhidden>
<customhidden><input name="ER_BANDERA" id="ER_BANDERA" type="hidden" value='<%= utils.getValorContexto("ER_BANDERA") %>' /></customhidden>


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

<input type="hidden" name="hdn_DESTINO" id="hdn_DESTINO" value="<%=utils.getDestinoFormulario()%>" />
<input type="hidden" name="MENSAJE" id="MENSAJE" value="<%= utils.getValorContexto("MENSAJE") %>" />
<input type="hidden" name="COD_ERROR" id="COD_ERROR" value="<%= utils.getValorContexto("COD_ERROR") %>" />


				<div class="table-responsive">
					<table class="table">
						<tbody>
					    	<tr>
					      		<td class="sin-borde subtitulo" scope="row" align="right">REFERENCIA: </td>
					      		<td class="sin-borde subtitulo"><%=utils.getValorContexto("REFEREN")%></td>
					      		<td class="sin-borde subtitulo" align="right">NOMBRE DE LA EMPRESA: </td>
					      		<td class="sin-borde subtitulo"><%=utils.getValorContexto("REFDESC")%></td>
					    	</tr>
						</tbody>
					</table>
				</div>



				<div class="card">
					<div id="accordion" class="card-block accordion" role="tablist" aria-multiselectable="true">
						
						<!-- inicia primer acordeon -->
						<div class="card">
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
										<div class="card-block about-me sin-space">								
											<div class="table-responsive">
												<table class="table">
													<tbody>
														<tr>
															<td class="sbsp">
																<label>Referencia</label><br>
																<inputfieldtext>
																	<span id="REFEREN_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" type="text" id="referen" name="REFEREN" value='<%=utils.getValorContexto("REFEREN").trim()%>' size="30" readonly>
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Estado</label><br>
																<inputfieldtext>
																	<span id="ESTADO_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" type="text" name="ESTADO" value='<%=utils.getValorContexto("ESTADOE")=="A1"?"ACTIVO":"NO ACTIVO"%>' size="30" readonly>
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Cliente Bancomer</label><br>
																<label for="sizeSmall">Si</label>&nbsp;	
																<input type="radio" name="rb_cli" id="si" value="true" onclick="js_IndCli();" checked>&nbsp;
																<label for= "sizeMed">No</label>&nbsp;
								        						<input type="radio" name="rb_cli" id="no" value="false" onclick="js_IndCli();">
															</td>
															<td class="sbsp">
																<label>N&uacute;mero de Cliente</label><br>
																<inputfieldtext>
																	<span id="NUM_CLIENTE_ER" class='<%=utils.escribeEstiloLabel("NUM_CLIENTE")%>'></span>
																	<input class="form-control form-control-sm col-sm-10" id="numeCliente" type="text" name="NUM_CLIENTE" value='<%=utils.getValorContexto("NUM_CLIENTE").trim()%>' onkeydown="cambiaBanderaCliente();" autocomplete="off" size="25" maxlength="25" sentido="N">
																	<%=getIndicadorRequeridoDerecha(false)%>
																</inputfieldtext>
															</td>
															<td class="sbsp"><br>
																<input class="btn btn-success" type="button" name="BTN_BUSQUEDA" id="BTN_BUSQUEDA" value="B&uacute;squeda" onclick="js_cliente();">
															</td>
															<td class="sbsp" align="right">
																<input class="btn btn-success" type="button" name="BTN_MODIFICAR" id="BTN_MODIFICAR" value="Modificar">
															</td>
														</tr>
														<tr>
															<td class="sbsp" colspan="2">
																<label>Nombre de la empresa</label><br>
																<inputfieldtext>
																	<span id="nombreEmpresa_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="nombreEmpresa" type="text" name="nombreEmpresa" value='<%=utils.getValorContexto("REFDESC").trim()%>' size="45" maxlength="45"  onkeypress="return valkey(event,'alfa');">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Nombre corto</label><br>
																<inputfieldtext>
																	<span id="NOMCTO_ER" class='<%=utils.escribeEstiloLabel("NOMCTO").trim()%>'></span>
																	<input id="TF_NombreCorto" type="text" name="NOMCTO" value='<%=utils.getValorContexto("NOMCTO").trim()%>' onkeypress="return valkey(event,'letra');" size="3" maxlength="3">
																	<%=getIndicadorRequeridoDerecha(false)%>
																</inputfieldtext>
															</td>
															<td class="sbsp" colspan="2"><br>
																<label class="text-success">Capture el nombre corto si es empresa Aduex,<br>este dato no podr&aacute; ser modificado posteriormente</label>
															</td>
															<td class="sbsp" align="right">
																<input class="btn btn-success" type="button" name="BTN_BAJA" id="BTN_BAJA" value="Baja">
															</td>
														</tr>
														<tr>
															<td class="sbsp">
																<label>Nivel</label><br>
																<inputfieldtext>
																	<span id="NIVEL_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="niveles" type="text" name="NIVEL" size="30" maxlength="30" <%= (utils.getValorContexto("TIPEMP").equals("P"))?"class=\"disabled\"value=\"1\"readonly=\"readOnly\"":"class=\"requerido\"value=\"" + utils.getValorContexto("NIVELES").trim() + "\"" %>  onkeypress="return esValidoNum(event)">
																</inputfieldtext>
															</td>
															<script>nivel_inicial="<%=utils.getValorContexto("NIVELES")%>";</script>
															<td class="sbsp">
																<label>CR</label><br>
																<inputfieldtext>
																	<span id="CR_ER" class='<%=utils.escribeEstiloLabel("CR").trim()%>'></span>
																	<input class="form-control form-control-sm col-sm-10" type="text" name="CR" value='<%=utils.getValorContexto("CR").trim()%>' size="30" maxlength="30">
																	<%=getIndicadorRequeridoDerecha(false)%>
																</inputfieldtext>
															</td>
															<td class="sbsp">
																&nbsp;<label>Delegaci&oacute;n de Administraci&oacute;n</label><br>
																&nbsp;<input id="tipadmi" type="checkbox" size="2" value='' <%=(utils.getValorContexto("TIPADMI").equals("N"))?"":"Checked"%>> Administrador
															</td>
															<td class="sbsp">
																<label>Identificador de administrador</label><br>
																<inputfieldtext>
																	<span id="ADMINEN_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" type="text" name="ADMINEN" value='<%=utils.getValorContexto("ADMINEM").trim()%>' readonly>
																</inputfieldtext>
															</td>
															<td class="sbsp" colspan="2" align="right">
																<input class="btn btn-success" type="button" name="BTN_REACTIVAR" id="BTN_REACTIVAR" value="Reactivar">
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="card-header blue first">
											<h4>Datos del contacto</h4>
										</div>
										<div class="card-block about-me sin-space">
											<div class="table-responsive">
												<table class="table">
													<tbody>
														<tr>
															<td class="sbsp" colspan="2">
																<label>Nombre del contacto</label><br>
																<inputfieldtext>
																	<span id="NOMCONTACTO_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="contact" type="text" name="NOMCONTACTO" value='<%=utils.getValorContexto("CONTACT").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp" colspan="2">
																<label>E-mail</label><br>
																<inputfieldtext>
																	<span id="E_MAIL_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="email" type="text" name="E_MAIL" value='<%=utils.getValorContexto("EMAIL").trim()%>' size="30" maxlength="45">
																</inputfieldtext>
															</td>
														</tr>
														<tr>
															<th class="sbsp">
																<label>Direcci&oacute;n</label>
															</th>
														</tr>
														<tr>
															<td class="sbsp">
																<label>Calle</label><br>
																<inputfieldtext>
																	<span id="NOMCALLE_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="calle" type="text" name="NOMCALLE" value='<%=utils.getValorContexto("CALLE").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>N&uacute;mero exterior</label><br>
																<inputfieldtext>
																	<span id="NUM_EXT_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="numext" type="text" name="NUM_EXT" value='<%=utils.getValorContexto("NUMEXT").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>N&uacute;mero interior</label><br>
																<inputfieldtext>
																	<span id="NUM_INT_ER" class=''></span>
																	<input class="form-control form-control-sm col-sm-10" id="numint" type="text" name="NUM_INT" value='<%=utils.getValorContexto("NUMINT").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Colonia</label><br>
																<inputfieldtext>
																	<span id="NOMCOLONIA_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="colonia" type="text" name="NOMCOLONIA" value='<%=utils.getValorContexto("COLONIA").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>C&oacute;digo postal</label><br>
																<inputfieldtext>
																	<span id="COD_POS_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="codpos" type="text" name="COD_POS" value='<%=utils.getValorContexto("CODPOS").trim()%>' size="30" maxlength="30" onkeypress="return esValidoNum(event)">
																</inputfieldtext>
															</td>
														</tr>
														<tr>
															<td class="sbsp">
																<label>Delegaci&oacute;n o Municipio</label><br>
																<inputfieldtext>
																	<span id="DEL_MUN_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="delmun" type="text" name="DEL_MUN" value='<%=utils.getValorContexto("DELMUN").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Ciudad</label><br>
																<inputfieldtext>
																	<span id="NOMCIUDAD_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="ciudad" type="text" name="NOMCIUDAD" value='<%=utils.getValorContexto("CIUDAD").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Entidad Federativa</label><br>
																<inputfieldtext>
																	<span id="NOMENTIDAD_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="entidad" type="text" name="NOMENTIDAD" value='<%=utils.getValorContexto("ENTIDAD").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Calle de referencia</label><br>
																<inputfieldtext>
																	<span id="CALLE_REF_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="calleref" type="text" name="CALLE_REF" value='<%=utils.getValorContexto("CALLEREF").trim()%>' size="30" maxlength="30" onkeypress="return esValidoText(event)">
																</inputfieldtext>
															</td>
														</tr>
														<tr>
															<td class="sbsp">
																<label>Tel&eacute;fono 1</label><br>
																<inputfieldtext>
																	<span id="TEL_FON1_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="telef01" type="text" name="TEL_FON1" value='<%=utils.getValorContexto("TELEF01").trim()%>' size="30" maxlength="30" onkeypress="return esValidoNum(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Ext 1</label><br>
																<inputfieldtext>
																	<span id="EXT_TEL1_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="exttel1" type="text" name="EXT_TEL1" value='<%=utils.getValorContexto("EXTTEL1").trim()%>' size="30" maxlength="30" onkeypress="return esValidoNum(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Tel&eacute;fono 2</label><br>
																<inputfieldtext>
																	<span id="TEL_FON2_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="telef02" type="text" name="TEL_FON2" value='<%=utils.getValorContexto("TELEF02").trim()%>' size="30" maxlength="30" onkeypress="return esValidoNum(event)">
																</inputfieldtext>
															</td>
															<td class="sbsp">
																<label>Ext 2</label><br>
																<inputfieldtext>
																	<span id="EXT_TEL2_ER"></span>
																	<input class="form-control form-control-sm col-sm-10" id="exttel2" type="text" name="EXT_TEL2" value='<%=utils.getValorContexto("EXTTEL2").trim()%>' size="30" maxlength="30" onkeypress="return esValidoNum(event)">
																</inputfieldtext>
															</td>
														</tr>
													</tbody>
												</table>												
											</div>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<!-- termina primer acordeon -->
						
						<!-- inicia segundo acordeon -->
						<div class="card">
							<div class="card-header" role="tab" id="heading-1">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-1" aria-expanded="false" aria-controls="collapse-1">
					            <span class="icon icon-162"></span>Vincular - Desvincular Aplicaciones
					        	</a>
							</div>
							<div id="collapse-1" class="collapse" role="tabpanel" aria-labelledby="heading-1">
								<div class="card-block sin-space">
									<div class="card">
										<div class="card-header blue first">
											<h4>Aplicaciones</h4>
										</div>
										<div class="card-block about-me sin-space">
											<div class="table-responsive">
												<table class="table">
													<tbody>
														<tr>
															<td class="sbsp">
																<input type="radio" name="radSize" id="vincular" value="small" onclick="js_aplicacion();">&nbsp;          
								        						<label for="sizeSmall">Vincular</label>	
															</td>
															<td class="sbsp" align="center">
																<label>Aplicaci&oacute;n</label><br>
																<select class="form-control col-sm-7" id="aplicacion" name="cmb_apli" disabled>
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
																			<option value="<%=cod_aplic%>-<&=nom_aplic%>"><%=nom_aplic%></option>
																	<%
																			}
																		}
																	%>
																</select>
															</td>
															<td class="sbsp" align="center">
																<label>Perfil</label><br>
																<select class="form-control col-sm-7" id="perfil" name="cmb_perfil" disabled>
																	<option>Seleccione perfil</option>
																</select>
															</td>
															<td class="sbsp" align="right">
																<input class="btn btn-success" type="button" name="BTN_APLICACION" id="BTN_APLICACION" value="Aceptar" disabled>
															</td>
														</tr>
														<tr>
															<td class="sbsp">
																<input type="radio" name="radSize" id="desvincular" value="small" onclick="js_aplicacion();">&nbsp;          
								        						<label for="sizeSmall">Desvincular</label>	
															</td>
															<td class="sin-borde" align="center">Aplicaci&oacute;n</td>
															<td class="sin-borde" align="center">Perfil</td>
															<td class="sin-borde" align="center">Aplicaci&oacute;n Titular</td>
														</tr>
									
													</tbody>													
												</table>												
											</div>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<!-- termina segundo acordeon -->
						
						<!-- inicia tercer acordeon -->
						<div class="card">
							<div class="card-header" role="tab" id="heading-2">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2">
					            <span class="icon icon-162"></span>Asignar Dispositivos - Modificar Niveles
					        	</a>
							</div>
							<div id="collapse-2" class="collapse" role="tabpanel" aria-labelledby="heading-2">
								<div class="card-block sin-space">						
									<div id="accordionUno" class="card-block accordion" role="tablist" aria-multiselectable="true">					
										<!-- inicia submenu uno -->
										<div class="card">
											<div class="card-header" role="tab" id="heading-3">
												<a data-toggle="collapse" data-parent="#accordionUno" href="#collapse-3" aria-expanded="false" aria-controls="collapse-3">
									            <span class="icon icon-5 submenu"></span>Asignar Dispositivos - Captura el n&uacute;mero de serie de los dispositivos de Acceso Seguro Digital Adicionales
									        	</a>
											</div>
											<div id="collapse-3" class="collapse" role="tabpanel" aria-labelledby="heading-3">
												<div class="card-block sin-space">
													<div class="card">
														<div class="card-block about-me sin-space">
															<div class="table-responsive">
																<table class="table">
																	<tbody>
																		<tr align="center">
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP01_ER" class='<%=utils.escribeEstiloLabel("DISP01")%>'></span>
																					<input type="text" id="DISP01" name="DISP01" value='<%=utils.getValorContexto("DISP01")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);" />
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP02_ER" class='<%=utils.escribeEstiloLabel("DISP02")%>'></span>
																					<input type="text" id="DISP02" name="DISP02" value='<%=utils.getValorContexto("DISP02")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP03_ER" class='<%=utils.escribeEstiloLabel("DISP03")%>'></span>
																					<input type="text" id="DISP03" name="DISP03" value='<%=utils.getValorContexto("DISP03")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>	
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP04_ER" class='<%=utils.escribeEstiloLabel("DISP04")%>'></span>
																					<input type="text" id="DISP04" name="DISP04" value='<%=utils.getValorContexto("DISP04")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp" rowspan="2" align="right">
																				<label>Modelo de dispositivo</label>
																			</td>
																			<td class="sin-borde papp" rowspan="2">
																				<select class="form-control col-sm-12" name="LST_DISP" id="LST_DISP" >
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
																			</td>
																		</tr>
																		<tr align="center">
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP05_ER" class='<%=utils.escribeEstiloLabel("DISP05")%>'></span>
																					<input type="text" id="DISP05" name="DISP05" value='<%=utils.getValorContexto("DISP05")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP06_ER" class='<%=utils.escribeEstiloLabel("DISP06")%>'></span>
																					<input type="text" id="DISP06" name="DISP06" value='<%=utils.getValorContexto("DISP06")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP07_ER" class='<%=utils.escribeEstiloLabel("DISP07")%>'></span>
																					<input type="text" id="DISP07" name="DISP07" value='<%=utils.getValorContexto("DISP07")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP08_ER" class='<%=utils.escribeEstiloLabel("DISP08")%>'></span>
																					<input type="text" id="DISP08" name="DISP08" value='<%=utils.getValorContexto("DISP08")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																		</tr>
																		<tr align="center">
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP09_ER" class='<%=utils.escribeEstiloLabel("DISP09")%>'></span>
																					<input type="text" id="DISP09" name="DISP09" value='<%=utils.getValorContexto("DISP09")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP10_ER" class='<%=utils.escribeEstiloLabel("DISP10")%>'></span>
																					<input type="text" id="DISP10" name="DISP10" value='<%=utils.getValorContexto("DISP10")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP11_ER" class='<%=utils.escribeEstiloLabel("DISP11")%>'></span>
																					<input type="text" id="DISP11" name="DISP11" value='<%=utils.getValorContexto("DISP11")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP12_ER" class='<%=utils.escribeEstiloLabel("DISP12")%>'></span>
																					<input type="text" id="DISP12" name="DISP12" value='<%=utils.getValorContexto("DISP12")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp" align="right">
																				<label>CR</label>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="CR_ER" class='<%=utils.escribeEstiloLabel("CR")%>'></span>
																					<input class="form-control form-control-sm col-sm-10" type="text" name="CR" value='<%=utils.getValorContexto("CR").trim()%>' size="5" maxlength="4">
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																		</tr>
																		<tr align="center">
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP13_ER" class='<%=utils.escribeEstiloLabel("DISP13")%>'></span>
																					<input type="text" id="DISP13" name="DISP13" value='<%=utils.getValorContexto("DISP13")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP14_ER" class='<%=utils.escribeEstiloLabel("DISP14")%>'></span>
																					<input type="text" id="DISP14" name="DISP14" value='<%=utils.getValorContexto("DISP14")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP15_ER" class='<%=utils.escribeEstiloLabel("DISP15")%>'></span>
																					<input type="text" id="DISP15" name="DISP15" value='<%=utils.getValorContexto("DISP15")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP16_ER" class='<%=utils.escribeEstiloLabel("DISP16")%>'></span>
																					<input type="text" id="DISP16" name="DISP16" value='<%=utils.getValorContexto("DISP16")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp" colspan="2" rowspan="2" align="right">
																				<input class="btn btn-success" type="button" name="BTN_DISPOSITIVOS" id="BTN_DISPOSITIVOS" value="Aceptar">
																			</td>
																		</tr>
																		<tr align="center">
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP17_ER" class='<%=utils.escribeEstiloLabel("DISP17")%>'></span>
																					<input type="text" id="DISP17" name="DISP17" value='<%=utils.getValorContexto("DISP17")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP18_ER" class='<%=utils.escribeEstiloLabel("DISP18")%>'></span>
																					<input type="text" id="DISP18" name="DISP18" value='<%=utils.getValorContexto("DISP18")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP19_ER" class='<%=utils.escribeEstiloLabel("DISP19")%>'></span>
																					<input type="text" id="DISP19" name="DISP19" value='<%=utils.getValorContexto("DISP19")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																			<td class="sin-borde papp">
																				<inputfieldtext>
																					<span id="DISP20_ER" class='<%=utils.escribeEstiloLabel("DISP20")%>'></span>
																					<input type="text" id="DISP20" name="DISP20" value='<%=utils.getValorContexto("DISP20")%>' size="12" maxlength="10" class="form-control form-control-sm col-sm-10" onkeypress="return soloNumeros(event, false);"/>
																					<%=getIndicadorRequeridoDerecha(false)%>
																				</inputfieldtext>
																			</td>
																		</tr>
																	</tbody>
																</table>		
															</div>
														</div>							
													</div>
												</div>
											</div>
										</div>
										<!-- termina submenu uno -->

										<!-- inicia submenu dos -->
										<div class="card">
											<div class="card-header" role="tab" id="heading-4">
												<a data-toggle="collapse" data-parent="#accordionUno" href="#collapse-4" aria-expanded="false" aria-controls="collapse-4">
									            <span class="icon icon-162 submenu"></span>Modificar Niveles - Capturar Niveles
									        	</a>
											</div>
											<div id="collapse-4" class="collapse" role="tabpanel" aria-labelledby="heading-4">
												<div class="card-block sin-space">
													<div class="card">
														<div class="card-block about-me">
															<div class="table-responsive">
																<table class="table">
																	<tbody>
																		<tr>
																			<td class="sin-borde" align="center">Nivel</td>
																			<td class="sin-borde" align="center">Clave</td>
																			<td class="sin-borde">Descripci&oacute;n</td>
																		</tr>
																		<%
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
																			
																		<tr> 
																			<td class="sin-borde pad" align="center">
																				<%=utils.getValorContexto("LST_NIVEL."+w+".NVNUME")%>
																			</td>
																			<td class="sin-borde pad" id="clave_<%=w%>" name="claves" align="center" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVCLAVE")%>" >
																				<%=utils.getValorContexto("LST_NIVEL."+w+".NVCLAVE")%>
																			</td>
																			<td class="sin-borde pad">
																				<input id="desc_<%=w%>" name="descrips" class="requerido form-control form-control-sm col-sm-2" maxlength="30" type="text" size="35" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVDESCR").trim()%>">
																			</td>
																		</tr>
																		<%
																				w++;
																			}//fin while 
																		
																		
																			for(int x=w;x<lim;x++){
																			
																				if(x == 0){
																					campo = "requerido";
																					dato = "*";
																				}else{
																					campo = "enabled";
																					dato = "";
																				}
																		%>
																		
																		<tr> 
																			<td class="sin-borde pad" align="center">
																				<%=x+1%>
																			</td>
																			<td class="sin-borde pad" align="center">
																				<input id="clave_<%=x%>" name="claves" class="<%=campo%>" maxlength="4" type="text" size="5" value="">
																				<%=dato%>
																			</td>
																			<td class="sin-borde pad">
																				<input id="desc_<%=x%>" name="descrips" class="<%=campo%> form-control form-control-sm col-sm-2" maxlength="30" type="text" size="35" value="">
																				<%=dato%>
																			</td>
																		</tr>
																		<%
																			}					
																		}
																		catch(NumberFormatException ex){
																			System.out.println(ex);
																		}
																		%>
																		<tr>
																			<td class="sbsp" colspan="3" align="right">
																				<input class="btn btn-success" type="button" name="BTN_NIVELES" id="BTN_NIVELES" value="Actualizar">
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>							
													</div>
												</div>
											</div>
										</div>
										<!-- termina submenu dos -->
									</div>
								</div>
							</div>
						</div>
						<!-- termina tercer acordeon -->


						<!-- inicia cuarto acordeon -->
						<div class="card">
							<div class="card-header" role="tab" id="heading-5">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse-5" aria-expanded="false" aria-controls="collapse-5">
					            <span class="icon icon-56"></span>Estructura
					        	</a>
							</div>
							<div id="collapse-5" class="collapse" role="tabpanel" aria-labelledby="heading-5">
								<div class="card-block sin-space">
									<div class="card">
										<div class="card-block about-me sin-space">
											<div class="table-responsive">
												<table class="table">
													<tbody>
														<tr>
															<td class="sbsp" align="right">
																<label>Selecci&oacute;n de nivel</label>
															</td>
															<td class="sbsp" align="center">
																<select class="form-control col-sm-6">
																	<option>Seleccione nivel</option>
																</select>
															</td>
															<td class="sbsp">
																<input type="radio" name="rb_cli" id="alta" value="true" onclick="js_estructura();">
													        	<label for="sizeSmall">Alta</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													        	<input type="radio" name="rb_cli" id="modificar" value="false" onclick="js_estructura();">
																<label for="sizeMed">Modificar</label>&nbsp;
															</td>
															<td class="sbsp" align="right">
																<input class="btn btn-success" type="button" name="BTN_ESTRUCTURA" id="BTN_ESTRUCTURA" value="Aceptar" disabled>	
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<!-- termina cuarto acordeon -->

					</div>
				</div>

<script type="text/javascript">

window.onload=function(){

var cta_cliente = '<%=utils.getValorContexto("NUM_CLIENTE").trim()%>';


	if('<%=utils.getValorContexto("ERROR_MDO")%>'!=null  &&  '<%=utils.getValorContexto("ERROR_MDO").trim()%>'!=""){ //DEBE SER AND (&&), mas no OR (||)
		if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-8")
			alert('Estimado usuario  su clave de operación es incorrecta');
		else if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-10")
			alert('Estimado usuario su clave de operación esta bloqueada');
		else
			alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
	}
		
	if ('<%=utils.getValorContexto("ER_BANDERA").trim()%>'=="1"){
		if('<%=utils.getValorContexto("ER_CODIGO")%>'==null  ||  '<%=utils.getValorContexto("ER_CODIGO").trim()%>'=="")
			alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
	}
	
	    
	//esCliente();
	if(cta_cliente!=""){
		banderaCliente=true;   
	    document.getElementById("nombreEmpresa").disabled = true;	
	    document.getElementById("si").checked = true;
	}

	js_IndCli();
			
	if(document.getElementById("TF_NombreCorto").value !=""){
		document.getElementById("TF_NombreCorto").disabled = true;
		document.getElementById("TF_NombreCorto").readOnly = true;
		  			
	}else{		
		document.getElementById("TF_NombreCorto").readOnly = false;
		document.getElementById("TF_NombreCorto").disabled = false;
		document.getElementById("TF_NombreCorto").className = "form-control form-control-sm col-sm-4 requerido";
	}			
}
</script>

<script type="text/javascript">
//validar fin error y recuperar datos:
nivAE="<%=utils.getValorContexto("NIVELES")%>";
total=<%=lim%>;
llenos=<%=w%>;

if(nivAE.indexOf("|")>=0){ //si SI hay pipe, quiere decir que vengo del fin error (porque ya no vale un solo numero) y tomo esos valores.
	recuperar(nivAE);
}
</script>



			<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE03301.js"></script>
			<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
			<script type="text/javascript" src="/aumx_es_web_pub/js/jquery-3.3.1.js"></script>
			<script type="text/javascript" src="/aumx_es_web_pub/js/tether.min.js"></script>
			<script type="text/javascript" src="/aumx_es_web_pub/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="/aumx_es_web_pub/js/modal.js"></script>
			</form>			
		</div>
	</customform>
</body>
</html>