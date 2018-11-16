<%-- 
  - Autor(s):Cruz Rodríguez Renato
  - Fecha:24/11/2011
  - Descripción:JSP Modificación de estructura
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Consulta de Referencia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<SCRIPT LANGUAGE="javascript" src="/atcl_es_web_pub/js/utils.js"></SCRIPT>
<SCRIPT LANGUAGE="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></SCRIPT>
<SCRIPT LANGUAGE="javascript" src="/aumx_es_web_pub/js/menu.js"></SCRIPT>
<SCRIPT LANGUAGE="javascript" src="/aumx_es_web_pub/js/utilEX.js"></SCRIPT>
<SCRIPT LANGUAGE="javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE21101.js"></SCRIPT>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
	<body onload="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
	<customform> 
	<form name="AUMXVE21101" action="<%=utils.getDestinoFormulario()%>" method="post" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
		<input type="hidden" name="evento">
		<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
		<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
		<customhidden><input name="N_HDN_S_NUMREF" type="hidden" value='<%= utils.getValorContexto("S_NUMREF") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_NIVEL" type="hidden" value='<%= utils.getValorContexto("S_NIVEL") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_ENT_ID" type="hidden" value='<%= utils.getValorContexto("S_ENT_ID") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_ENT_DESC" type="hidden" value='<%= utils.getValorContexto("S_ENT_DESC") %>' /></customhidden>
		<customhidden><input name="N_HDN_PLAZA_CR" type="hidden" value='<%= utils.getValorContexto("PLAZA_CR") %>' /></customhidden>
		<customhidden><input name="N_HDN_DESC_ENTIDAD" type="hidden" value='<%= utils.getValorContexto("DESC_ENTIDAD") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_CALLE" type="hidden" value='<%= utils.getValorContexto("D_CALLE") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_NUM_EXT" type="hidden" value='<%= utils.getValorContexto("D_NUM_EXT") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_NUM_INT" type="hidden" value='<%= utils.getValorContexto("D_NUM_INT") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_COL" type="hidden" value='<%= utils.getValorContexto("D_COL") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_DEL_MUN" type="hidden" value='<%= utils.getValorContexto("D_DEL_MUN") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_CODPOS" type="hidden" value='<%= utils.getValorContexto("D_CODPOS") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_CIUDAD" type="hidden" value='<%= utils.getValorContexto("D_CIUDAD") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_ENTIDAD" type="hidden" value='<%= utils.getValorContexto("D_ENTIDAD") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_TEL1" type="hidden" value='<%= utils.getValorContexto("D_TEL1") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_EXT1" type="hidden" value='<%= utils.getValorContexto("D_EXT1") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_TEL2" type="hidden" value='<%= utils.getValorContexto("D_TEL2") %>' /></customhidden>
		<customhidden><input name="N_HDN_D_EXT2" type="hidden" value='<%= utils.getValorContexto("D_EXT2") %>' /></customhidden>
		<customhidden><input name="N_HDN_CVE_OPER" type="hidden" value='<%= utils.getValorContexto("CVE_OPER") %>' /></customhidden>

		<customhidden><input name="N_HDN_S_NOM_EMPRESA" type="hidden"
	value='<%= utils.getValorContexto("S_NOM_EMPRESA") %>' /></customhidden>



		<div class="divPrincipal">
		<div id="principal" style="overflow:scroll; height:550px; width:100%">
		<table width=750>
			<tr>
				<td height="34" align=center>&nbsp;
				</td>
			</tr>
			<tr>
				<td align=center>
					<table align="center" class="tituloTabla" width=100%>
						<tr>
							<td align="center">MODIFICACION DE ESTRUCTURA</td>
						</tr>
					</table>
				</td>
			</tr>	
			<tr>
				<td   align=center>
					<table align="center" class="subtituloTabla" width=100%>
						<tr>
							<td align="left" >Datos de la empresa</td>
						</tr>
					</table>
					<table align="center" class="panel" width=100% style="table-layout: fixed;">
						<tr>
							<td width=100%>
								<table width=100% align="center">
									<tr>
										<td align="left" width=20% class="cellTablaN" >Empresa</td>
										<td align="left" colspan="3" ><input class="disabled" type="text" size="10" value="<%= utils.getValorContexto("S_NUMREF").trim() %>" readonly="readonly" /></td>
									</tr>
									<tr>
										<td width=25% align="left" class="cellTablaN" >Nombre empresa</td>
										<td width=75% align="left"><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("S_NOM_EMPRESA").trim()%>" readonly="readonly"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table align="center" class="subtituloTabla"  width=100%>
					<tr>
							<td align="left" >Estructura</td>
					</tr>
					</table>
					
					<table idth=100%  align="center" id="t_nivel" style="table-layout:fixed;" class="panel">
						<tr>
							<td align="left" width=20% class="cellTablaN" >Nivel</td>
							<%
									String s_niv = utils.getValorContexto("S_NIVEL").trim();
									String niv ="";
									String des_niv ="";
										if(s_niv.length() > 1){
											niv = s_niv.substring(0,1);
										}
										
										if(s_niv.length() > 8){
											des_niv = s_niv.substring(7);
										}
										
									%>
							<td align="left" width=30% ><input class="disabled" type="text" size="2" value="<%= niv%>" readonly="readonly" /></td>
							<td align="left" width=20% class="cellTablaN" >Descripción del nivel</td>
							<td align="left" width=30% ><input class="disabled" type="text"  size="35" value="<%=des_niv%>" readonly="readonly" /></td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Entidad</td>
							<td align="left" colspan="3" ><input class="disabled" type="text" size="5" value="<%= utils.getValorContexto("S_ENT_ID").trim() %>"  readonly="readonly" /></td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Plaza/CR</td>
							<td align="left" colspan="3" class="cellTablaN"> 
								<inputfieldtext>
									<span id="CR_ER" class='<%=utils.escribeEstiloLabel("PLAZA_CR")%>'></span>
									<input type="text" name="CR" id="CR" value='<%=utils.getValorContexto("PLAZA_CR")%>' requerido="false" size="20" maxlength="20" class="requerido" sentido="N" /><%=getIndicadorRequeridoDerecha(false)%>
								</inputfieldtext>&nbsp;*</td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Descripci&oacute;n</td>
							<td align="left" colspan="3" class="cellTablaN"><input class="requerido" type="text" size="35" id="TXT_DESCRIPCION" value="<%= utils.getValorContexto("DESC_ENTIDAD").trim() %>" maxlength="30" />&nbsp;*</td>
						</tr>
						<tr>
							<td colspan="4" class="cellTablaN" align="center" >DIRECCION</td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Calle</td>
							<td align="left" width=30% ><input class="enabled" maxlength="30" type="text" size="35" id="TXT_CALLE" value="<%= utils.getValorContexto("D_CALLE").trim() %>" /></td>
							<td align="left" width=20%  class="cellTablaN" >Número exterior</td>
							<td align="left" width=30% ><input class="enabled" type="text" maxlength="5" size="5" id="TXT_NUM_EXT" value="<%= utils.getValorContexto("D_NUM_EXT").trim() %>" /></td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Colonia</td>
							<td align="left" width=30% ><input class="enabled" maxlength="30" type="text" size="30" id="TXT_COLONIA" value="<%= utils.getValorContexto("D_COL").trim() %>" /></td>
							<td align="left" width=20%  class="cellTablaN" >Número interior</td>
							<td align="left" width=30% ><input class="enabled" type="text" maxlength="5" size="5" id="TXT_NUM_INT" value="<%= utils.getValorContexto("D_NUM_INT").trim() %>" /></td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Delegación o Municipio</td>
							<td align="left" width=30% ><input class="enabled" maxlength="20" type="text" size="20" id="TXT_DEL_MUN" value="<%= utils.getValorContexto("D_DEL_MUN").trim() %>" /></td>
							<td align="left" width=20%  class="cellTablaN" >Código postal</td>
							<td align="left" width=30% ><input class="enabled" type="text" maxlength="5" size="5" id="TXT_CP" value="<%= utils.getValorContexto("D_CODPOS").trim() %>" /></td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Ciudad</td>
							<td align="left" width=30% ><input class="enabled" maxlength="12" type="text" size="12" id="TXT_CIUDAD" value="<%= utils.getValorContexto("D_CIUDAD").trim() %>" /></td>
							<td align="left" width=20%  class="cellTablaN" >Entidad federativa</td>
							<td align="left" width=30% ><input class="enabled" type="text" maxlength="10" size="10" id="TXT_ENTIDAD" value="<%= utils.getValorContexto("D_ENTIDAD").trim() %>" /></td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Teléfono 1</td>
							<td align="left" width=30% ><input class="enabled" maxlength="10" type="text" size="10" id="TXT_TEL1" value="<%= utils.getValorContexto("D_TEL1").trim() %>" /></td>
							<td align="left" width=20%  class="cellTablaN" >Ext. 1</td>
							<td align="left" width=30% ><input class="enabled" type="text" maxlength="4" size="4" id="TXT_EXT1" value="<%= utils.getValorContexto("D_EXT1").trim() %>" /></td>
						</tr>
						<tr>
							<td align="left" width=20%  class="cellTablaN" >Teléfono 2</td>
							<td align="left" width=30% ><input class="enabled" maxlength="10" type="text" size="10" id="TXT_TEL2" value="<%= utils.getValorContexto("D_TEL2").trim() %>" /></td>
							<td align="left" width=20%  class="cellTablaN" >Ext. 2</td>
							<td align="left" width=30% ><input class="enabled" type="text" maxlength="4" size="4" id="TXT_EXT2" value="<%= utils.getValorContexto("D_EXT2").trim() %>" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td >
					<!--table align="center" class="subtituloTabla" width="100%">
						<tr>
							<td align="left">Captura la clave de operación</td>
						</tr>
					</table-->
					<!--table align="center" class="panel" width="100%" style="table-layout:fixed;">
						<tr>
							<td width="100%">
								<table width="100%" class="" align="center" >
									<tr>
										<td align="left" width="25%"  class="cellTablaN" >Clave de operación</td>
										<td align="left" width="75%" ><input class="enabled" type="password" size="10" id="TXT_CLAVE" maxlength="8" value="" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table-->				
					<BR>
					<table border=0  align="center" width=100%>
						<tr align="center">
							<td>
								<input type="button" class="button_little" value="Regresar" onclick="jsRegresar(0X2501017)" />&nbsp;
								<input type="button" class="button_little" value="Modificar" onclick="jsModificacion()" />&nbsp;
							</td>
						</tr>
					</table>		
				</td>
			</tr>
		</table>
		</div>
		</div>
	</form>
	</customform>
	</body>
</html>