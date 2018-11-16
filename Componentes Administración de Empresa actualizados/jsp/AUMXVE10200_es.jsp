<%-- 
  - Autor(s): 
  - Fecha:18/11/2010
  - Descripci�n:JSP Consulta de Referencia
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>Consulta de Referencia</title>
	<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
	<script type="text/javascript" src="/aumx_es_web_pub/js/jquery-3.3.1.js"></script>
	<script language="javascript" src="/atcl_es_web_pub/js/utils.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10200.js"></script>
	<script type="text/javascript" src="/aumx_es_web_pub/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/aumx_es_web_pub/css/styles_10200.css" type="text/css" />
</head>

<body onload="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>"
 bgcolor="#FFFFFF">
	<customform>
		<form id="AUMXVE10200" name="AUMXVE10200" action="<%=utils.getDestinoFormulario()%>" method="POST" target=""
		 ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
			<input id="evento" type="hidden" name="evento" />
			<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>" />
			<input type="hidden" name="ventana" value="<%=utils.getVentana()%>" />
			<customhidden><input name="N_HDN_LST_EMPRESA" type="hidden" value='<%= utils.getValorContexto("LST_EMPRESA") %>' /></customhidden>
			<customhidden><input name="N_HDN_REFEREN" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
			<customhidden><input name="N_HDN_REFDESC" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
			<customhidden><input name="N_HDN_ESTADOE" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
			<customhidden><input name="N_HDN_ADMINEM" type="hidden" value='<%= utils.getValorContexto("ADMINEM") %>' /></customhidden>
			<customhidden><input name="N_HDN_CONTACT" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
			<customhidden><input name="N_HDN_APPTITU" type="hidden" value='<%= utils.getValorContexto("APPTITU") %>' /></customhidden>
			<customhidden><input name="N_HDN_TITULAR" type="hidden" value='<%= utils.getValorContexto("TITULAR") %>' /></customhidden>
			<customhidden><input name="N_HDN_EMAIL" type="hidden" value='<%= utils.getValorContexto("EMAIL") %>' /></customhidden>
			<customhidden><input name="N_HDN_INDADM" type="hidden" value='<%= utils.getValorContexto("INDADM") %>' /></customhidden>
			<customhidden><input name="N_HDN_NIVELES" type="hidden" value='<%= utils.getValorContexto("NIVELES") %>' /></customhidden>
			<customhidden><input name="N_HDN_INDPAG" id="N_HDN_INDPAG" type="hidden" value='<%= utils.getValorContexto("INDPAG") %>' /></customhidden>
			<customhidden><input name="N_HDN_CVEPAG" id="N_HDN_CVEPAG" type="hidden" value='<%= utils.getValorContexto("CVEPAG") %>' /></customhidden>
			<div class="divPrincipal">
				<div id="principal">
					<div class="titleModify">CONSULTA/MODIFICACION DE EMPRESAS</div>
					<div class="subtitlesModify">Seleccione empresa</div>
					<div>
						<table id="principalTable" cellspacing="0">
							<thead>
								<tr class="headerTable">
									<td width="10%" colspan="2">Referencia</td>
									<td width="30%">Nombre empresa</td>
									<td width="10%">Edo empresa</td>
									<td width="30%">Nombre del contacto</td>
									<td width="10%">Id Administrador</td>
									<td width="10%">Aplicaci&oacute;n titular</td>
								</tr>
							</thead>
							<tbody>
								<!-- Inicia Tabla Din�mica -->
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
								<tr height="auto" class="<%=(i%2 == 0)?" renglonImpar":"renglonPar"%>">
									<td class="modifyCompany" data-selected="<%=seleccion%>" width="3%">
										<!--<input type="radio" size="2" name="RDB_EMPRESA" value="" />-->
									</td>
									<td width="7%">
										<%=referencia%>
									</td>
									<td width="30%">
										<%=nombreEmpresa%>
									</td>
									<td width="10%">
										<%=edoEmpresa%>
									</td>
									<td width="30%">
										<%=nombreContacto%>
									</td>
									<td width="10%">
										<%=adminem%>
									</td>
									<td width="10%">
										<%=apptitu%>
									</td>
								</tr>
								<% } %>
								<% } catch (Exception e) {} %>
							</tbody>
							<!-- Termina Tabla Din�mica -->
						</table>
					</div>
					<div id="pagArea">
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
						<a class="hiper" href="#" onclick="jsPaginar('<%=indpag%>', '<%=cvepag%>' );">
							<%=pag%> </a>&nbsp;
						<% }
								}%>
						<% } catch (Exception e) {} %>
					</div>
				</div>

				<div class="row">
					<div class="col-4" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsAsignar();" value="Asignar aplicaci&oacute;n">
					</div>
					<div class="col-4" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsDesasignar();" value="Des-asignar aplicaci&oacute;n">
					</div>
					<div class="col-4" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsModificar();" value="Modificar">
					</div>
				</div>

				<div class="row">
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsBaja();" value="Baja">
					</div>
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsAsignaTokens();" value="Asignar Dispositivos">
					</div>
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsAsignaSoftoken();" value="Asignar Softoken">
					</div>
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsAdmin();" value="Reactivar admin.">
					</div>
				</div>

				<div class="row">
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsNiveles();" value="Modificar niveles">
					</div>
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsAltaEst();" value="Alta estructura">
					</div>
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsModEst();" value="Modificar estructura">
					</div>
					<div class="col-3" align="center">
						<input type="button" class="btn primary-color-dark rounded btn-sm" onClick="jsAsignarDispAdmEmp();" value="Dispositivos Adm. Emp.">
					</div>
				</div>
			</div>
		</form>
		<script type="text/javascript">
			if ('<%=utils.getValorContexto("ERROR_MDO").trim()%>' != "") {
				if ('<%=utils.getValorContexto("ERROR_MDO")%>' == "-8") {
					alert('Estimado usuario  su clave de operaci�n es incorrecta');
				} else if ('<%=utils.getValorContexto("ERROR_MDO")%>' == "-10") {
					alert('Estimado usuario su clave de operaci�n esta bloqueada');
				} else {
					alert('Estimado usuario ocurri� un error al validar su clave de operaci�n\nPor favor intente m�s tarde');
				}
			}
			if ('<%=utils.getValorContexto("ER_BANDERA").trim()%>' == "1") {
				if ('<%=utils.getValorContexto("ER_CODIGO")%>' == null || '<%=utils.getValorContexto("ER_CODIGO").trim()%>' == "") {
					alert('Servicio temporalmente no disponible\nPor favor intente m�s tarde');
				}

			}
		</script>
	</customform>
</body>

</html>