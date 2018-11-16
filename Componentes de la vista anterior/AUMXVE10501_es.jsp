<%-- 
  - Autor(s): Felipe Ramírez López
  - Fecha:02/03/2011
  - Descripción:JSP Comprobante de Asignación de Dispositivo de Empresa
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<title>Modificación de una Referencia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE10501" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento"></input>
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>"></input>
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>"></input>

<div class="divPrincipal">
	<div id="principal" style="overflow:scroll; height:550px; width:100%">
		<table width=750>
			<tr>
				<td align=center>
					<table align="center" class="tituloTabla" width=100%>
						<tr>
							<td align="center"  >MODIFICACION DE REFERENCIA REALIZADA</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td  align=center>
					<table align="center" class="subtituloTabla"  width=100%>
						<tr>
							<td align="left" >Datos de la empresa</td>
						</tr>
					</table>
					<table align="center" class="panel" width=100% style="table-layout: fixed;">
						<tr>
							<td width=100%>
								<table width=100%  align="center">
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Referencia</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" align="left">Tipo de estado</td>
										<td width=25%  align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")=="A1"?"ACTIVO":"NO ACTIVO"%>" readonly="readonly"/></td>
									</tr>
									<%
										String num_cliente =utils.getValorContexto("NUM_CLIENTE").trim();
										if(!num_cliente.equals("")){
									%>
									<tr>
										<td width=25%  class="cellTablaN" align="left">Número de cliente</td>
										<td  colspan="3" align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("NUM_CLIENTE")%>" readonly="readonly"/></td>
									</tr>
									<%
										}
									%>
									<tr>
										<td width=25%  class="cellTablaN" align="left">Nombre empresa</td>
										<td  colspan="3" align="left" ><input class="disabled" type="text" size="60" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Nivel</td>
										<td  align="left" ><input class="disabled" type="text" size="1" value="<%=utils.getValorContexto("NIVELES")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" >CR</td>
										<td   ><input class="disabled" type="text" size="6" value="<%=utils.getValorContexto("CR")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Delegación de administración</td>
										<td width=25% class="cellTablaN" align="left" >
											<input id="tipadmi" class="etiqueta2" type="checkbox" size="2" value="" disabled />ADMINISTRADOR
										</td>
										<script language="javascript">
										gebi("tipadmi").checked=<%=utils.getValorContexto("TIPADMI")!="S"?"true":"false"%>;
										</script>
										<td width=25%  class="cellTablaN" align="left" >Identificador de administrador</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ADMINEM")%>" readonly="readonly"/></td>
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
							<td align="left" >Datos del contacto</td>
						</tr>
					</table>
					<table align="center" class="panel" width=100% style="table-layout: fixed;">
						<tr>
							<td width=100%>
								<table width=100%  align="center">
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Nombre del contacto</td>
										<td  colspan="3" align="left"  ><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td align="center" colspan="4" class="cellTablaN" >DIRECCIÓN</td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Calle</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("CALLE")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" align="left" >Número exterior</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("NUMEXT")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Colonia</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("COLONIA")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" align="left" >Número interior</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("NUMINT")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN"  align="left">Delegación o Municipio</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("DELMUN")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" align="left">Código postal</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("CODPOS")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN"align="left" >Ciudad</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="15" value="<%=utils.getValorContexto("CIUDAD")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" align="left">Entidad federativa</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="15" value="<%=utils.getValorContexto("ENTIDAD")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Calle referencia</td>
										<td colspan="3" align="left" ><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("CALLEREF")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left">Teléfono 1</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("TELEF01")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" align="left" >Ext 1</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("EXTTEL1")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left" >Teléfono 2</td>
										<td width=25% align="left" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("TELEF02")%>" readonly="readonly"/></td>
										<td width=25%  class="cellTablaN" align="left">Ext 2</td>
										<td width=25%  align="left"><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("EXTTEL2")%>" readonly="readonly"/></td>
									</tr>
									<tr>
										<td width=25%  class="cellTablaN" align="left" >E-mail</td>
										<td colspan="3" align="left" ><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("EMAIL")%>" readonly="readonly"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>	
			<tr>
				<td>
					<table border=0 align="center" width=100%>
						<tr align="center">
							<td>
							<input type="button" class="button_little" value="Regresar" onclick="jsRegresar(0X2501001)" />&nbsp;
							<input type="button" class="button_little" value="Imprimir" onClick="jsImprimirComprobante()" />&nbsp;
							
							</td>
						</tr>
					</table>			
				</td>
			</tr>	
		</table>
		<div id="impresion" style="display">
			<table width="750px">
				<tr>
					<td height="34px"></td>
				</tr>
				<tr>
					<td class="tituloTabla">
						<table>
							<tr>
								<td class="tituloTabla">MODIFICACION DE REFERENCIA REALIZADA</td>
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
						<table class="panel" width=100% style="table-layout: fixed;">
							<tr>
								<td width=100%>
									<table width=100%  >
										<tr>
											<td width=25%  class="cellTablaN" >Referencia</td>
											<td width=25%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >Tipo de estado</td>
											<td width=25%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")=="A1"?"ACTIVO":"NO ACTIVO"%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Nombre empresa</td>
											<td  colspan="3" ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Nivel</td>
											<td   ><input class="disabled" type="text" size="1" value="<%=utils.getValorContexto("NIVELES")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >CR</td>
											<td   ><input class="disabled" type="text" size="6" value="<%=utils.getValorContexto("CR")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Delegación de administración</td>
											<td width=25% class="cellTablaN">
												<input id="tipadmi" class="etiqueta2" type="checkbox" size="2" value=""  disabled />ADMINISTRADOR
											</td>
											<script language="javascript">
											gebi("tipadmi").checked=<%=utils.getValorContexto("TIPADMI")!="S"?"true":"false"%>;
											</script>
											<td width=25%  class="cellTablaN" >Identificador de administrador</td>
											<td width=25%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ADMINEM")%>" readonly="readonly"/></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>	
				<tr>
					<td>
						<table  width=100% class="subtituloTabla">
							<tr>
								<td class="subtituloTabla" >Datos del contacto</td>
							</tr>
						</table>
						<table class="panel" width=100% style="table-layout: fixed;">
							<tr>
								<td width=100%>
									<table width=100%  align="center">
										<tr>
											<td width=25%  class="cellTablaN" >Nombre del contacto</td>
											<td  colspan="3" ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td align="center" colspan="4" class="cellTablaN" >DIRECCIÓN</td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Calle</td>
											<td width=25%  ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("CALLE")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >Número exterior</td>
											<td width=25%  ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("NUMEXT")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Colonia</td>
											<td width=25%  ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("COLONIA")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >Número interior</td>
											<td width=25%  ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("NUMINT")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Delegación o Municipio</td>
											<td width=25%  ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("DELMUN")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >Código postal</td>
											<td width=25%  ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("CODPOS")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Ciudad</td>
											<td width=25%  ><input class="disabled" type="text" size="15" value="<%=utils.getValorContexto("CIUDAD")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >Entidad federativa</td>
											<td width=25%  ><input class="disabled" type="text" size="15" value="<%=utils.getValorContexto("ENTIDAD")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Calle referencia</td>
											<td colspan="3"  ><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("CALLEREF")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Teléfono 1</td>
											<td width=25%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("TELEF01")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >Ext 1</td>
											<td width=25%  ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("EXTTEL1")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >Teléfono 2</td>
											<td width=25%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("TELEF02")%>" readonly="readonly"/></td>
											<td width=25%  class="cellTablaN" >Ext 2</td>
											<td width=25%  ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("EXTTEL2")%>" readonly="readonly"/></td>
										</tr>
										<tr>
											<td width=25%  class="cellTablaN" >E-mail</td>
											<td colspan="3"  ><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("EMAIL")%>" readonly="readonly"/></td>
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
</div>
</form>
</customform>
</body>
</html>
