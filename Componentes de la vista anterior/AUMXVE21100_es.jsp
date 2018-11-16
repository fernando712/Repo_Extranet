<%--
  - Autor(s):Cruz Rodríguez Renato
  - Fecha:11/01/2011
  - Descripción:JSP Modificación de estructura
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Modificación de estructura</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/ajax.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/ajax.js"></script>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE21100.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
	</head>
	<body onload="controlSesion(); jsLanzaMensaje();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
	<customform>
	<form name="AUMXVE21100" action="<%=utils.getDestinoFormulario()%>" method="post" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
		<input type="hidden" name="evento">
		<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
		<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
		<customhidden><input name="N_HDN_LST_EMPRESA" type="hidden" value='<%= utils.getValorContexto("LST_EMPRESA") %>' /></customhidden>
		<customhidden><input name="N_HDN_LST" type="hidden" value='<%= utils.getValorContexto("LST_NIVEL") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_NUMREF" type="hidden" value='<%= utils.getValorContexto("S_NUMREF") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_NOM_EMPRESA" type="hidden" value='<%= utils.getValorContexto("S_NOM_EMPRESA") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_NIVEL" type="hidden" value='<%= utils.getValorContexto("S_NIVEL") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_ENT_ID" type="hidden" value='<%= utils.getValorContexto("S_ENT_ID") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_ENT_CR" type="hidden" value='<%= utils.getValorContexto("S_ENT_CR") %>' /></customhidden>
		<customhidden><input name="N_HDN_S_ENT_DESC" type="hidden" value='<%= utils.getValorContexto("S_ENT_DESC") %>' /></customhidden>
		<customhidden><input name="N_HDN_BASICO" type="hidden" value='<%= utils.getValorContexto("BASICO") %>' /></customhidden>
		<customhidden><input name="S_NIVEL_1" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_1") %>' /></customhidden>
		<customhidden><input name="S_NIVEL_2" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_2") %>' /></customhidden>
		<customhidden><input name="S_NIVEL_3" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_3") %>' /></customhidden>
		<customhidden><input name="S_NIVEL_4" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_4") %>' />
		<customhidden><input name="S_NIVEL_5" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_5") %>' /></customhidden></customhidden>
		<customhidden><input name="S_NIVEL_6" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_6") %>' />
		<customhidden><input name="S_NIVEL_7" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_7") %>' /></customhidden></customhidden>
		<customhidden><input name="S_NIVEL_8" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_8") %>' /></customhidden>
		<customhidden><input name="S_NIVEL_9" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_9") %>' /></customhidden>
		<customhidden><input name="NIVEL" type="hidden" value='<%= utils.getValorContexto("NIVEL") %>' /></customhidden>
	    <customhidden><input name="IDENT_EST" type="hidden" value='<%= utils.getValorContexto("IDENT_EST") %>' /></customhidden>
		<customhidden><input name="ER_BANDERA" id="ER_BANDERA" type="hidden" value='<%= utils.getValorContexto("ER_BANDERA") %>' /></customhidden>
		<customhidden><input name="ER_CODIGO" id="ER_CODIGO" type="hidden" value='<%= utils.getValorContexto("ER_CODIGO") %>' /></customhidden>
		<customhidden><input name="AV_CODIGO" id="AV_CODIGO" type="hidden" value='<%= utils.getValorContexto("AV_CODIGO") %>' /></customhidden>





<customhidden><input name="IDENTI" type="hidden"
	value='<%= utils.getValorContexto("IDENTI") %>' /></customhidden>

<customhidden><input name="NIVENT" type="hidden"
	value='<%= utils.getValorContexto("NIVENT") %>' /></customhidden>

<div class="divPrincipal">
		<table width=750>
			<tr>
				<td height="34" align=center>&nbsp;
				</td>
			</tr>
			<tr>
				<td align=center>
					<table align="center" class="tituloTabla" width=100%>
						<tr>
							<td align="center">CONSULTA DE ESTRUCTURA</td>
						</tr>
					</table>
				</td>
			</tr>
			<%
			String registro="";
			%>
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
									<td width=25% align="left"  class="cellTablaN" >Referencia</td>
									<td width=75% align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("S_NUMREF")%>" readonly="readonly"/></td>

								</tr>
								<tr>
									<td width=25% align="left" class="cellTablaN" >Nombre empresa</td>
									<td width=75% align="left"><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("S_NOM_EMPRESA")%>" readonly="readonly"/></td>
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
							<td align="left" >Seleccione nivel</td>
						</tr>
					</table>

					<table width=100%  align="center" id="t_usu" style="table-layout:fixed;" class="panel">
						<tr height=20>
							<td  width="25%" class="cellTablaN">Nivel</td>
							<td width="75%">
								<select class="combo_normal" name="s_niv" id="s_niv" style="width:190px" onChange="doEntidad1(this.value)">
									<option value="-1">--Seleccionar nivel--</option>
									<%
										int z=0;
										registro="";
										while(!utils.getValorContexto("LST_NIVEL."+z+".NIV_ESTR").equals(""))
										{
											registro=utils.getValorContexto("LST_NIVEL."+z+".NIV_ESTR").trim()+"|"+utils.getValorContexto("LST_NIVEL."+z+".NIV_CVE").trim()+"|"+utils.getValorContexto("LST_NIVEL."+z+".NIV_DES").trim();
									%>
											<option value="<%=registro%>" ><%=utils.getValorContexto("LST_NIVEL."+z+".NIV_ESTR").trim()%>&nbsp;<%=utils.getValorContexto("LST_NIVEL."+z+".NIV_DES").trim()%></option>
									<%
										z++;
										}
									%>

								</select>
							</td>
						</tr>
						<%
						String nivel = utils.getValorContexto("S_NIVEL").trim();
						String aux = nivel.substring(0,1);
						int numero=Integer.parseInt(aux.trim());
						registro="";
						%>
						<%if(numero>0)
						  {
						%>
						<tr height=20>
							<td width="25%" class="cellTablaN">Estructura Nivel 1 </td>
							<td align="left">
								<select class="combo_normal" id="cmbEst_1" name="cmbEst_1" onChange="doEntidadN('1',this.value)">
									<option value="-1">-- Seleccione Estructura --</option>
								<%
								z=0;
								while(!utils.getValorContexto("LST_NIVEL_1."+z+".IDENT").equals(""))
								{
									registro="";
									registro=utils.getValorContexto("LST_NIVEL_1."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_1."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_1."+z+".DESC").trim();
								%>
								<option value="<%=registro%>"><%=utils.getValorContexto("LST_NIVEL_1."+z+".IDENT").trim()%>&nbsp;<%=utils.getValorContexto("LST_NIVEL_1."+z+".DESC").trim()%></option>
								<%
									z++;
								}
								%>
								</select>
							</td>
						</tr>
						<%
						}
						%>
						<%if(numero > 1)
						  {
						%>
							<tr height=20 >
								<td width="25%" class="cellTablaN">Estructura Nivel 2</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_2" name="cmbEst_2" onChange="doEntidadN('2',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_2."+z+".IDENT").equals(""))
									{
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_2."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_2."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_2."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_2."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_2."+z+".DESC").trim()%></option>
									<%  z++;
									}
									%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 2)
								  {
								%>
								<tr height=20 >
									<td width="25%" class="cellTablaN">Estructura Nivel 3</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_3" name="cmbEst_3" onChange="doEntidadN('3',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_3."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_3."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_3."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_3."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_3."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_3."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 3){%>
								<tr height=20 >
									<td width="25%" class="cellTablaN">Estructura Nivel 4</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_4" name="cmbEst_4" onChange="doEntidadN('4',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_4."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_4."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_4."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_4."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_4."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_4."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 4){%>
								<tr height=20 >
									<td width="25%" class="cellTablaN">Estructura Nivel 5</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_5" name="cmbEst_5" onChange="doEntidadN('5',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_5."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_5."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_5."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_5."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_5."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_5."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 5){%>
								<tr height=20 >
									<td width="25%" class="cellTablaN">Estructura Nivel 6</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_6" name="cmbEst_6" onChange="doEntidadN('6',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_6."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_6."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_6."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_6."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_6."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_6."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 6){%>
								<tr height=20 >
									<td width="25%" class="cellTablaN">Estructura Nivel 7</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_7" name="cmbEst_7" onChange="doEntidadN('7',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_7."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_7."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_7."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_7."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_7."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_7."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 7){%>
								<tr height=20 >
									<td width="25%" class="cellTablaN">Estructura Nivel 8</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_8" name="cmbEst_8" onChange="doEntidadN('8',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_8."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_8."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_8."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_8."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_8."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_8."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 8){%>
								<tr height=20 >
									<td width="25%" class="cellTablaN">Estructura Nivel 9</td>
									<td align="left">
										<select class="combo_normal" id="cmbEst_9" name="cmbEst_9" onchange="doEntidadN('9',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_9."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_9."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_9."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_9."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_9."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_9."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>

					</table>

				</td>
			</tr>

			<tr>
				<td >
					<table border=0  align="center" width=100%>
						<tr align="center">
							<td>
								<input type="button" class="button_little" value="Regresar" onClick="jsRegresar(0X250101E);">  &nbsp;
								<input type="button" class="button_little" value="Consultar" onclick="jsConsulta()" />&nbsp;
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

		selec="";
		selec=document.AUMXVE21100.N_HDN_S_NIVEL.value;
		seleccionarCodigoCombo('s_niv',selec,'AUMXVE21100');


		selec="";
		selec=document.AUMXVE21100.S_NIVEL_1.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_1',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_2.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_2',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_3.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_3',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_4.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_4',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_5.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_5',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_6.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_6',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_7.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_7',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_8.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_8',selec,'AUMXVE21100');
		}

		selec="";
		selec=document.AUMXVE21100.S_NIVEL_9.value;
		if(selec!="")
		{
			seleccionarCodigoCombo('cmbEst_9',selec,'AUMXVE21100');
		}

    	if(('<%=utils.getValorContexto("ERROR_MDO")%>'!=null)&&('<%=utils.getValorContexto("ERROR_MDO").trim()%>'!=""))
		{
          if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-8")
               alert('Estimado usuario  su clave de operación es incorrecta');
           else if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-10")
               alert('Estimado usuario su clave de operación esta bloqueada');
           else {
               alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
		   }
		}

		if ('<%=utils.getValorContexto("ER_BANDERA").trim()%>'=="1")
		{
    		if('<%=utils.getValorContexto("ER_CODIGO")%>'==null  ||  '<%=utils.getValorContexto("ER_CODIGO").trim()%>'=="")
           		alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
		}
	</script>
	</customform>
	</body>
</html>
