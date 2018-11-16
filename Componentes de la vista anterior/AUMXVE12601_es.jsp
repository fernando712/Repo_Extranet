<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comprobante Asignacion de Dispositivos a una Referencia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<SCRIPT LANGUAGE="javascript" src="/atcl_es_web_pub/js/utils.js"></SCRIPT>
<script type="text/javascript">var dmWorkPath="/aumx_es_web_pub/js/";</script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
	<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
		<customform> 
			<form name="AUMXVE12601" action="<%=utils.getDestinoFormulario()%>" method="post" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento">
				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
				<customhidden><input name="LST_DISP" type="hidden" value='<%= utils.getValorContexto("LST_DISP") %>' /></customhidden>
				<customhidden><input name="DISP01" type="hidden" value='<%= utils.getValorContexto("DISP01") %>' /></customhidden>
				<customhidden><input name="DISP02" type="hidden" value='<%= utils.getValorContexto("DISP02") %>' /></customhidden>
				<customhidden><input name="DISP03" type="hidden" value='<%= utils.getValorContexto("DISP03") %>' /></customhidden>
				<customhidden><input name="DISP05" type="hidden" value='<%= utils.getValorContexto("DISP05") %>' /></customhidden>
				<customhidden><input name="DISP04" type="hidden" value='<%= utils.getValorContexto("DISP04") %>' /></customhidden>
				<customhidden><input name="DISP06" type="hidden" value='<%= utils.getValorContexto("DISP06") %>' /></customhidden>
				<customhidden><input name="DISP07" type="hidden" value='<%= utils.getValorContexto("DISP07") %>' /></customhidden>
				<customhidden><input name="DISP08" type="hidden" value='<%= utils.getValorContexto("DISP08") %>' /></customhidden>
				<customhidden><input name="DISP09" type="hidden" value='<%= utils.getValorContexto("DISP09") %>' /></customhidden>
				<customhidden><input name="DISP10" type="hidden" value='<%= utils.getValorContexto("DISP10") %>' /></customhidden>
				<customhidden><input name="DISP11" type="hidden" value='<%= utils.getValorContexto("DISP11") %>' /></customhidden>
				<customhidden><input name="DISP12" type="hidden" value='<%= utils.getValorContexto("DISP12") %>' /></customhidden>
				<customhidden><input name="DISP13" type="hidden" value='<%= utils.getValorContexto("DISP13") %>' /></customhidden>
				<customhidden><input name="DISP14" type="hidden" value='<%= utils.getValorContexto("DISP14") %>' /></customhidden>
				<customhidden><input name="DISP15" type="hidden" value='<%= utils.getValorContexto("DISP15") %>' /></customhidden>
				<customhidden><input name="DISP16" type="hidden" value='<%= utils.getValorContexto("DISP16") %>' /></customhidden>
				<customhidden><input name="DISP17" type="hidden" value='<%= utils.getValorContexto("DISP17") %>' /></customhidden>
				<customhidden><input name="DISP18" type="hidden" value='<%= utils.getValorContexto("DISP18") %>' /></customhidden>
				<customhidden><input name="DISP19" type="hidden" value='<%= utils.getValorContexto("DISP19") %>' /></customhidden>
				<customhidden><input name="DISP20" type="hidden" value='<%= utils.getValorContexto("DISP20") %>' /></customhidden>

				<div class="divPrincipal">
				<div id="principal" style="overflow:scroll; height:550px; width:100%">
				<table width="750">
					<tr>
						<td height="34" colspan="3"  align="center">&nbsp;
						</td>
					</tr>	
					<tr>
						<td colspan="3"  align="center">
							<table align="center" class="tituloTabla" width="100%">
								<tr>
									<td align="center">ASIGNACION DE TOKENS REALIZADA</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="center">
							<table align="center" class="subtituloTabla" width="100%">
								<tr>
									<td align="left" >Datos de la empresa</td>
								</tr>
							</table>
							<table align="center" class="panel" width="100%" style="table-layout: fixed;">
								<tr>
									<td width="100%">
										<table width="100%"  align="center">
											<tr>
												<td width="25%" align="left" class="cellTablaN">Referencia</td>
												<td width="25%" align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
												<td width="25%" align="left" class="cellTablaN">Tipo de estado</td>
												<td width="25%" align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%" align="left" class="cellTablaN">Nombre empresa</td>
												<td colspan="3" align="left"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%"  align="left" class="cellTablaN">Nombre del contacto</td>
												<td align="left"><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%" align="left" class="cellTablaN">Modelo de dispositivo</td>
												<td align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("SEL_DISP")%>" readonly="readonly"/></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td width="100%">
							<table width="100%" cellspacing="0">
								<tr height="20">
									<td class="subtituloTabla" align="left" colspan="2">Dispositivos de Acceso Seguro Digital Asignados</td>
								</tr>
								<tr height="20">
									<td class="subtituloTabla" align="center" >Numero de serie</td>
									<td class="subtituloTabla" align="center" >Estatus</td>
								</tr>
								<% 
							String disp = "";
							String edo = "";
							
							int i = 0;
							while(!utils.getValorContexto("LST_DISP_SAL."+i+".DISPO").equals("")){
								disp = utils.getValorContexto("LST_DISP_SAL."+i+".DISPO").trim();
								edo =  utils.getValorContexto("LST_DISP_SAL."+i+".EDO").trim();
								
							%>
							<tr height="20" align="middle" class="<%=(i%2 == 0)?"renglonImpar":"renglonPar"%>">
								<td align="left" class="cellTabla tablasDinamicas"><%=disp %></td>
								<td align="left" class="cellTabla tablasDinamicasFin"><%=edo%></td>
							</tr>
									<%
								i++;
							}
							  %>	
							</table>
						</td>
					</tr>
					<tr>
						<td align="center">
							<table border="0" align="center" width="100%">
								<tr align="center">
									<td >
										<button class="button_little" onClick="jsRegresar(0X2501017);">Regresar</button>&nbsp;
										<input type="button" class="button_little" onClick="jsImprimirComprobante();" value="Imprimir"/>
										<!--<button  class="button_little" onClick="js_imprimir();">Imprimir</button>&nbsp;-->
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div id="impresion" style="display">
				 	<table width="750">	
					<tr>
						<td colspan="3" class="tituloTabla">
							<table width="100%">
								<tr>
									<td class="tituloTabla">ASIGNACION DE TOKENS REALIZADA</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="subtituloTabla">
							<table width="100%">
								<tr>
									<td class="subtituloTabla" >Datos de la empresa</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table align="center" class="panel" width="100%" style="table-layout: fixed;">
								<tr>
									<td width="100%">
										<table width="100%"  align="center">
											<tr>
												<td width="25%" align="left" class="cellTablaN">Referencia</td>
												<td width="25%" align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
												<td width="25%" align="left" class="cellTablaN">Tipo de estado</td>
												<td width="25%" align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%" align="left" class="cellTablaN">Nombre empresa</td>
												<td colspan="3" align="left"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%" align="left" class="cellTablaN">Nombre del contacto</td>
												<td align="left"><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%" align="left" class="cellTablaN">Modelo de dispositivo</td>
												<td align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("SEL_DISP")%>" readonly="readonly"/></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td width="100%">
							<table width="100%" cellspacing="0">
								<tr height="24">
									<td class="subtituloTabla" align="left" colspan="4" >Dispositivos de Acceso Seguro Digital Asignados</td>
								</tr>
								<% 
							 disp = "";
							 edo = "";
							
							 i = 0;
							while(!utils.getValorContexto("LST_DISP_SAL."+i+".DISPO").equals("")){
								disp = utils.getValorContexto("LST_DISP_SAL."+i+".DISPO").trim();
								edo =  utils.getValorContexto("LST_DISP_SAL."+i+".EDO").trim();
																
							%>
							<tr height="20" align="middle" class="<%=(i%2 == 0)?"renglonImpar":"renglonPar"%>" >
								<td align="left" class="cellTabla tablasDinamicas"><%=disp %></td>
								<td align="left" class="cellTabla tablasDinamicasFin"><%=edo%></td>
							</tr>
									<%
								i++;
							}
							  %>	
								
								
								
								
							</table>
						</td>
					</tr>
					</table>
					</div>
				</div>
				</div>
				<script type="text/javascript">
					document.getElementById('impresion').style.display = "none"; 
				</script>
			</form>
		</customform>
	</body>
</html>