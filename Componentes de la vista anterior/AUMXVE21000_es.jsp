<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Alta Estructura</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/ajax.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/ajax.js"></script>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript">var dmWorkPath="/aumx_es_web_pub/js/";</script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilBP.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE21000.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
<script>
function armar(){
	
	cnu="<%=utils.getValorContexto("CI_NIV_USU").trim()%>";	
	cen=gebi("cmbNiv").selectedIndex;	
	
	gebn("h_s_nivel").value=gebi("cmbNiv").value;
	gebn("h_s_des_niv").value=gebi("cmbNiv")[gebi("cmbNiv").selectedIndex].text;	
	gebn("h_s_ent_id").value=gebi("s_niv"+cen).value;
	gebn("h_s_ent_desc").value=gebi("s_niv"+cen)[gebi("s_niv"+cen).selectedIndex].text;
	gebn("h_plaza_cr").value=gebi("plaza_cr").value;
	gebn("h_desc_entidad").value=gebi("desc_entidad").value;
	gebn("h_d_calle").value=gebi("d_calle").value;
	gebn("h_d_num_ext").value=gebi("d_num_ext").value;
	gebn("h_d_num_int").value=gebi("d_num_int").value;
	gebn("h_d_col").value=gebi("d_col").value;
	gebn("h_d_del_mun").value=gebi("d_del_mun").value;
	gebn("h_d_codpos").value=gebi("d_codpos").value; 
	gebn("h_d_ciudad").value=gebi("d_ciudad").value; 
	gebn("h_d_entidad").value=gebi("d_entidad").value;
	gebn("h_d_tel1").value=gebi("d_tel1").value;
	gebn("h_d_ext1").value=gebi("d_ext1").value;
	gebn("h_d_tel2").value=gebi("d_tel2").value;
	gebn("h_d_ext2").value=gebi("d_ext2").value;	
	gebn("h_cve_oper").value=gebi("cve_oper").value;
	inputs=document.getElementsByTagName("input");
	var hids = new Array();
	var msgh="";
	for(var i=0;i<inputs.length;i++){
		if(inputs[i].type=="hidden"){
			hids[i]=inputs[i];
			msgh+=hids[i].name+": "+hids[i].value+"\n";
		}
	}
	
	document.AUMXVE21000.evento.value="0x02501000"; //ir al siguiente servicio
	document.AUMXVE21000.submit();
}
</script>
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE21000" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
<customhidden><input name="h_s_numref" type="hidden" value='<%= utils.getValorContexto("S_NUMREF") %>' /></customhidden>
<customhidden><input name="h_s_nom_empresa" type="hidden" value='<%=utils.getValorContexto("S_NOM_EMPRESA") %>' /></customhidden>
<customhidden><input name="h_s_nivel" type="hidden" value='<%=utils.getValorContexto("S_NIVEL") %>' /></customhidden>
<customhidden><input name="h_s_ent_id" type="hidden" value='<%=utils.getValorContexto("S_ENT_ID") %>' /></customhidden>
<customhidden><input name="h_s_ent_cr" type="hidden" value='<%=utils.getValorContexto("S_ENT_CR") %>' /></customhidden>
<customhidden><input name="h_s_ent_desc" type="hidden" value='<%=utils.getValorContexto("S_ENT_DESC") %>' /></customhidden>
<customhidden><input name="h_plaza_cr" type="hidden" value='<%=utils.getValorContexto("PLAZA_CR") %>' /></customhidden>
<customhidden><input name="h_desc_entidad" type="hidden" value='<%=utils.getValorContexto("DESC_ENTIDAD") %>' /></customhidden>
<customhidden><input name="h_d_calle" type="hidden" value='<%=utils.getValorContexto("D_CALLE") %>' /></customhidden>
<customhidden><input name="h_d_num_ext" type="hidden" value='<%=utils.getValorContexto("D_NUM_EXT") %>' /></customhidden>
<customhidden><input name="h_d_num_int" type="hidden" value='<%=utils.getValorContexto("D_NUM_INT") %>' /></customhidden>
<customhidden><input name="h_d_col" type="hidden" value='<%=utils.getValorContexto("D_COL") %>' /></customhidden>
<customhidden><input name="h_d_del_mun" type="hidden" value='<%=utils.getValorContexto("D_DEL_MUN") %>' /></customhidden>
<customhidden><input name="h_d_codpos" type="hidden" value='<%=utils.getValorContexto("D_CODPOS") %>' /></customhidden>
<customhidden><input name="h_d_ciudad" type="hidden" value='<%=utils.getValorContexto("D_CIUDAD") %>' /></customhidden>
<customhidden><input name="h_d_entidad" type="hidden" value='<%=utils.getValorContexto("D_ENTIDAD") %>' /></customhidden>
<customhidden><input name="h_d_tel1" type="hidden" value='<%=utils.getValorContexto("D_TEL1") %>' /></customhidden>
<customhidden><input name="h_d_ext1" type="hidden" value='<%=utils.getValorContexto("D_EXT1") %>' /></customhidden>
<customhidden><input name="h_d_tel2" type="hidden" value='<%=utils.getValorContexto("D_TEL2") %>' /></customhidden>
<customhidden><input name="h_d_ext2" type="hidden" value='<%=utils.getValorContexto("D_EXT2") %>' /></customhidden>
<customhidden><input name="h_cve_oper" type="hidden" value='<%=utils.getValorContexto("CVE_OPER") %>' /></customhidden>
<customhidden><input name="h_aux1" type="hidden" value='<%=utils.getValorContexto("AUX1") %>' /></customhidden>
<customhidden><input name="h_aux2" type="hidden" value='<%=utils.getValorContexto("AUX2") %>' /></customhidden>
<customhidden><input name="h_aux3" type="hidden" value='<%=utils.getValorContexto("AUX3") %>' /></customhidden>

<customhidden><input name="h_s_ent_cod" type="hidden" value='<%= utils.getValorContexto("S_ENT_COD") %>' /></customhidden>
<customhidden><input name="h_s_des_niv" type="hidden" value='<%= utils.getValorContexto("S_DES_NIV") %>' /></customhidden>

<customhidden><input name="SEL_CVE_EMP" type="hidden" value='<%= utils.getValorContexto("SEL_CVE_EMP") %>' /></customhidden>
<customhidden><input name="SEL_NIVEL" type="hidden" value='<%= utils.getValorContexto("SEL_NIVEL") %>' /></customhidden>
<customhidden><input name="SEL_NOM_EMP" type="hidden" value='<%= utils.getValorContexto("SEL_NOM_EMP") %>' /></customhidden>

<customhidden><input name="NIVESTR" type="hidden" value='<%= utils.getValorContexto("NIVESTR") %>' /></customhidden>
<customhidden><input name="S_NIVEL" type="hidden" 	value='<%= utils.getValorContexto("S_NIVEL") %>' /></customhidden>
<customhidden><input name="S_NIVEL_1" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_1") %>' /></customhidden>
<customhidden><input name="S_NIVEL_2" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_2") %>' /></customhidden>
<customhidden><input name="S_NIVEL_3" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_3") %>' /></customhidden>
<customhidden><input name="S_NIVEL_4" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_4") %>' /></customhidden>
<customhidden><input name="S_NIVEL_5" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_5") %>' /></customhidden>
<customhidden><input name="S_NIVEL_6" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_6") %>' /></customhidden>
<customhidden><input name="S_NIVEL_7" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_7") %>' /></customhidden>
<customhidden><input name="S_NIVEL_8" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_8") %>' /></customhidden>
<customhidden><input name="S_NIVEL_9" type="hidden" value='<%= utils.getValorContexto("S_NIVEL_9") %>' /></customhidden>
<customhidden><input name="SEL_COD_EST" type="hidden" value='<%= utils.getValorContexto("SEL_COD_EST") %>' /></customhidden>
<div class="divPrincipal">
<div id="principal" style="overflow:scroll; height:550px; width:100%">	
	<table width="750px">
		<tr>
			<td height="34" >&nbsp;
			</td>
		</tr>
		<tr>
			<td >
				<table class="tituloTabla" width=100%>
					<tr>
						<td >ALTA DE ESTRUCTURA</td>
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
						<table width=100% >
							<tr>
								<td width=25% align="left"  class="cellTablaN" >Referencia</td>
								<td width=75% align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("SEL_CVE_EMP")%>" readonly="readonly"/></td>
								
							</tr>
							<tr>
								<td width=25% align="left" class="cellTablaN" >Nombre empresa</td>
								<td width=75% align="left"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("SEL_NOM_EMP")%>" readonly="readonly"/></td>
							</tr>
							
						</table>
					</td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td >
				<table class="subtituloTabla"  width=100%>
					<tr  >
						<td >Selecci&oacute;n de nivel</td>
					</tr>
				</table>
				<table class="panel" width=100% style="table-layout: fixed;" id="t_usu" >
					<tr>
						<td width=100%>
							<table width=100%  align="center">
								<tr height=20 > 
									<td width="25%" class="cellTablaN">Nivel</td>
									<td align="LEFT">
										<select class="combo_normal" id="cmbNiv" name="cmbNiv" onChange="doEntidad1(this.value)">
											<option value="-1"> -- Seleccione nivel --</option>
									<%
									int z=0;
									String  registro = "";
									
									while(!utils.getValorContexto("LST_NIVEL."+z+".NIV_CVE").equals("")){
										registro=utils.getValorContexto("LST_NIVEL."+z+".NIV_ESTR").trim()+"|"+utils.getValorContexto("LST_NIVEL."+z+".NIV_CVE").trim()+"|"+utils.getValorContexto("LST_NIVEL."+z+".NIV_DES").trim();
									%>
											<option value="<%= registro%>"><%=utils.getValorContexto("LST_NIVEL."+z+".NIV_CVE").trim()%>&nbsp;<%=utils.getValorContexto("LST_NIVEL."+z+".NIV_DES").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								
								<%

								String nivel = utils.getValorContexto("S_NIVEL").trim();
								String aux = nivel.substring(0,1);
								int numero=Integer.parseInt(aux.trim());
								registro="";
								%>
								
								<%if(numero > 1){%> 
								<tr id="est_nv1" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 1</td>
									<td align="LEFT">
										<select class="combo_normal" id="cmbEst_1" name="cmbEst_1" onChange="doEntidadN('1',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_1."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_1."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_1."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_1."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_1."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_1."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 2){%> 
								<tr id="est_nv2" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 2</td>
									<td align="LEFT">
										<select class="combo_normal" id="cmbEst_2" name="cmbEst_2" onChange="doEntidadN('2',this.value)">
											<option value="-1"> -- Seleccione Estructura--</option>
									<%
									z=0;
									while(!utils.getValorContexto("LST_NIVEL_2."+z+".IDENT").equals("")){
										registro="";
										registro=utils.getValorContexto("LST_NIVEL_2."+z+".IDENT").trim()+"|"+utils.getValorContexto("LST_NIVEL_2."+z+".CR").trim()+"|"+utils.getValorContexto("LST_NIVEL_2."+z+".DESC").trim();
									%>
										<option value="<%=registro%>"> <%= utils.getValorContexto("LST_NIVEL_2."+z+".IDENT").trim()%>&nbsp;<%= utils.getValorContexto("LST_NIVEL_2."+z+".DESC").trim()%></option>
									<%z++; }%>
										</select>
									</td>
								</tr>
								<% } %>
								<%if(numero > 3){%> 
								<tr id="est_nv3" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 3</td>
									<td align="LEFT">
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
								<%if(numero > 4){%> 
								<tr id="est_nv4" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 4</td>
									<td align="LEFT">
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
								<%if(numero > 5){%> 
								<tr id="est_nv5" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 5</td>
									<td align="LEFT">
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
								<%if(numero > 6){%> 
								<tr id="est_nv6" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 6</td>
									<td align="LEFT">
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
								<%if(numero > 7){%> 
								<tr id="est_nv7" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 7</td>
									<td align="LEFT">
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
								<%if(numero > 8){%> 
								<tr id="est_nv8" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 8</td>
									<td align="LEFT">
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
								<%if(numero > 9){%> 
								<tr id="est_nv9" height=20 > 
									<td width="25%" class="cellTablaN">Estructura Nivel 9</td>
									<td align="LEFT">
										<select class="combo_normal" id="cmbEst_9" name="cmbEst_9" onChange="doEntidadN('9',this.value)">
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
				</table>
			</td>
		</tr>	
    	<tr>
			<td >
				<table class="subtituloTabla"  width=100%>
					<tr  >
						<td >Datos de la estructura</td>
					</tr>
				</table>
				<table class="panel" width=100% style="table-layout: fixed;">
					<tr>
						<td width=100%>
							<table width=100%  align="center">
								<tr>
									<td width=20%  class="cellTablaN" >Plaza/CR</td>
									<td colspan="3" class="cellTablaN"><input id="plaza_cr" class="requerido" type="text" size="20" value="" maxlength="20" />&nbsp;*</td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Descripci&oacute;n</td>
									<td colspan="3" class="cellTablaN" ><input id="desc_entidad" class="requerido" type="text" size="35" value="" maxlength="30" />&nbsp;*</td>
								</tr>
								<tr>
									<td colspan="4" class="cellTablaN" align="center" >DIRECCION</td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Calle</td>
									<td width=30% ><input id="d_calle" class="enabled" maxlength="30" type="text" size="30" value="" /></td>
									<td width=20%  class="cellTablaN" >Número exterior</td>
									<td width=30% ><input id="d_num_ext" class="enabled" type="text" maxlength="5" size="5" value="" /></td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Colonia</td>
									<td width=30% ><input id="d_col" class="enabled" maxlength="30" type="text" size="30" value="" /></td>
									<td width=20%  class="cellTablaN" >Número interior</td>
									<td width=30% ><input id="d_num_int" class="enabled" type="text" maxlength="5" size="5" value="" /></td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Delegación o Municipio</td>
									<td width=30% ><input id="d_del_mun" class="enabled" maxlength="20" type="text" size="20" value="" /></td>
									<td width=20%  class="cellTablaN" >Código postal</td>
									<td width=30% ><input id="d_codpos" class="enabled" type="text" maxlength="5" size="5" value="" /></td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Ciudad</td>
									<td width=30% ><input id="d_ciudad" class="enabled" maxlength="12" type="text" size="12" value="" /></td>
									<td width=20%  class="cellTablaN" >Entidad federativa</td>
									<td width=30% ><input id="d_entidad" class="enabled" type="text" maxlength="10" size="10" value="" /></td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Teléfono 1</td>
									<td width=30% ><input id="d_tel1" class="enabled" maxlength="10" type="text" size="10" value="" /></td>
									<td width=20%  class="cellTablaN" >Ext. 1</td>
									<td width=30% ><input id="d_ext1" class="enabled" type="text" maxlength="4" size="4" value="" /></td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Teléfono 2</td>
									<td width=30% ><input id="d_tel2" class="enabled" maxlength="10" type="text" size="10" value="" /></td>
									<td width=20%  class="cellTablaN" >Ext. 2</td>
									<td width=30% ><input id="d_ext2" class="enabled" type="text" maxlength="4" size="4" value="" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td >						
				<BR>
				<table border=0  align="center" width=100%>
					<tr align="center">
						<td >
							<input type="button" class="button_little" onClick="jsRegresar(0X2501017);" value="Regresar">
							<input type="button" class="button_little" onClick="validar();" value="Alta">
						</td>
					</tr>
				</table>		
			</td>
		</tr>
	</table>
	</div>
</div>

<script type="text/javascript">

	var selec=document.AUMXVE21000.S_NIVEL.value;
	seleccionarCodigoCombo('cmbNiv',selec,'AUMXVE21000');

	selec="";
    selec=document.AUMXVE21000.S_NIVEL_1.value;
	if(selec!="")
	seleccionarCodigoCombo('cmbEst_1',selec,'AUMXVE21000');	

	selec="";
    selec=document.AUMXVE21000.S_NIVEL_2.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_2',selec,'AUMXVE21000');	
	
    selec="";
    selec=document.AUMXVE21000.S_NIVEL_3.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_3',selec,'AUMXVE21000');	
	
	 selec="";
    selec=document.AUMXVE21000.S_NIVEL_4.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_4',selec,'AUMXVE21000');	
		
	 selec="";
    selec=document.AUMXVE21000.S_NIVEL_5.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_5',selec,'AUMXVE21000');	
	
	 selec="";
    selec=document.AUMXVE21000.S_NIVEL_6.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_6',selec,'AUMXVE21000');	
	
	selec="";
    selec=document.AUMXVE21000.S_NIVEL_7.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_7',selec,'AUMXVE21000');	
	
	 selec="";
    selec=document.AUMXVE21000.S_NIVEL_8.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_8',selec,'AUMXVE21000');	
	
	 selec="";
    selec=document.AUMXVE21000.S_NIVEL_9.value;
	if(selec!="")
		seleccionarCodigoCombo('cmbEst_9',selec,'AUMXVE21000');	
	
	
		if('<%=utils.getValorContexto("ERROR_MDO")%>'!=null  &&  '<%=utils.getValorContexto("ERROR_MDO").trim()%>'!=""){ //DEBE SER AND (&&), mas no OR (||)
			  if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-8")
				   alert('Estimado usuario  su clave de operación es incorrecta');
			   else if('<%=utils.getValorContexto("ERROR_MDO")%>'=="-10")
				   alert('Estimado usuario su clave de operación esta bloqueada');
			   else
				   alert('Estimado usuario ocurrió un error al validar su clave de operación\nPor favor intente más tarde');
	}
	
	if ('<%=utils.getValorContexto("ER_BANDERA").trim()%>'=="1"){
		if('<%=utils.getValorContexto("ER_CODIGO")%>'==null  ||  '<%=utils.getValorContexto("ER_CODIGO").trim()%>'=="")
			   alert('Servicio temporalmente no disponible\nPor favor intente más tarde');
	}



</script>

  <br>
</form>
</customform>
</body>
</html>
