<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>REACTIVAR ADMINISTRADOR</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></SCRIPT>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<!--<script type="text/javascript" src="/aumx_es_web_pub/js/utilEx.js"></script>-->
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
<script>
function reactivar(){
	document.AUMXVE12900.evento.value='0X2501000';
	document.AUMXVE12900.submit();	
}
</script>
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE12900" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
  <br>
<customhidden><input name="REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
<customhidden><input name="ADMINEM" type="hidden" value='<%= utils.getValorContexto("ADMINEM") %>' /></customhidden>
<customhidden><input name="REFDESC" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
<customhidden><input name="CONTACT" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
 
 <div class="divPrincipal">
	<table width="750px">
		<tr>
			<td height="34">&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table class="tituloTabla" width=100%>
					<tr>
						<td>REACTIVAR ADMINISTRADOR</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td>
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
									<td width=30% class="cellTablaN" align="LEFT" >Referencia</td>
									<td width=70% align="LEFT" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN").trim()%>" readonly="readonly"/></td>
									
								</tr>
								<tr>
									<td width=30%  class="cellTablaN" align="LEFT" >Nombre empresa</td>
									<td   align="LEFT" ><input class="disabled" type="text" size="50" value="<%=utils.getValorContexto("REFDESC").trim()%>" readonly="readonly"/></td>
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
									<td width=30%  class="cellTablaN" align="LEFT" >Identificador de administrador</td>
									<td width=70%  align="LEFT"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ADMINEM").trim()%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=30%  class="cellTablaN" align="LEFT" >Nombre del contacto</td>
									<td  align="LEFT" ><input id="contact" class="disabled" type="text" size="35" maxlength="35" value="<%=utils.getValorContexto("CONTACT").trim()%>" onKeyPress="return esValidoText(event)"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td>
				<BR>
				<table align="center" width=100%>
					<tr align="center">
						<td>
							<input type="button" class="button_little" onClick="jsRegresar(0X2501017);" value="Regresar">
							<input type="button" class="button_little" onClick="reactivar();" value="Reactivar">
						</td>
					</tr>
				</table>		
			</td>
		</tr>		
	</table>
	</div>
  <br>

<script type="text/javascript">

window.onload=function(){
	
		if('<%=utils.getValorContexto("ERROR_MDO")%>'!=null  &&  '<%=utils.getValorContexto("ERROR_MDO").trim()%>'!=""){ //DEBE SER AND (&&), mas no OR (||)
			  if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-8")
				   alert('Estimado usuario  el usuario a reactivar no existe');
			   else if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-10")
				   alert('Estimado usuario su clave de operación esta bloqueada');
			   else
				   alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
	}
	
	if ('<%=utils.getValorContexto("ER_BANDERA").trim()%>'=="1"){
		if('<%=utils.getValorContexto("ER_CODIGO")%>'==null  ||  '<%=utils.getValorContexto("ER_CODIGO ").trim()%>'=="")
			   alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
	}

}
</script>
 
</form>
</customform>
</body>
</html>
