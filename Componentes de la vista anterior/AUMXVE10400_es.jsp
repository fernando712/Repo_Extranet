<%-- 
  - Autor(s):Diego Maldonado
  - Fecha:18/11/2010
  - Descripción:JSP Desasignación de Aplicaciones a Referencia
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Desasignación de Aplicaciones a Referencia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10400.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
	<body onload="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
		<customform> 
			<form name="AUMXVE10400" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento">
				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
				<customhidden><input name="S_APLIC" type="hidden" value='<%= utils.getValorContexto("S_APLIC") %>' /></customhidden>
				<customhidden><input name="N_HDN_CVE_OPER" type="hidden" value='<%= utils.getValorContexto("CVE_OPER") %>' /></customhidden>
				<customhidden><input name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
				<customhidden><input name="N_HDN_ESTADOE" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
				<customhidden><input name="N_HDN_REFDESC" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
				<customhidden><input name="N_HDN_CONTACT" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
				<customhidden><input name="N_HDN_LST_APLIC" type="hidden" value='<%= utils.getValorContexto("LST_APLIC") %>' /></customhidden>
	
	<div class="divPrincipal">
				<table width=750>
					<tr>
						<td height="34" align=center>&nbsp;</td>
					</tr>
					<tr>
						<td align=center>
							<table align="center" class="tituloTabla" width=100%>
								<tr>
									<td align="center"  >DESASIGNACION DE APLICACIONES</td>
								</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td  align=center>
							<table align="center" class="subtituloTabla"  width=100%>
								<tr  >
									<td align="left" >Datos de la empresa</td>
								</tr>
							</table>
							<table align="center" class="panel" width=100% style="table-layout: fixed;">
								<tr>
									<td width=100%>
										<table width=100%  align="center">
											<tr>
												<td align="left" width=25%  class="cellTablaN" >Referencia</td>
												<td align="left" width=25%  >
													<input class="disabled" type="text" size="10" value='<%=utils.getValorContexto("REFEREN")%>' readonly="readonly"/>
												</td>
												<td align="left" width=25%  class="cellTablaN" >Tipo de estado</td>
												<td align="left" width=25%  >
													<input class="disabled" type="text" size="10" value='<%=utils.getValorContexto("ESTADOE")%>' readonly="readonly"/>
												</td>
											</tr>
											<tr>
												<td align="left" width=25%  class="cellTablaN" >Nombre empresa</td>
												<td align="left" colspan="3" >
													<input class="disabled" type="text" size="35" value='<%=utils.getValorContexto("REFDESC")%>' readonly="readonly"/>
												</td>
											</tr>
											<tr>
												<td align="left" width=25%  class="cellTablaN" >Nombre del contacto</td>
												<td>
													<input class="disabled" type="text" size="35" value='<%=utils.getValorContexto("CONTACT")%>' readonly="readonly"/>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td  >
							<table   width=100% cellspacing="0">
								<tr height=24 >
									<td   class="subtituloTabla" align="left" colspan="4" >Seleccione aplicación</td>
								</tr>
								<tr>
									<td width=33%  class="subtituloTabla" align="center" colspan="2" >Aplicación</td>
									<td width=33%  class="subtituloTabla" align="center">Perfil</td>
									<td width=34%  class="subtituloTabla" align="center">Aplicación Titular</td>
								</tr>
								
								<%int tamLista = 0;
								  int contApli = 0;
								try{ 
									
									String apptitu = utils.getValorContexto("APPTITU").trim();
									tamLista = utils.getDatoContexto("LST_APLIC").getLongitud();
									String aplicacion = "";
									String perfil = "";
									String codAplica = "";
									String codPerfil = "";
									String cadena = "";
																		
									for(int x = 0 ; x<tamLista;x++){
										aplicacion = utils.getValorContexto("LST_APLIC."+x+".NOMAPLI").trim();
										perfil = utils.getValorContexto("LST_APLIC."+x+".DESPERF").trim();
										codAplica = utils.getValorContexto("LST_APLIC."+x+".CODAPLI").trim();
										codPerfil = utils.getValorContexto("LST_APLIC."+x+".CODPERF").trim();
										cadena = codAplica+"-"+aplicacion+"-"+codPerfil+"-"+perfil;
										if(!codAplica.equals("EXTU")){
										
										contApli++;										
								%>
								<tr height=20 align="middle" class="<%=(contApli%2 == 0)?"renglonImpar":"renglonPar"%>" > 
									<td align="center" class="tablasDinamicas" >
										<input type="checkbox" size="2" name="CHCK_APLIC" value="<%=cadena%>">
									</td>
									<td class="cellTabla tablasDinamicas" align="center"><%=aplicacion%></td>
									<td class="cellTabla tablasDinamicas" align="center"><%=perfil%></td>
									<td align="center" class="tablasDinamicasFin" >
										<input type="radio" size="2" name="radioAplic" value="" disabled   <%=apptitu.equals(codAplica)?"checked='checked'":""%>></td>
								</tr>
								<%
									}
									}
								}catch(Exception e){}
								%>
							</table>
						</td>
					</tr>
					<tr>
						<td >
							<br>
							<table border=0  align="center" width=100%>
								<tr align="center">
									<td >
										<input type="button" class="button_little" value="Regresar" onclick="jsRegresar(0X2501017);" />&nbsp;
										<input type="button" class="button_little" value="Des-asignar" onClick="jsDesasignar('<%=contApli%>');" />&nbsp;
									</td>
								</tr>
							</table>		
						</td>
					</tr>		
				</table>
				</div>
			</form>
		</customform>
		<script type="text/javascript">
			    if('<%=utils.getValorContexto("ERROR_MDO").trim()%>' != ""){
					if('<%=utils.getValorContexto("ERROR_MDO")%>' == "-8"){
			            alert('Estimado usuario su clave de operación es incorrecta');
			        }else if('<%=utils.getValorContexto("ERROR_MDO")%>' == "-10"){
			            alert('Estimado usuario su clave de operación esta bloqueada');
			        }else{
			            alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
					}
				}
				if('<%=utils.getValorContexto("ER_BANDERA").trim()%>' == "1"){
					if('<%=utils.getValorContexto("ER_CODIGO").trim()%>' == ""){
						alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
					}
				}
			</script>
	</body>
</html>