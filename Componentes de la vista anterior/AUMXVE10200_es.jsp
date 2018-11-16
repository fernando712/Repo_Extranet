<%-- 
  - Autor(s): Armando Hernández Arroyo
  - Fecha:18/11/2010
  - Descripción:JSP Consulta de Referencia
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<title>Consulta de Referencia</title>		
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script language="javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script language="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script language="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script language="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script language="javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10200.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css"/>
</head>
<body onload="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE10200" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
	<input type="hidden" name="evento"/>
	<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>"/>
	<input type="hidden" name="ventana" value="<%=utils.getVentana()%>"/>
	<customhidden><input name="N_HDN_LST_EMPRESA" type="hidden" value='<%= utils.getValorContexto("LST_EMPRESA") %>' /></customhidden>
	<customhidden><input name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
	<customhidden><input name="N_HDN_REFDESC" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
	<customhidden><input name="N_HDN_ESTADOE" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
	<customhidden><input name="N_HDN_ADMINEM" type="hidden"	value='<%= utils.getValorContexto("ADMINEM") %>' /></customhidden>
	<customhidden><input name="N_HDN_CONTACT" type="hidden"	value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
	<customhidden><input name="N_HDN_APPTITU" type="hidden"	value='<%= utils.getValorContexto("APPTITU") %>' /></customhidden>
	<customhidden><input name="N_HDN_TITULAR" type="hidden"	value='<%= utils.getValorContexto("TITULAR") %>' /></customhidden>
	<customhidden><input name="N_HDN_EMAIL" type="hidden"	value='<%= utils.getValorContexto("EMAIL") %>' /></customhidden>
	<customhidden><input name="N_HDN_INDADM" type="hidden"	value='<%= utils.getValorContexto("INDADM") %>' /></customhidden>
	<customhidden><input name="N_HDN_NIVELES" type="hidden"	value='<%= utils.getValorContexto("NIVELES") %>' /></customhidden>
	
	<customhidden><input name="N_HDN_INDPAG" id="N_HDN_INDPAG" type="hidden"	value='<%= utils.getValorContexto("INDPAG") %>' /></customhidden>
	<customhidden><input name="N_HDN_CVEPAG" id="N_HDN_CVEPAG" type="hidden"	value='<%= utils.getValorContexto("CVEPAG") %>' /></customhidden>
	
	
				<div class="divPrincipal">
			<div id="principal" style="overflow:scroll; height:550px; width:100%">
				<table width="750">
					<tr>
						<td height="34" align="center">&nbsp;</td>
					</tr>
					<tr>
						<td align="center">
							<table align="center" class="tituloTabla" width="100%">
								<tr>
									<td align="center">CONSULTA/MODIFICACION DE EMPRESAS</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="center">
							<table align="center" width="100%" cellspacing="0">
								<tr height="24">
									<td class="subtituloTabla" align="left" colspan="7" >Seleccione empresa</td>
								</tr>
								<tr>
									<td width="10%" class="subtituloTabla" align="center" colspan="2">Referencia</td>
									<td width="30%" class="subtituloTabla" align="center">Nombre empresa</td>
									<td width="10%" class="subtituloTabla" align="center">Edo empresa</td>
									<td width="30%" class="subtituloTabla" align="center">Nombre del contacto</td>
									<td width="10%" class="subtituloTabla" align="center">Id Administrador</td>
									<td width="10%" class="subtituloTabla" align="center">Aplicación titular</td>
								</tr>
								<!-- Inicia Tabla Dinámica -->
								<% 
									int tam_L_EMPRESA = 0;
								try{
									tam_L_EMPRESA = utils.getDatoContexto("LST_EMPRESA").getLongitud();
									String referencia = "";
									String nombreEmpresa = "";
									String edoEmpresa = "";
									String nombreContacto = "";
									String propietario = "";
									String adminem = "";
									String apptitu = "";
									String titular = "";			
									String email = "";
									String indadm = "";
									String niveles = "";
									String seleccion = "";
									String fondo = "Non";
									String radio = "";
									int i;
									for(i = 0; i < tam_L_EMPRESA; i++){
										referencia 		= utils.getValorContexto("LST_EMPRESA." + i + ".REFEREN").trim();
										nombreEmpresa 	= utils.getValorContexto("LST_EMPRESA." + i + ".REFDESC").trim();
										edoEmpresa 		= utils.getValorContexto("LST_EMPRESA." + i + ".ESTADOE").trim();
										adminem 	= utils.getValorContexto("LST_EMPRESA." + i + ".ADMINEM").trim();
										nombreContacto 	= utils.getValorContexto("LST_EMPRESA." + i + ".CONTACT").trim();
										apptitu 		= utils.getValorContexto("LST_EMPRESA." + i + ".APPTITU").trim();
										titular 		= utils.getValorContexto("LST_EMPRESA." + i + ".TITULAR").trim();
										email 			= utils.getValorContexto("LST_EMPRESA." + i + ".EMAIL").trim();
										indadm 			= utils.getValorContexto("LST_EMPRESA." + i + ".INDADM").trim();
										niveles 		= utils.getValorContexto("LST_EMPRESA." + i + ".NIVELES").trim();
										seleccion = referencia + "|" + nombreEmpresa + "|" + edoEmpresa + "|" + adminem + "|"  +  nombreContacto + "|"  + 
													apptitu + "|" + titular + "|" + email + "|" + indadm + "|" + niveles;
										
										referencia 		= referencia.equals("")? "&nbsp;":referencia;
										nombreEmpresa 	= nombreEmpresa.equals("")?"&nbsp;" : nombreEmpresa;						
										edoEmpresa 		= edoEmpresa.equals("")? "&nbsp;" : edoEmpresa;
										adminem 		= adminem.equals("")? "&nbsp;" : adminem;
										nombreContacto 	= nombreContacto.equals("")? "&nbsp;" : nombreContacto;
										apptitu 		= apptitu.equals("")? "&nbsp;" : apptitu;
										titular 		= titular.equals("")? "&nbsp;" : titular;
										email 			= email.equals("")? "&nbsp;" : email;
										indadm 			= indadm.equals("")? "&nbsp;" : indadm;
										niveles 		= niveles.equals("")? "&nbsp;" : niveles;
																	
									%>
									
								<tr height="20px" class="<%=(i%2 == 0)?"renglonImpar":"renglonPar"%>" align="middle">  
									<td align="center" class="tablasDinamicas" >
										<input type="radio" size="2" name="RDB_EMPRESA" value="<%=seleccion%>" />
									</td>
									<td align="center" class="cellTabla tablasDinamicas"><%=referencia%></td>
									<td align="center" class="cellTabla tablasDinamicas"><%=nombreEmpresa%></td>
									<td align="center" class="cellTabla tablasDinamicas"><%=edoEmpresa%></td>
									<td align="center" class="cellTabla tablasDinamicas"><%=nombreContacto%></td>
									<td align="center" class="cellTabla tablasDinamicas"><%=adminem%></td>
									<td align="center" class="cellTabla tablasDinamicasFin"><%=apptitu%></td>
								</tr>
								<% } %>
								<% } catch (Exception e) {} %>
								<!-- Termina Tabla Dinámica -->
							</table>
						</td>
					</tr>	
					<tr><td align ="right">
						<%
							int tam_L_Control = 0;
							try {
								tam_L_Control = utils.getDatoContexto("LST_CONTROL").getLongitud();
								
								if(tam_L_Control > 1){
									for(int j = 0; j < tam_L_Control; j++){
										String indpag, cvepag, pag = "";
										indpag = utils.getValorContexto("LST_CONTROL."+j+".INDPAG").trim();
										cvepag = utils.getValorContexto("LST_CONTROL."+j+".CVEPAG").trim();
										pag = utils.getValorContexto("LST_CONTROL."+j+".PAG").trim();
							%>
								<a class="hiper" href="#" onclick="jsPaginar('<%=indpag%>', '<%=cvepag%>' );"> <%=pag%> </a>&nbsp;
								<% }
								}%>
							<% } catch (Exception e) {} %>
					</td></tr>
					<tr>
						<td >
							<table border="0"  align="center" width="100%">
								<tr align="center">
									<td align="center">
										<input type="button" value="Asignar aplicación" class="button_Big" onclick="jsAsignar();"></input>&nbsp;
										<input type="button" value="Des-asignar aplicación" class="button_Big" onclick="jsDesasignar();"></input>&nbsp;
										<input type="button" value="Modificar" class="button_little" onclick="jsModificar()"></input>&nbsp;
										<!--<input type="button" value="ModificarNuevo" class="button_little" onclick="jsModificarNuevo()"></input>&nbsp;-->
									</td>
								</tr>
								<tr align="center">
									<td align="center">
										<input type="button" value="Baja" class="button_little" onclick="jsBaja()"></input>&nbsp;
									    <input type="button" value="Asignar Dispositivos" class="button_Big" onclick="jsAsignaTokens()"></input>&nbsp;
										<input type="button" value="Reactivar admin." class="button_little" onclick="jsAdmin()"></input>&nbsp;
										<!--button class="button_grid" onclick="jsBajaTokens()">Baja Tokens</button-->
										<!--button class="button_grid" onclick="jsModificarPerfil()">Mod. Perfil</button-->
										
										<!--button class="button_grid" onclick="jsCambioTitular()">Cambio titular</button-->
									</td>
								</tr>
								<tr align="center">
									<td align="center">
									    <input type="button" value="Modificar niveles" class="button_little" onclick="jsNiveles()"></input>&nbsp;
										<input type="button" value="Alta estructura" class="button_little" onclick="jsAltaEst()"></input>&nbsp;
										<input type="button" value="Modificar estructura" class="button_Big" onclick="jsModEst()"></input>&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			</div>
			</form>
			<script type="text/javascript">
			    if('<%=utils.getValorContexto("ERROR_MDO").trim()%>' != "")
				{
					if('<%=utils.getValorContexto("ERROR_MDO")%>' == "-8")
					{
			            alert('Estimado usuario  su clave de operación es incorrecta');
			        }
					else if('<%=utils.getValorContexto("ERROR_MDO")%>' == "-10")
					{
			            alert('Estimado usuario su clave de operación esta bloqueada');
			        }
					else
					{
			            alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
					}
				}
				if('<%=utils.getValorContexto("ER_BANDERA").trim()%>' == "1")
				{
					 if('<%=utils.getValorContexto("ER_CODIGO")%>'==null  ||  '<%=utils.getValorContexto("ER_CODIGO").trim()%>'=="")
					{
                          alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
					}
					
				}
			</script>
		</customform>
	</body>
</html>