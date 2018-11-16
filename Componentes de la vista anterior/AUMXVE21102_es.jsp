<%-- 
  - Autor(s):Cruz Rodríguez Renato
  - Fecha:11/01/2011
  - Descripción:JSP Modificación de estructura
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">	
<title>Modificación de estructura Realizada</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script LANGUAGE="javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
	<body onload="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
		<customform> 
			<form name="AUMXVE21102" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
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
				<customhidden><input name="N_HDN_NUM_EXT" type="hidden" value='<%= utils.getValorContexto("D_NUM_EXT") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_NUM_INT" type="hidden" value='<%= utils.getValorContexto("D_NUM_INT") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_COL" type="hidden" value='<%= utils.getValorContexto("D_COL") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_DEL_MUN" type="hidden" value='<%= utils.getValorContexto("D_DEL_MUN") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_CODPOS" type="hidden" value='<%= utils.getValorContexto("D_CODPOS") %>' /></customhidden>
				<customhidden><input name="N_HDN_CIUDAD" type="hidden" value='<%= utils.getValorContexto("D_CIUDAD") %>' /></customhidden>
				<customhidden><input name="N_HDN_ENTIDAD" type="hidden" value='<%= utils.getValorContexto("D_ENTIDAD") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_TEL1" type="hidden" value='<%= utils.getValorContexto("D_TEL1") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_EXT1" type="hidden" value='<%= utils.getValorContexto("D_EXT1") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_TEL2" type="hidden" value='<%= utils.getValorContexto("D_TEL2") %>' /></customhidden>
				<customhidden><input name="N_HDN_D_EXT2" type="hidden" value='<%= utils.getValorContexto("D_EXT2") %>' /></customhidden>
				
				<div class="divPrincipal">
					<table width=750>
						<tr>
							<td height="34" align=center>&nbsp;
							</td>
						</tr>
						<tr>
							<td align="center">
								<table align="center" class="tituloTabla" width=100%>
									<tr>
										<td align="center"  >MODIFICACION DE ESTRUCTURA REALIZADA</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td   align=center>
								<table align="center" class="subtituloTabla"  width=100%>
									<tr>
										<td align="left" >Datos de la estructura</td>
									</tr>
								</table>
								<table align="center" class="panel" width=100% style="table-layout: fixed;">
									<tr>
										<td width=100%>
											<table width=100%  align="center">
											    <tr>
													<td align="left" width=20%  class="cellTablaN" >Empresa</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="35" value="<%= utils.getValorContexto("S_NUMREF") %>" readonly="readonly" /></td>
												</tr>
												<tr>
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
													<td align="left" width=20%  class="cellTablaN" >Nivel</td>
													<td align="left" width=30% ><input class="disabled" type="text" size="2" value="<%=niv%>" readonly="readonly" /></td>
													<td align="left" width=20%  class="cellTablaN" >Descripción del nivel</td>
													<td align="left" width=30% ><input class="disabled" type="text"  size="35" value="<%=des_niv%>" readonly="readonly" /></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Entidad</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="5" value="<%= utils.getValorContexto("S_ENT_ID") %>"  readonly="readonly" /></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Plaza/CR</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="20" value="<%= utils.getValorContexto("PLAZA_CR") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Descripci&oacute;n</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="35" value="<%= utils.getValorContexto("DESC_ENTIDAD") %>" maxlength="30" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" colspan="4" class="cellTablaN" align="center" >DIRECCION</td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Calle</td>
													<td align="left" width=30% ><input class="disabled" maxlength="30" type="text" size="35" value="<%= utils.getValorContexto("D_CALLE") %>" readonly="readonly"/></td>
													<td align="left" width=20%  class="cellTablaN" >Número exterior</td>
													<td align="left" width=30% ><input class="disabled" type="text" maxlength="5" size="5" value="<%= utils.getValorContexto("D_NUM_EXT") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Colonia</td>
													<td align="left" width=30% ><input class="disabled" maxlength="30" type="text" size="30" value="<%= utils.getValorContexto("D_COL") %>" readonly="readonly"/></td>
													<td align="left" width=20%  class="cellTablaN" >Número interior</td>
													<td align="left" width=30% ><input class="disabled" type="text" maxlength="5" size="5" value="<%= utils.getValorContexto("D_NUM_INT") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Delegación o Municipio</td>
													<td align="left" width=30% ><input class="disabled" maxlength="20" type="text" size="20" value="<%= utils.getValorContexto("D_DEL_MUN") %>" readonly="readonly"/></td>
													<td align="left" width=20%  class="cellTablaN" >Código postal</td>
													<td align="left" width=30% ><input class="disabled" type="text" maxlength="5" size="5" value="<%= utils.getValorContexto("D_CODPOS") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Ciudad</td>
													<td align="left" width=30% ><input class="disabled" maxlength="12" type="text" size="12" value="<%= utils.getValorContexto("D_CIUDAD") %>" readonly="readonly"/></td>
													<td align="left" width=20%  class="cellTablaN" >Entidad federativa</td>
													<td align="left" width=30% ><input class="disabled" type="text" maxlength="10" size="10" value="<%= utils.getValorContexto("D_ENTIDAD") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Teléfono 1</td>
													<td align="left" width=30% ><input class="disabled" maxlength="10" type="text" size="10" value="<%= utils.getValorContexto("D_TEL1") %>" readonly="readonly"/></td>
													<td align="left" width=20%  class="cellTablaN" >Ext. 1</td>
													<td align="left" width=30% ><input class="disabled" type="text" maxlength="4" size="4" value="<%= utils.getValorContexto("D_EXT1") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width=20%  class="cellTablaN" >Teléfono 2</td>
													<td align="left" width=30% ><input class="disabled" maxlength="10" type="text" size="10" value="<%= utils.getValorContexto("D_TEL2") %>" readonly="readonly"/></td>
													<td align="left" width=20%  class="cellTablaN" >Ext. 2</td>
													<td align="left" width=30% ><input class="disabled" type="text" maxlength="4" size="4" value="<%= utils.getValorContexto("D_EXT2") %>" readonly="readonly"/></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align=center>
								<table border=0  align="center" width=100%>
									<tr align="center">
										<td>
											<input type="button" class="button_little" value="Regresar" onclick="jsRegresar(0X2501017)" />&nbsp;
											<input type="button" class="button_little" value="Imprimir" onclick="jsImprimirComprobante()" />&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>	
					</table>	
					<div id="impresion" style="display">
					<table width="750px">
						<tr>
							<td height="34">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="tituloTabla">
								<table>
									<tr>
										<td class="tituloTabla">MODIFICACION DE ESTRUCTURA REALIZADA</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="subtituloTabla">
								<table>
									<tr>
										<td class="subtituloTabla">Datos de la estructura</td>
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
													<td align="left" width="20%"  class="cellTablaN" >Empresa</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="35" value="<%= utils.getValorContexto("S_NUMREF") %>" readonly="readonly" /></td>
												</tr>
												<tr>
													<td align="left" width="20%"  class="cellTablaN" >Nivel</td>
													<td align="left" width="30%"><input class="disabled" type="text" size="2" value="<%=niv%>" readonly="readonly" /></td>
													<td align="left" width="20%"  class="cellTablaN" >Descripción del nivel</td>
													<td align="left" width="30%"><input class="disabled" type="text"  size="35" value="<%=des_niv%>" readonly="readonly" /></td>
												</tr>
												<tr>
													<td align="left" width="20%" class="cellTablaN" >Entidad</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="5" value="<%= utils.getValorContexto("S_ENT_ID") %>"  readonly="readonly" /></td>
												</tr>
												<tr>
													<td align="left" width="20%"  class="cellTablaN" >Plaza/CR</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="20" value="<%= utils.getValorContexto("PLAZA_CR") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width="20%"  class="cellTablaN" >Descripci&oacute;n</td>
													<td align="left" colspan="3" ><input class="disabled" type="text" size="35" value="<%= utils.getValorContexto("DESC_ENTIDAD") %>" maxlength="30" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" colspan="4" align="center" height=20  ></td>
												</tr>
												<tr>
													<td align="left" colspan="4" class="cellTablaN" align="center" >DIRECCION</td>
												</tr>
												<tr>
													<td align="left" width="20%" class="cellTablaN" >Calle</td>
													<td align="left" width="30%"><input class="disabled" maxlength="30" type="text" size="35" value="<%= utils.getValorContexto("D_CALLE") %>" readonly="readonly"/></td>
													<td align="left" width="20%" class="cellTablaN" >Número exterior</td>
													<td align="left" width="30%"><input class="disabled" type="text" maxlength="5" size="5" value="<%= utils.getValorContexto("D_NUM_EXT") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width="20%" class="cellTablaN" >Colonia</td>
													<td align="left" width="30%"><input class="disabled" maxlength="30" type="text" size="30" value="<%= utils.getValorContexto("D_COL") %>" readonly="readonly"/></td>
													<td align="left" width="20%"  class="cellTablaN" >Número interior</td>
													<td align="left" width="30%"><input class="disabled" type="text" maxlength="5" size="5" value="<%= utils.getValorContexto("D_NUM_INT") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width="20%" class="cellTablaN" >Delegación o Municipio</td>
													<td align="left" width="30%"><input class="disabled" maxlength="20" type="text" size="20" value="<%= utils.getValorContexto("D_DEL_MUN") %>" readonly="readonly"/></td>
													<td align="left" width="20%" class="cellTablaN" >Código postal</td>
													<td align="left" width="30%"><input class="disabled" type="text" maxlength="5" size="5" value="<%= utils.getValorContexto("D_CODPOS") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width="20%" class="cellTablaN" >Ciudad</td>
													<td align="left" width="30%"><input class="disabled" maxlength="12" type="text" size="12" value="<%= utils.getValorContexto("D_CIUDAD") %>" readonly="readonly"/></td>
													<td align="left" width="20%" class="cellTablaN" >Entidad federativa</td>
													<td align="left" width="30%"><input class="disabled" type="text" maxlength="10" size="10" value="<%= utils.getValorContexto("D_ENTIDAD") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width="20%" class="cellTablaN" >Teléfono 1</td>
													<td align="left" width="30%"><input class="disabled" maxlength="10" type="text" size="10" value="<%= utils.getValorContexto("D_TEL1") %>" readonly="readonly"/></td>
													<td align="left" width="20%" class="cellTablaN" >Ext. 1</td>
													<td align="left" width="30%"><input class="disabled" type="text" maxlength="4" size="4" value="<%= utils.getValorContexto("D_EXT1") %>" readonly="readonly"/></td>
												</tr>
												<tr>
													<td align="left" width="20%"  class="cellTablaN" >Teléfono 2</td>
													<td align="left" width="30%"><input class="disabled" maxlength="10" type="text" size="10" value="<%= utils.getValorContexto("D_TEL2") %>" readonly="readonly"/></td>
													<td align="left" width="20%" class="cellTablaN" >Ext. 2</td>
													<td align="left" width="30%"><input class="disabled" type="text" maxlength="4" size="4" value="<%= utils.getValorContexto("D_EXT2") %>" readonly="readonly"/></td>
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
