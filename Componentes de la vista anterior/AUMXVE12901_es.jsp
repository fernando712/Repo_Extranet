<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<SCRIPT LANGUAGE="javascript" src="/atcl_es_web_pub/js/utils.js"></SCRIPT>
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE12901" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
  <br>
  <br>
  <br>
  </br>
<customhidden><input name="CVE_ACCESO" type="hidden"
	value='<%= utils.getValorContexto("CVE_ACCESO") %>' /></customhidden>
 
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</form>
</customform>
</body>
</html>
