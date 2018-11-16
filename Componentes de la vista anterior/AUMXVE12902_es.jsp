<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>COMPROBANTE REACTIVAR ADMINISTRADOR</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<SCRIPT LANGUAGE="javascript" src="/atcl_es_web_pub/js/utils.js"></SCRIPT>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE12902" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
  
  
<customhidden><input name="ADMINEM" type="hidden"
	value='<%= utils.getValorContexto("ADMINEM") %>' /></customhidden>

<customhidden><input name="CVE_ACCESO" type="hidden"
	value='<%= utils.getValorContexto("CVE_ACCESO") %>' /></customhidden>
	
  <div class="divPrincipal">
	<table width="750px" align="left">
		<tr>
			<td height="34" colspan="3">&nbsp;
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table class="tituloTabla" width=100%>
					<tr>
						<td>COMPROBANTE REACTIVAR ADMINISTRADOR</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td colspan="2">
				<table class="subtituloTabla" width=100%>
					<tr>
						<td>Datos de la empresa</td>
					</tr>
				</table>
				<table class="panel" width=100% style="table-layout: fixed;">
					<tr>
						<td width=100%>
							<table width=100%>
								<tr>
									<td width=30% class="cellTablaN" align=left >Referencia</td>
									<td width=70% align=left><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN").trim()%>" readonly="readonly"/></td>
									
								</tr>
								<tr>
									<td width=30%  class="cellTablaN" align=left>Nombre empresa</td>
									<td  align=left ><input class="disabled" type="text" size="50" value="<%=utils.getValorContexto("REFDESC").trim()%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table class="subtituloTabla"  width=100%>
					<tr>
						<td>Datos del contacto</td>
					</tr>
				</table>
				<table class="panel" width=100% style="table-layout: fixed;">
					<tr>
						<td width=100%>
							<table width=100%>
								<tr>
									<td width=30%  class="cellTablaN" align=left>Identificador de administrador</td>
									<td width=70%  align=left><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ADMINEM").trim()%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=30%  class="cellTablaN" align=left>Nombre del contacto</td>
									<td  align=left><input id="contact" class="disabled" type="text" size="50" maxlength="35" value="<%=utils.getValorContexto("CONTACT").trim()%>" onKeyPress="return esValidoText(event)"/></td>
								</tr>
								<tr>
									<td width=30% class="cellTablaN" align=left>Nueva clave de acceso</td>
									<td width=70% align=left><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("CVE_ACCESO").trim()%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			    <BR>
				<table align="center" width=100%>
					<tr align="center">
						<td>
							<input type="button" class="button_little" value="Regresar" onClick="jsRegresar(0X2501017)" />&nbsp;
							<input type="button" class="button_little" value="Imprimir" onClick="jsImprimirComprobante()" />&nbsp;
						</td>
					</tr>
				</table>				
			</td>
		</tr>
	</table>
	<div id="impresion" style="display">
	<table width="750px" >
		<tr>
			<td height="34" ></td>
		</tr>
		<tr>
			<td class="tituloTabla">
				<table>
					<tr>
						<td class="tituloTabla">COMPROBANTE REACTIVAR ADMINISTRADOR</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td class="subtituloTabla">
				<table>
					<tr>
						<td class="subtituloTabla" >Datos de la empresa</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table class="panel" width=100% style="table-layout:fixed;">
					<tr>
						<td width=100%>
							<table width=100%>
								<tr>
									<td width=30% class="cellTablaN" align=left >Referencia</td>
									<td width=70% align=left><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN").trim()%>" readonly="readonly"/></td>
									
								</tr>
								<tr>
									<td width=30%  class="cellTablaN" align=left>Nombre empresa</td>
									<td  align=left ><input class="disabled" type="text" size="50" value="<%=utils.getValorContexto("REFDESC").trim()%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="subtituloTabla">
				<table>
					<tr>
						<td class="subtituloTabla">Datos del contacto</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table class="panel" width=100% style="table-layout: fixed;">
					<tr>
						<td width=100%>
							<table width=100%  >
								<tr>
									<td width=30%  class="cellTablaN" align=left>Identificador de administrador</td>
									<td width=70%  align=left><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ADMINEM").trim()%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=30%  class="cellTablaN" align=left>Nombre del contacto</td>
									<td  align=left><input id="contact" class="disabled" type="text" size="50" maxlength="35" value="<%=utils.getValorContexto("CONTACT").trim()%>" onKeyPress="return esValidoText(event)"/></td>
								</tr>
								<tr>
									<td width=30% class="cellTablaN" align=left>Nueva clave de acceso</td>
									<td width=70% align=left><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("CVE_ACCESO").trim()%>" readonly="readonly"/></td>
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
