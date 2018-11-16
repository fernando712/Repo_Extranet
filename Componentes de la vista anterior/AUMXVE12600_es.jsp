<%-- 
  - Autor(s): Felipe Ramírez López
  - Fecha:02/03/2011
  - Descripción:JSP Asignación de Dispositivo de Empresa
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Asignacion de dispositivos a una referencia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<SCRIPT LANGUAGE="javascript" src="/atcl_es_web_pub/js/utils.js"></SCRIPT>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script LANGUAGE="javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE12600.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
	<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
		<customform> 
			<form name="AUMXVE12600" action="<%=utils.getDestinoFormulario()%>" method="post" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
				<input type="hidden" name="evento">
				<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
				<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
				<customhidden><input name="SEL_DISP" type="hidden" value='<%= utils.getValorContexto("SEL_DISP") %>' /></customhidden>
				<div class="divPrincipal">
				<table width="750px">
					<tr>
						<td height="34">&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<table class="tituloTabla" width="100%">
								<tr>
									<td>ASIGNACION DE TOKENS</td>
								</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td>
							<table class="subtituloTabla"  width="100%">
								<tr>
									<td>Datos de la empresa</td>
								</tr>
							</table>
							<table class="panel" width="100%" style="table-layout: fixed;">
								<tr>
									<td width="100%">
										<table width="100%">
											<tr>
												<td width="25%" align="left" class="cellTablaN" >Referencia</td>
												<td colspan="3"  align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%" align="left" class="cellTablaN">Nombre empresa</td>
												<td colspan="3" align="left"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%"  align="left" class="cellTablaN" >Nombre del contacto</td>
												<td align="left"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
											</tr>
											<tr>
												<td width="25%" align="left" class="cellTablaN" >Modelo de dispositivos</td>
												<td align="left">
														<select name="LST_DISP" id="LST_DISP" estatico="false" class="combo_normal" onChange="SelDispositivo(this)">
															<option selected="selected" value="-1">-- Seleccione tipo --</option>
															<%
																int tam_L = 0;
																
															
																tam_L = utils.getDatoContexto("LST_DISP").getLongitud();
																int i=0;
																String mod ="";
																
																for( i = 0; i < tam_L; i++){
																		mod = utils.getValorContexto("LST_DISP." + i + ".MOD").trim();
												
															%>
														  <option value="<%=mod%>" > <%=mod%> </option>
														  <%
																}
														
														  %>
														</select>
												</td>
											</tr>
											<tr>
												<td width="25%"  align="left" class="cellTablaN" >CR </td>
												<td align="left" class="cellTablaN"><inputfieldtext><span id="CR_ER" class='<%=utils.escribeEstiloLabel("CR")%>'></span><input
							type="text" name="CR"  	value='<%=utils.getValorContexto("CR")%>' requerido="false" size="5" maxlength="4" class="requerido" sentido="N" /><%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>&nbsp;*
 </td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td>
							<table width="100%" cellspacing="0" >
								<tr height="24">
									<td class="subtituloTabla"  colspan="6" >Captura el número de serie de los dispositivos de Acceso Seguro Digital Adicionales</td>
								</tr>
								<tr height="20" class="renglonImpar" > 
									<td class="tablasDinamicas" align="center">&nbsp;&nbsp;
										<inputfieldtext><span id="DISP01_ER" class='<%=utils.escribeEstiloLabel("DISP01")%>'></span>
										<input type="text" id="DISP01" name="DISP01" value='<%=utils.getValorContexto("DISP01")%>' requerido="false" size="12" maxlength="10" class="requerido" sentido="N" onKeyPress="return soloNumeros(event, false);" />
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									*</td>

									<td align="center" class="cellTabla tablasDinamicas">
									<inputfieldtext>
									<span id="DISP02_ER" class='<%=utils.escribeEstiloLabel("DISP02")%>'></span>
									<input type="text" id="DISP02" name="DISP02" value='<%=utils.getValorContexto("DISP02")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
									<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>	

									</td>

									<td align="center" class="cellTabla tablasDinamicas">
									<inputfieldtext>
									<span id="DISP03_ER" class='<%=utils.escribeEstiloLabel("DISP03")%>'></span>
									<input type="text" id="DISP03" name="DISP03" value='<%=utils.getValorContexto("DISP03")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
									<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>	
									</td>

									<td align="center" class="cellTabla tablasDinamicasFin">
										<inputfieldtext>
										<span id="DISP04_ER" class='<%=utils.escribeEstiloLabel("DISP04")%>'></span>
										<input type="text" id="DISP04" name="DISP04" value='<%=utils.getValorContexto("DISP04")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>
								</tr>


								<tr height="20" align="middle" class="renglonPar" > 
									<td align="center"class="tablasDinamicas" >
										<inputfieldtext>
										<span id="DISP05_ER" class='<%=utils.escribeEstiloLabel("DISP05")%>'></span>
										<input type="text" id="DISP05" name="DISP05" value='<%=utils.getValorContexto("DISP05")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext>
										<span id="DISP06_ER" class='<%=utils.escribeEstiloLabel("DISP06")%>'></span>
										<input type="text" id="DISP06" name="DISP06" value='<%=utils.getValorContexto("DISP06")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext>
										<span id="DISP07_ER" class='<%=utils.escribeEstiloLabel("DISP07")%>'></span>
										<input type="text" id="DISP07" name="DISP07" value='<%=utils.getValorContexto("DISP07")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicasFin">
										<inputfieldtext><span id="DISP08_ER" class='<%=utils.escribeEstiloLabel("DISP08")%>'></span>
										<input type="text" id="DISP08" name="DISP08" value='<%=utils.getValorContexto("DISP08")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>
								</tr>
								<tr height="20" align="middle" class="renglonImpar"> 
									<td align="center" class="tablasDinamicas" >
										<inputfieldtext><span id="DISP09_ER" class='<%=utils.escribeEstiloLabel("DISP09")%>'></span>
										<input type="text" id="DISP09" name="DISP09" value='<%=utils.getValorContexto("DISP09")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext><span id="DISP10_ER" class='<%=utils.escribeEstiloLabel("DISP10")%>'></span>
										<input type="text" id="DISP10" name="DISP10" value='<%=utils.getValorContexto("DISP10")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext>
										<span id="DISP11_ER" class='<%=utils.escribeEstiloLabel("DISP11")%>'></span>
										<input type="text" id="DISP11" name="DISP11" value='<%=utils.getValorContexto("DISP11")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicasFin">
										<inputfieldtext><span id="DISP12_ER" class='<%=utils.escribeEstiloLabel("DISP12")%>'></span>
										<input type="text" id="DISP12" name="DISP12" value='<%=utils.getValorContexto("DISP12")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>
								</tr>

								<tr height="20" align="middle" class="renglonPar" > 
									<td align="center" class="tablasDinamicas">
										<inputfieldtext><span id="DISP13_ER" class='<%=utils.escribeEstiloLabel("DISP13")%>'></span>
										<input type="text" id="DISP13" name="DISP13" value='<%=utils.getValorContexto("DISP13")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext><span id="DISP14_ER" class='<%=utils.escribeEstiloLabel("DISP14")%>'></span>
										<input type="text" id="DISP14" name="DISP14" value='<%=utils.getValorContexto("DISP14")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext>
										<span id="DISP15_ER" class='<%=utils.escribeEstiloLabel("DISP15")%>'></span>
										<input type="text" id="DISP15" name="DISP15" value='<%=utils.getValorContexto("DISP15")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicasFin">
										<inputfieldtext>
										<span id="DISP16_ER" class='<%=utils.escribeEstiloLabel("DISP16")%>'></span>
										<input type="text" id="DISP16" name="DISP16" value='<%=utils.getValorContexto("DISP16")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>
								</tr>

								<tr height="20" align="middle" class="renglonImpar"> 
									<td align="center" class="tablasDinamicas" >
										<inputfieldtext>
										<span id="DISP17_ER" class='<%=utils.escribeEstiloLabel("DISP17")%>'></span>
										<input type="text" id="DISP17" name="DISP17" value='<%=utils.getValorContexto("DISP17")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext>
										<span id="DISP18_ER" class='<%=utils.escribeEstiloLabel("DISP18")%>'></span>
										<input type="text" id="DISP18" name="DISP18" value='<%=utils.getValorContexto("DISP18")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicas">
										<inputfieldtext>
										<span id="DISP19_ER" class='<%=utils.escribeEstiloLabel("DISP19")%>'></span>
										<input type="text" id="DISP19" name="DISP19" value='<%=utils.getValorContexto("DISP19")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>

									<td align="center" class="cellTabla tablasDinamicasFin">
										<inputfieldtext>
										<span id="DISP20_ER" class='<%=utils.escribeEstiloLabel("DISP20")%>'></span>
										<input type="text" id="DISP20" name="DISP20" value='<%=utils.getValorContexto("DISP20")%>' requerido="false" size="12" maxlength="10" class="enabled" sentido="N" onKeyPress="return soloNumeros(event, false);"/>
										<%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<BR>
							<table border="0" align="center" width="100%">
								<tr align="center">
									<td >
										<button class ="button_little" onClick="jsRegresar(0X2501017);">Regresar</button>&nbsp;
										<button class ="button_little" onClick="js_Asignar();">Asignar</button>&nbsp;
									</td>
								</tr>
							</table>		
						</td>
					</tr>				
				</table>
				</div>
			</form>
			<script type="text/javascript">
			
			var selec="";
			selec=document.AUMXVE12600.SEL_DISP.value;
			if(selec!="")
				seleccionarCodigoCombo('LST_DISP',selec,'AUMXVE12600');	

			    if('<%=utils.getValorContexto("ERROR_MDO").trim()%>' != ""){
					if('<%=utils.getValorContexto("ERROR_MDO")%>' == "-8"){
			            alert('Estimado usuario  su clave de operación es incorrecta');
			        }else if('<%=utils.getValorContexto("ERROR_MDO")%>' == "-10"){
			            alert('Estimado usuario su clave de operación esta bloqueada');
			        }else{
			            alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
					}
				}
				if('<%=utils.getValorContexto("ER_BANDERA").trim()%>' == "1"){
					if('<%=utils.getValorContexto("ER_CODIGO").trim()%>' == ""){
						alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
					}
				}
			</script>
		</customform>
	</body>
</html>