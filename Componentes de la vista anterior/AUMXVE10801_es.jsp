<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comprobante Modificación de Niveles</title>
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
<form name="AUMXVE10801" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  </input><input type="hidden" name="ventana" value="<%=utils.getVentana()%>">

	</input><customhidden><input name="CI_NIV_USU" type="hidden"
	value='<%= utils.getValorContexto("CI_NIV_USU") %>' /></customhidden>
	
<div class="divPrincipal">
	<table width="750px">
		<tr>
			<td height="34">&nbsp;
			</td>
		</tr>
		<tr>
			<td >
				<table class="tituloTabla" width=100%>
					<tr>
						<td>MODIFICACION DE NIVELES REALIZADA</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td>
				<table class="subtituloTabla"  width=100%>
					<tr>
						<td >Datos de la empresa</td>
					</tr>
				</table>
				<table class="panel" width=100% style="table-layout: fixed;">
					<tr>
						<td width=100%>
							<table width=100%>
								<tr>
									<td width=25%  class="cellTablaN" >Referencia</td>
									<td width=25% align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
									<td width=25%  class="cellTablaN" >Tipo de estado</td>
									<td width=25% align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=25%  class="cellTablaN" >Nombre empresa</td>
									<td  colspan="3" ><input class="disabled" type="text" size="60" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=25%  class="cellTablaN" >Nombre del contacto</td>
									<td   ><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width=100% cellspacing="0">
					<tr height=24 >
						<td   class="subtituloTabla" colspan="3" >Niveles actualizados</td>
					</tr>
					<tr>
						<td width=25% class="subtituloTabla" align="center" >Nivel</td>
						<td width=30%  class="subtituloTabla" align="center">Clave</td>
						<td width=45%  class="subtituloTabla" align="center">Descripción</td>
					</tr>
					<%
					int w=0;
					String nv_num = "";
					String nv_cod = "";
					String nv_des = "";
					String aux = "";
										
					while (!utils.getValorContexto("LST_ANIV."+w+".NIVEL").trim().equals(""))
					{
						aux = utils.getValorContexto("LST_ANIV."+w+".NIVEL").trim();
						nv_num = aux.substring(1,2);
						nv_cod = aux.substring(2,6);
						nv_des = aux.substring(6);
												
					%>
					<tr height=20 align="middle" class="<%=(w%2 == 0)?"renglonImpar":"renglonPar"%>"  > 
						<td align="center" class="cellTabla tablasDinamicas"><%=nv_num%></td>
						<td align="center" class="cellTabla tablasDinamicas"><%=nv_cod%></td>
						<td align="center" class="cellTabla tablasDinamicasFin"><%=nv_des%></td>
					</tr>
					<%
					w++;
					}//fin while
					%>
				</table>	
			</td>
		</tr>	
		<tr>
			<td >
				<table align="center" width=100%>
					<tr align="center">
						<td >
						<input type="button" class="button_little" value="Regresar" onClick="jsRegresar(0X2501001)" />&nbsp;
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
			<td height="34">&nbsp;
			</td>
		</tr>
		<tr>
			<td class="tituloTabla">
				<table width="100%">
					<tr>
						<td class="tituloTabla">MODIFICACION DE NIVELES REALIZADA</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td class="subtituloTabla">
				<table width="100%">
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
									<td width=25%  class="cellTablaN" >Referencia</td>
									<td width=25%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
									<td width=25%  class="cellTablaN" >Tipo de estado</td>
									<td width=25%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=25%  class="cellTablaN" >Nombre empresa</td>
									<td  colspan="3" ><input class="disabled" type="text" size="60" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=25%  class="cellTablaN" >Nombre del contacto</td>
									<td   ><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width=100% cellspacing="0">
					<tr height=24 >
						<td   class="subtituloTabla" colspan="3" >Niveles actualizados</td>
					</tr>
					<tr>
						<td width=25% class="subtituloTabla" align="center" >Nivel</td>
						<td width=30%  class="subtituloTabla" align="center">Clave</td>
						<td width=45%  class="subtituloTabla" align="center">Descripción</td>
					</tr>
					<%
					int x=0;
					
					while (!utils.getValorContexto("LST_ANIV."+x+".NIVEL").trim().equals(""))
					{
						aux = utils.getValorContexto("LST_ANIV."+x+".NIVEL").trim();
						nv_num = aux.substring(1,2);
						nv_cod = aux.substring(2,6);
						nv_des = aux.substring(6);
					%>
					<tr height=20 align="middle" class="<%=(x%2 == 0)?"renglonImpar":"renglonPar"%>" > 
						<td align="center" class="cellTabla tablasDinamicas"><%=nv_num%></td>
						<td align="center" class="cellTabla tablasDinamicas"><%=nv_cod%></td>
						<td align="center" class="cellTabla tablasDinamicasFin"><%=nv_des%></td>
					</tr>
					<%
					x++;
					}//fin while
					%>
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
