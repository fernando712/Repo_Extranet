<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Mantenimiento de Parametros LDAP</title>		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
		<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
		<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
		<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
		<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
		<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
		<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10104.js"></script>
		<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
		<link type="text/css" rel="stylesheet" href="../aumx_es_web_pub/estilos/dhtmlgoodies_calendar.css?random=20051112" media="screen"></LINK>
		<SCRIPT type="text/javascript" src="../aumx_es_web_pub/js/dhtmlgoodies_calendar.js?random=20060118"></script>
		
		<style>
			.renglonImpar1{
				background-color:#FFFFFF;
			}
		</style>
	</head>
	<body onload="controlSesion();inicializa();" bgcolor="#FFFFFF">
		<customform> 
			<form name="AUMXVE10104" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento"/>
				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>"/>
				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>"/>
			  
				<customhidden><input name="HDbandera"     id="HDbandera" 	 type="hidden" value='<%= utils.getValorContexto("BANDERA") %>' /></customhidden>
				<customhidden><input name="HDcodigo"      id="HDcodigo" 	 type="hidden" value='<%= utils.getValorContexto("CODIGO") %>' /></customhidden>
				<customhidden><input name="HDdescripcion" id="HDdescripcion" type="hidden" value='<%= utils.getValorContexto("DESCRIPCION") %>' /></customhidden>
				<customhidden><input name="HDflag"        id="HDflag"        type="hidden" value='<%= utils.getValorContexto("FLAG") %>' /></customhidden>
				<customhidden><input name="HDtabla"       id="HDtabla"       type="hidden" value='<%= utils.getValorContexto("LST_TABLA") %>' /></customhidden>
				<customhidden><input name="HDvbdx"        id="HDvbdx"        type="hidden" value='<%= utils.getValorContexto("VBDX_ER") %>' /></customhidden>
				<customhidden><input name="HDvbdy"        id="HDvbdy"        type="hidden" value='<%= utils.getValorContexto("VBDY_ER") %>' /></customhidden>
				<customhidden><input name="HDidparam"     id="HDidparam"     type="hidden" value='<%= utils.getValorContexto("IDPARAM_VBDY") %>' /></customhidden>
				<customhidden><input name="HDparam"       id="HDparam"       type="hidden" value='<%= utils.getValorContexto("IDPARAM") %>' /></customhidden>
				<customhidden><input name="CI_NIV_USU" type="hidden" value='<%= utils.getValorContexto("CI_NIV_USU") %>' /></customhidden>

				<div class="divPrincipal">
				  <div id="principal" align="center" style="overflow:scroll; height:550px;width:100%">
						<table width="750">
							<tr>
								<td height="34" align="center">&nbsp;</td>
							</tr>
							<tr>
								<td align="center">
									<table align="center" class="tituloTabla" width="100%">
										<tr>
											<td align="center">MANTENIMIENTO DE PARAMETROS LDAP´s</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align="center">
									<div style="overflow-y:hidden;overflow-x:hidden;width:775px">
										<table align="center" width="100%" cellspacing="0">
											<tr height="24">
												<td class="subtituloTabla" align="left" colspan="7" >Seleccione parametro</td>
											</tr>
											<tr>
												<td width="4%"  class="subtituloTabla" >&nbsp;</td>
												<td width="15%" class="subtituloTabla" align="center" >ID parametro</td>
												<td width="41%" class="subtituloTabla" align="center">Descripci&oacute;n</td>
												<td width="18%" class="subtituloTabla" align="center">ID-URL WS</td>
												<td width="18%" class="subtituloTabla" align="center">ID-RAMA</td>
												<td width="8%"  class="subtituloTabla" >&nbsp;</td>
											</tr>
										</table>
									</div>
										<!-- Inicia Tabla Dinámica -->
									<div style="overflow-y:scroll;overflow-x:hidden;height:190px;width:776px;">
										<table  id="TBdetalle" width="100%" cellspacing="0">
												<%	String clase = "", IDPARAM = "", DESCRIP = "", IDURL = "",IDRAMA = "";
														String listaProductos [][] = utils.obtenerArrayString(utils.getDatoContexto("LST_TABLA"));	
														int datosLista = listaProductos.length;
													if (!utils.getValorContexto("LST_TABLA.0.IDPARAM").trim().equals("") )  		
													{	for (int i=0;i<datosLista;i++)
														{	 	if (i%2 !=0){
																	clase="renglonPar";
																}else{
																	clase="renglonImpar1";
																}
															IDPARAM =  (utils.getValorContexto("LST_TABLA."+i+".IDPARAM")!=null)?utils.getValorContexto("LST_TABLA."+i+".IDPARAM").trim():""; ;
															DESCRIP = (utils.getValorContexto("LST_TABLA."+i+".DESCRIP")!=null)?utils.getValorContexto("LST_TABLA."+i+".DESCRIP").trim():""; ;
															IDURL = (utils.getValorContexto("LST_TABLA."+i+".IDURL")!=null)?utils.getValorContexto("LST_TABLA."+i+".IDURL").trim():""; ;
															IDRAMA = (utils.getValorContexto("LST_TABLA."+i+".IDRAMA")!=null)?utils.getValorContexto("LST_TABLA."+i+".IDRAMA").trim():""; ;
																
														%>												
															<tr height="20px" align="middle" class="<%=clase%>">
																<td class="tablasDinamicas" width="4%"  align="center"><input type="radio" name="radios" id="radio<%=i%>" onclick="selecRadio('<%=IDPARAM%>','<%=i%>');"></td>
																<td class="cellTabla tablasDinamicas" width="15%" align="center"><%=IDPARAM%></td>
																<td class="cellTabla tablasDinamicas" width="41%" align="center"><%=DESCRIP%></td>
																<td class="cellTabla tablasDinamicas" width="18%" align="center"><%=IDURL%></td>													
																<td class="cellTabla tablasDinamicas" width="18%" align="center"><%=IDRAMA%></td>													
															</tr>	
													  <%}	
													}%>
										</table>	
									</div>
										<!-- Termina Tabla Dinámica -->
								</td>
							</tr>
							<tr>
								<td align="center">
									<div id="altaIP" style="display:none">
										<table class="subtituloTabla" align="center" width="100%">
											<tr  align="left">
												<td width="10%">Descripci&oacute;n:</td>
												<td  width="40%">
													<inputfieldtext>
														<span id="TXTdescrip_ER" class='<%=utils.escribeEstiloLabel("DESCRIP")%>'></span>
														<input  type="text"
																name="TXTdescrip"
																id="TXTdescrip"
																value='<%=utils.getValorContexto("DESCRIP")%>' 
																requerido="false"
																size="30"
																maxlength="30" 
																class="dato" 
																onkeypress="return valkey(event, 'letraynumero')"
																sentido="N" /><%=getIndicadorRequeridoDerecha(false)%>
													</inputfieldtext>
												</td>
												<td  width="13%">ID URL WS: </td>
												<td  width="37%">
													<inputfieldtext>
														<span id="TXTurl_ER" class='<%=utils.escribeEstiloLabel("IDURL")%>'></span>
														<input  type="text" 
																name="TXTurl"
																id="TXTurl"
																value='<%=utils.getValorContexto("IDURL")%>' 
																requerido="false"
																size="6"
																maxlength="4" 
																class="dato" 
																onkeypress="return valkey(event, 'letraynumero')"
																sentido="N" /><%=getIndicadorRequeridoDerecha(false)%>
													</inputfieldtext>
												</td>
											</tr>
											<tr align="left">
												<td width="10%">ID RAMA:</td>
												<td  width="40%">
													<inputfieldtext>
														<span id="TXTrama_ER" class='<%=utils.escribeEstiloLabel("IDRAMA")%>'></span>
														<input  type="text" 
																name="TXTrama"
																id="TXTrama"
																value='<%=utils.getValorContexto("IDRAMA")%>'
																requerido="false"
																size="6"
																maxlength="4"
																class="dato" 
																onkeypress="return valkey(event, 'letraynumero')"
																sentido="N" /><%=getIndicadorRequeridoDerecha(false)%>
													</inputfieldtext> 
												</td>
												<td colspan="2">
													<input type="button" style="cursor:pointer" class="button_little" value="Aceptar" onClick="validacampos();" />&nbsp;
												</td>			
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td> 
									<table border="0"  align="center" width="100%">
										<tr align="center">
											<td align="center">
												<input type="button" class="button_little" style="cursor:pointer"  value="Alta parametros" onClick="muestraAltaIP();" />&nbsp;
												<input type="button" class="button_Big"  style="cursor:pointer" value="Baja de parametros" onClick="selecRadio2();" />&nbsp;
											</td>
										</tr>
										<tr align="center">
											<td align="center">
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
