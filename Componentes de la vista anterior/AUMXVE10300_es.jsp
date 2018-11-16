<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Asignación de Aplicaciones</title>
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10300.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">		
</head>
<body onLoad="jsLanzaMensaje(); controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE10300" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento">
				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
				<customhidden><input name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
				<customhidden><input name="N_HDN_ESTADOE" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
				<customhidden><input name="N_HDN_REFDESC" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
				<customhidden><input name="N_HDN_CONTACT" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
				<customhidden><input name="N_HDN_CVE_OPER" type="hidden" value='<%= utils.getValorContexto("CVE_OPER") %>' /></customhidden>
				<customhidden><input name="N_HDN_S_APLIC" type="hidden" value='<%= utils.getValorContexto("S_APLIC") %>' /></customhidden>
				<customhidden><input name="S_NOM_APLIC" type="hidden" value='<%= utils.getValorContexto("S_NOM_APLIC") %>' /></customhidden>
				<customhidden><input name="S_PERFIL" type="hidden" value='<%= utils.getValorContexto("S_PERFIL") %>' /></customhidden>
				<customhidden><input name="S_NOM_PERFIL" type="hidden" value='<%= utils.getValorContexto("S_NOM_PERFIL") %>' /></customhidden>
				<customhidden><input name="AV_CODIGO" id="AV_CODIGO" type="hidden" value='<%= utils.getValorContexto("AV_CODIGO") %>' /></customhidden>
				<customhidden><input name="ER_CODIGO" id="ER_CODIGO" type="hidden" value='<%= utils.getValorContexto("ER_CODIGO") %>' /></customhidden>
				<customhidden><input name="ER_BANDERA" id="ER_BANDERA" type="hidden" value='<%= utils.getValorContexto("ER_BANDERA") %>' /></customhidden>
				
				<div class="divPrincipal">
				<table width="750">
					<tr>
						<td height="34" align="center">&nbsp;</td>
					</tr>
					<tr>
						<td align="center">
							<table align="center" class="tituloTabla" width="100%">
								<tr>
									<td align="center">ASIGNACION DE APLICACIONES</td>
								</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td align="center">
							<table align="center" class="subtituloTabla" width="100%">
								<tr>
									<td>Datos de la empresa</td>
								</tr>
							</table>
							<table align="center" class="panel" width="100%" style="table-layout: fixed;">
								<tr>
									<td width="100%">
										<table width="100%" align="center">
											<tr>
												<td align="left" width="25%" class="cellTablaN">Referencia</td>
												<td align="left" width="25%">
													
													<input class="disabled" type="text" size="10" value='<%= utils.getValorContexto("REFEREN") %>' readonly="readonly"/>
												</td>
												<td align="left" width="25%" class="cellTablaN">Tipo de estado</td>
												<td align="left" width="25%">
													<input class="disabled" type="text" size="10" value='<%= utils.getValorContexto("ESTADOE") %>' readonly="readonly"/>
												</td>
											</tr>
											<tr>
												<td align="left" width="25%" class="cellTablaN" >Nombre empresa</td>
												<td align="left" colspan="3">
													<input class="disabled" type="text" size="35" value='<%= utils.getValorContexto("REFDESC") %>' readonly="readonly"/>
												</td>
											</tr>
											<tr>
												<td align="left" width="25%" class="cellTablaN">Nombre del contacto</td>
												<td align="left">
													<input class="disabled" type="text" size="35" value='<%= utils.getValorContexto("CONTACT") %>' readonly="readonly"/>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td align="center" width="100%">
							<table align="center" width="100%" cellspacing="0">
								<tr height="24">
									<td class="subtituloTabla" align="left" colspan="2">Seleccione aplicación</td>
								</tr>
								<tr>
									<td width="50%" class="subtituloTabla" align="center" >Aplicación</td>
									<td width="50%" class="subtituloTabla" align="center">Perfil</td>
								</tr>
								<tr height="20" align="middle" class="renglonImpar">
									<td align="center" class="cellTabla tablasDinamicas">
											<select class="combo_normal"  name="cmb_apli" onChange="doPerfil(this.value)">
												<option value="-1"> --Seleccione aplicación--</option>
								<%
									int i=0;
									String cod_aplic = "";
									String nom_aplic = "";
									int tam_Lista = 0;
									
									tam_Lista = utils.getDatoContexto("LST_APLIC").getLongitud();
								
								
									for(i = 0; i < tam_Lista; i++){
											
										 cod_aplic = utils.getValorContexto("LST_APLIC." + i + ".CODAPLI").trim();
										 nom_aplic = utils.getValorContexto("LST_APLIC." + i + ".NOMAPLI").trim();
												
										if(!cod_aplic.equals("EXTU")){
									%>
												<option value="<%=cod_aplic%>-<%=nom_aplic%>"> <%=nom_aplic%> </option>
									<%
										}
									}
								%>
										</select>
									</td>								
									<td align="center" class="cellTabla tablasDinamicasFin">
											<select class="combo_normal"  name="cmb_perfil">
												<option value="-1"> --Seleccione perfil--</option>
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
									</td>		
								
								</tr>

							</table>	
						</td>
					</tr>
					<tr>
						<td>
							<table border="0" align="center" width="100%">
								<tr align="center">
									<td>
										<input type="button" class="button_little" value="Regresar" onClick="jsRegresar(0X2501017);" />&nbsp;
										<input type="button" class="button_little" value="Asignar" onClick="jsAsignar();" />&nbsp;
									</td>
								</tr>
							</table>		
						</td>
					</tr>
				</table>
				</div>
				<script type="text/javascript">
				
				var cod=document.AUMXVE10300.N_HDN_S_APLIC.value;
				var des=document.AUMXVE10300.S_NOM_APLIC.value;
				var selec ="";
				if(cod != ""){
					selec = cod+"-"+des;
					seleccionarCodigoCombo('cmb_apli',selec,'AUMXVE10300');
				}
							
				if("<%=utils.getValorContexto("ERROR_MDO").trim()%>"!=""){
					if("<%=utils.getValorContexto("ERROR_MDO")%>"=="-8"){
						alert("Estimado usuario  su clave de operación es incorrecta");
					}else if("<%=utils.getValorContexto("ERROR_MDO")%>"=="-10"){
						alert("Estimado usuario su clave de operación esta bloqueada");
					}else{
						alert("Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde");
					}
				}

				</script>
			</form>
		</customform>
	</body>
</html>
