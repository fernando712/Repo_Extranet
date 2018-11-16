<%-- 
  - Autor(s):Cruz Rodríguez Renato
  - Fecha:01/12/2010
  - Descripción:JSP Alta de Referencia
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Baja de Referencia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10700.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
<body onload="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
		<customform> 
			<form name="AUMXVE10700" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento">
				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
				<customhidden><input name="N_HDN_CVE_OPER" type="hidden" value='<%= utils.getValorContexto("CVE_OPER") %>' /></customhidden>
				<customhidden><input name="N_HDN_REFDESC" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
				<customhidden><input name="N_HDN_CONTACT" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
				<customhidden><input name="N_HDN_ESTADOE" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
				<customhidden><input name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>

	<div class="divPrincipal">
				<table width=750>
					<tr>
						<td height="34" align=center>&nbsp;</td>
					</tr>
					<tr>
						<td align=center>
							<table align="center" class="tituloTabla" width=100%>
								<tr>
									<td align="center"  >BAJA DE REFERENCIA</td>
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
													<input class="disabled" type="text" size="10" value="<%= utils.getValorContexto("REFEREN") %>" readonly="readonly"/>
												</td>
												<td align="left" width=25%  class="cellTablaN" >Tipo de estado</td>
												<td align="left" width=25%  >
													<input class="disabled" type="text" size="10" value="<%= utils.getValorContexto("ESTADOE") %>" readonly="readonly"/>
												</td>
											</tr>
											<tr>
												<td align="left" width=25%  class="cellTablaN" >Nombre empresa</td>
												<td align="left" colspan="3" >
													<input class="disabled" type="text" size="35" value="<%= utils.getValorContexto("REFDESC") %>" readonly="readonly"/>
												</td>
											</tr>
											<tr>
												<td align="left" width=25%  class="cellTablaN" >Nombre del contacto</td>
												<td align="left">
													<input class="disabled" type="text" size="30" value="<%= utils.getValorContexto("CONTACT") %>" readonly="readonly"/>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<!--<table align="center" class="subtituloTabla" width="100%">
								<tr>
									<td align="left">Captura la clave de operación</td>
								</tr>
							</table>
							<table align="center" class="panel" width="100%" style="table-layout:fixed;">
								<tr>
									<td width="100%">
										<table width="100%" class="" align="center" >
											<tr>
												<td align="left" width="25%"  class="cellTablaN" >Clave de operación</td>
												<td align="left" width="75%" >
													<input class="enabled" id="TXT_CVE_OPER" onpaste="return false" onKeyPress="return jsVerificaAlfabetico(event);" type="password" size="10" maxlength="8" value="" />
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>-->				
							<br>
							<table border=0  align="center" width=100%>
								<tr align="center">
									<td >
										<input type="button" class="button_little" value="Regresar" onclick="jsRegresar(0X2501017);" />&nbsp;
										<input type="button" class="button_little" value="Baja" onclick="jsBaja();" />&nbsp;
									</td>
								</tr>
							</table>		
						</td>
					</tr>
				</table>
				</div>
				<br>
				<br>
			</form>
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
		</customform>
	</body>
</html>