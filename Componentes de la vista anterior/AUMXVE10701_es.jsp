<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comprobante Baja de Referencia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript">var dmWorkPath="/aumx_es_web_pub/js/";</script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">		
</head>
	<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
		<customform> 
			<form name="AUMXVE10701" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento">
				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
				<customhidden><input name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
				<customhidden><input name="N_HDN_REFDESC" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
				<customhidden><input name="N_HDN_CONTACT" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
				<customhidden><input name="N_HDN_ESTADOE" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
				
	<div class="divPrincipal">
				<table width=750>
					<tr>
						<td height="34" align=center>&nbsp;</td>
					</tr>
					<tr>
						<td align=center>
							<table align="center" class="tituloTabla" width=100%>
								<tr>
									<td align="center"  >BAJA DE REFERENCIA REALIZADA</td>
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
													<input class="disabled" type="text" size="10" value='<%= utils.getValorContexto("REFEREN") %>' readonly="readonly" />
												</td>
												<td align="left" width=25%  class="cellTablaN" >Tipo de estado</td>
												<td align="left" width=25%  >
													<input class="disabled" type="text" size="10" value='<%= utils.getValorContexto("ESTADOE") %>' readonly="readonly" />
												</td>
											</tr>
											<tr>
												<td align="left" width=25%  class="cellTablaN" >Nombre empresa</td>
												<td align="left" colspan="3" >
													<input class="disabled" type="text" size="35" value='<%= utils.getValorContexto("REFDESC") %>' readonly="readonly" />
												</td>
											</tr>
											<tr>
												<td align="left" width=25%  class="cellTablaN" >Nombre del contacto</td>
												<td align="left"  >
													<input class="disabled" type="text" size="30" value='<%= utils.getValorContexto("CONTACT") %>' readonly="readonly" /></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td  align=center>
							<table border=0  align="center" width=100%>
								<tr align="center">
									<td >
										<input type="button" class="button_little" value="Regresar" onClick="jsRegresar(0X2501017)" />&nbsp;
										<input type="button" class="button_little" value="Imprimir" onClick="jsImprimirComprobante()" />&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>	
				</table>
				<div id="impresion" style="display">
					<table width=750>
						<tr>
							<td height="34">&nbsp;</td>
						</tr>
						<tr>
							<td class="tituloTabla" >
								<table width="100%">
									<tr>
										<td class="tituloTabla">BAJA DE REFERENCIA REALIZADA</td>
									</tr>
								</table>
							</td>
						</tr>	
						<tr>
							<td class="subtituloTabla">
								<table>
									<tr>
										<td class="subtituloTabla">Datos de la empresa</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table align="center" class="panel" width=100% style="table-layout: fixed;">
									<tr>
										<td width=100%>
											<table width=100%  align="center">
												<tr>
													<td align="left" width=25%  class="cellTablaN" >Referencia</td>
													<td align="left" width=25%  >
														<input class="disabled" type="text" size="10" value='<%= utils.getValorContexto("REFEREN") %>' readonly="readonly" />
													</td>
													<td align="left" width=25%  class="cellTablaN" >Tipo de estado</td>
													<td align="left" width=25%  >
														<input class="disabled" type="text" size="10" value='<%= utils.getValorContexto("ESTADOE") %>' readonly="readonly" />
													</td>
												</tr>
												<tr>
													<td align="left" width=25%  class="cellTablaN" >Nombre empresa</td>
													<td align="left" colspan="3" >
														<input class="disabled" type="text" size="35" value='<%= utils.getValorContexto("REFDESC") %>' readonly="readonly" />
													</td>
												</tr>
												<tr>
													<td align="left" width=25%  class="cellTablaN" >Nombre del contacto</td>
													<td align="left">
														<input class="disabled" type="text" size="30" value='<%= utils.getValorContexto("CONTACT") %>' readonly="readonly" /></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
				</div>
				<script type="text/javascript">
					document.getElementById('impresion').style.display = "none"; 
				</script>
			</form>
		</customform>
	</body>
</html>