<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript">var dmWorkPath="/aumx_es_web_pub/js/";</script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<!--<script type="text/javascript" src="/aumx_es_web_pub/js/utilEx.js"></script>-->
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10500.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
<script>

/**variables globales*/
	var banderaCliente = '<%=utils.getValorContexto("BAN_CTE").trim()%>';
	
	function subirDatos(){
	
		gebn("h_niveles").value=gebi("niveles").value;
		gebn("h_contact").value=gebi("contact").value;
		gebn("h_calle").value=gebi("calle").value;
		gebn("h_numext").value=gebi("numext").value;
		gebn("h_colonia").value=gebi("colonia").value;
		gebn("h_numint").value=gebi("numint").value;
		gebn("h_delmun").value=gebi("delmun").value;
		gebn("h_codpos").value=gebi("codpos").value;
		gebn("h_ciudad").value=gebi("ciudad").value;
		gebn("h_entidad").value=gebi("entidad").value;
		gebn("h_calleref").value=gebi("calleref").value;
		gebn("h_telef01").value=gebi("telef01").value;
		gebn("h_exttel1").value=gebi("exttel1").value;
		gebn("h_telef02").value=gebi("telef02").value;
		gebn("h_exttel2").value=gebi("exttel2").value;
		gebn("h_email").value=gebi("email").value;
		//gebn("h_cve_oper").value=gebi("cve_oper").value;
		//gebn("h_codacc").value=gebi("codacc").value; 
		//gebn("h_estadoe").value=gebi("estadoe").value;
		gebn("h_refdesc").value=gebi("nombreEmpresa").value;
		//gebn("h_tipadmi").value='<%=utils.getValorContexto("TIPADMI")%>';
		
		if (document.getElementById("tipadmi").checked == true ){
			gebn("h_tipadmi").value="S";
		}else{
			gebn("h_tipadmi").value="N";
		}		
		
		document.AUMXVE10500.evento.value="0x02501000"; //ir al SG00037
		document.AUMXVE10500.submit();
		
		
	}	

</script>

</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE10500" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
  </input>
  
<customhidden><input name="h_niveles" type="hidden" value='<%= utils.getValorContexto("NIVELES") %>' /></customhidden>
<customhidden><input name="h_contact" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
<customhidden><input name="h_calle" type="hidden" value='<%= utils.getValorContexto("CALLE") %>' /></customhidden>
<customhidden><input name="h_numext" type="hidden" value='<%= utils.getValorContexto("NUMEXT") %>' /></customhidden>
<customhidden><input name="h_colonia" type="hidden" value='<%= utils.getValorContexto("COLONIA") %>' /></customhidden>
<customhidden><input name="h_numint" type="hidden" value='<%= utils.getValorContexto("NUMINT") %>' /></customhidden>
<customhidden><input name="h_delmun" type="hidden" value='<%= utils.getValorContexto("DELMUN") %>' /></customhidden>
<customhidden><input name="h_codpos" type="hidden" value='<%= utils.getValorContexto("CODPOS") %>' /></customhidden>
<customhidden><input name="h_ciudad" type="hidden" value='<%= utils.getValorContexto("CIUDAD") %>' /></customhidden>
<customhidden><input name="h_entidad" type="hidden" value='<%= utils.getValorContexto("ENTIDAD") %>' /></customhidden>
<customhidden><input name="h_calleref" type="hidden" value='<%= utils.getValorContexto("CALLEREF") %>' /></customhidden>
<customhidden><input name="h_telef01" type="hidden" value='<%= utils.getValorContexto("TELEF01") %>' /></customhidden>
<customhidden><input name="h_exttel1" type="hidden" value='<%= utils.getValorContexto("EXTTEL1") %>' /></customhidden>
<customhidden><input name="h_telef02" type="hidden" value='<%= utils.getValorContexto("TELEF02") %>' /></customhidden>
<customhidden><input name="h_exttel2" type="hidden" value='<%= utils.getValorContexto("EXTTEL2") %>' /></customhidden>
<customhidden><input name="h_email" type="hidden" value='<%= utils.getValorContexto("EMAIL") %>' /></customhidden>
<customhidden><input name="h_cve_oper" type="hidden" value='<%= utils.getValorContexto("CVE_OPER") %>' /></customhidden>
<customhidden><input name="h_codacc" type="hidden" value='<%= utils.getValorContexto("CODACC") %>' /></customhidden>
<customhidden><input name="h_estadoe" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
<customhidden><input name="h_refdesc" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>

<customhidden><input name="h_tipadmi" id="h_tipadmi" type="hidden" value='<%= utils.getValorContexto("TIPADMI") %>' /></customhidden>
<customhidden><input name="BAN_CTE" type="hidden" value='<%= utils.getValorContexto("BAN_CTE") %>' /></customhidden>

<customhidden><input name="h_tipemp" type="hidden" value='<%= utils.getValorContexto("TIPEMP") %>' /></customhidden>

	<table width="800">
		<tr>
			<td height="34">&nbsp;
			</td>
		</tr>
		<tr>
			<td >
				<table  class="tituloTabla" width="100%">
					<tr>
						<td >MODIFICACION DE REFERENCIA</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td >
				<table class="subtituloTabla"  width="100%">
					<tr>
						<td align="left" >Datos de la empresa</td>
					</tr>
				</table>
				<!-- Actualice table-layout: fixed: -> table-layout: auto -->
				<table class="panel" width="100%" style="table-layout: auto;">
					<tr>
						<td width="100%">
							<table width="100%" >
								<tr>
									<td width="25%" class="cellTablaN" >Referencia</td>
								  <td width="25%"  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN").trim()%>" readonly="readonly"/></td>
									<td width="25%"  class="cellTablaN" >Tipo de estado</td>
									<td width="25%" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")=="A1"?"ACTIVO":"NO ACTIVO"%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td align="left"  width="25%"  class="cellTablaN" >Cliente Bancomer</td>
									<td align="left" colspan="3" class="cellTablaN">Si<input type="radio" name="rb_cli" id="si" value="true" onClick="js_IndCli();"   >	No<input type="radio" name="rb_cli" id="no" value="false" onClick="js_IndCli();" checked>
									</td>
								</tr>
								<tr>
									<td align="left" width=25%  class="cellTablaN" >Número de cliente</td>
									<td align="left" width=25% class="cellTablaN" > <inputfieldtext><span id="NUM_CLIENTE_ER" class='<%=utils.escribeEstiloLabel("NUM_CLIENTE")%>'></span><input id="numCliente"	type="text" name="NUM_CLIENTE" 	value='<%=utils.getValorContexto("NUM_CLIENTE").trim()%>' onKeydown="cambiaBanderaCliente();" requerido="false" size="10" maxlength="8" class="requerido" sentido="N" /><%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
                                        													*
								  </td>
									<td align="left" colspan="2">
										<input type="button" name="BTN_BUSQUEDA" id="BTN_BUSQUEDA" class="button_little" value="Búsqueda" onClick="js_Cliente();" />&nbsp;
									</td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Nombre empresa</td>
									<td  id="tdInputNombreEmpresa"  align="left" colspan="2" class="cellTablaN"><input name="nombreEmpresa" id="nombreEmpresa" type="text" onKeyPress="return valkey(event,'alfa');" size="70" maxlength="60" value="<%=utils.getValorContexto("REFDESC").trim()%>" /></td>
									<td id="tdNombreEmpresa" align="left"></td>
								</tr>
								
								<tr align="left">
									<td align="left" width=25%  class="cellTablaN" >Nombre corto</td>
									<td id="tdInputNombreEmpresa" colspan="3"  align="left"  class="cellTablaN">
										<table>
											<tr>
												<td id="tdNomcto" align="left" colspan="2"  class="cellTablaN">
								                  <inputfieldtext><span id="NOMCTO_ER" class='<%=utils.escribeEstiloLabel("NOMCTO").trim()%>'></span>
												  <input type="text" name="NOMCTO" class="enabled" id="TF_NombreCorto"  value='<%=utils.getValorContexto("NOMCTO").trim()%>' onKeyPress="return valkey(event,'letra');" size="10" maxlength="3"  sentido="N" /><%=getIndicadorRequeridoDerecha(false)%></inputfieldtext>
			                                    </td>
												<td width="15px"></td>
												<td>	
													<label style="color:#61B800;">Capture  el nombre corto si es empresa Aduex,<br />	
													este dato NO PODRA SER MODIFCADO posteriormente </label>
												</td>
											</tr>	
										</table>
									</td>
								</tr>
								<tr>
									<td align="left" width=25%  class="cellTablaN" >Nivel</td>
									<td align="left" colspan="1" class="cellTablaN">
										<input id="niveles" type="text" size="2" maxlength="1" <%= (utils.getValorContexto("TIPEMP").equals("P"))?"class=\"disabled\"value=\"1\"readonly=\"readOnly\"":"class=\"requerido\"value=\"" + utils.getValorContexto("NIVELES").trim() + "\"" %> onKeyPress="return esValidoNum(event)"/>*
									</td>
									<script>nivel_inicial="<%=utils.getValorContexto("NIVELES")%>";</script>
									<td align="left" width=25%  class="cellTablaN" >CR</td>
									<td align="left" colspan="1" class="cellTablaN">
										<inputfieldtext>
											<span id="CR_ER" class='<%=utils.escribeEstiloLabel("CR").trim()%>'></span>
											<input
											type="text" name="CR"
											value='<%=utils.getValorContexto("CR").trim()%>' requerido="false"
											size="6" maxlength="6" class="FondoAbi" sentido="N" /><%=getIndicadorRequeridoDerecha(false)%>
										</inputfieldtext>
									</td>
								</tr>
								<tr>
									<td width="25%" class="cellTablaN">Delegación de administración</td>
								  	<td width="25%" class="cellTablaN"><input id="tipadmi" class="etiqueta2"  type="checkbox" size="2" value="" <%=(utils.getValorContexto("TIPADMI").equals("N"))?"":"Checked"%> />ADMINISTRADOR</td>
									
									
									
									<td width="25%" class="cellTablaN" >Identificador de administrador</td>
									<td width="25%"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ADMINEM").trim()%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td  >
				<table  class="subtituloTabla"  width="100%">
					<tr>
						<td align="left" >Datos del contacto</td>
					</tr>
				</table>
				<table class="panel" width="100%" style="table-layout: fixed;">
					<tr>
						<td width="100%">
							<table width="100%" >
								<tr>
									<td width="25%" class="cellTablaN" >Nombre del contacto</td>
									<td align="left" colspan="3" class="cellTablaN"><input id="contact" class="requerido" type="text" size="35" maxlength="35" value="<%=utils.getValorContexto("CONTACT").trim()%>" onKeyPress="return esValidoText(event)"/>*</td>
								</tr>
								<tr>
									<td align="center" colspan="4" class="cellTablaN" >DIRECCIÓN</td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Calle</td>
									<td width="25%"  ><input id="calle" class="enabled" type="text" size="35" maxlength="35" value="<%=utils.getValorContexto("CALLE").trim()%>" onKeyPress="return esValidoText(event)"/></td>
									<td width="25%" class="cellTablaN" >Número exterior</td>
									<td width="25%" ><input id="numext" class="enabled" type="text" size="5" maxlength="5" value="<%=utils.getValorContexto("NUMEXT").trim()%>" onKeyPress="return esValidoText(event)"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Colonia</td>
									<td width="25%"  ><input id="colonia" class="enabled" type="text" size="35" maxlength="35" value="<%=utils.getValorContexto("COLONIA").trim()%>" onKeyPress="return esValidoText(event)"/></td>
									<td width="25%" class="cellTablaN" >Número interior</td>
									<td width="25%"  ><input id="numint" class="enabled" type="text" size="5" value="<%=utils.getValorContexto("NUMINT").trim()%>" onKeyPress="return esValidoText(event)"/></td>
								</tr>
								<tr>
									<td width="25%" class="cellTablaN" >Delegación o Municipio</td>
									<td width="25%"  ><input id="delmun" class="enabled" type="text" size="35" maxlength="35" value="<%=utils.getValorContexto("DELMUN").trim()%>" onKeyPress="return esValidoText(event)"/></td>
									<td width="25%" class="cellTablaN" >Código postal</td>
									<td width="25%"><input id="codpos" class="enabled" type="text" size="5"  maxlength="5" value="<%=utils.getValorContexto("CODPOS").trim()%>" onKeyPress="return esValidoNum(event)"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Ciudad</td>
									<td width="25%" ><input id="ciudad" class="enabled" type="text" size="15" value="<%=utils.getValorContexto("CIUDAD").trim()%>" onKeyPress="return esValidoText(event)"/></td>
									<td width="25%"  class="cellTablaN" >Entidad federativa</td>
									<td width="25%"  ><input id="entidad" class="enabled" type="text" size="15" value="<%=utils.getValorContexto("ENTIDAD").trim()%>" onKeyPress="return esValidoText(event)"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Calle referencia</td>
									<td colspan="3"  ><input id="calleref" class="enabled" type="text" size="30" value="<%=utils.getValorContexto("CALLEREF").trim()%>" onKeyPress="return esValidoText(event)"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Teléfono 1</td>
									<td width="25%"  ><input id="telef01" class="enabled" type="text" size="10" maxlength="10" value="<%=utils.getValorContexto("TELEF01").trim()%>" onKeyPress="return esValidoNum(event)"/></td>
									<td width="25%"  class="cellTablaN" >Ext 1</td>
									<td width="25%"  ><input id="exttel1" class="enabled" type="text" size="5" maxlength="5" value="<%=utils.getValorContexto("EXTTEL1").trim()%>" onKeyPress="return esValidoNum(event)"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Teléfono 2</td>
									<td width="25%"  ><input id="telef02" class="enabled" type="text" size="10" maxlength="10" value="<%=utils.getValorContexto("TELEF02").trim()%>" onKeyPress="return esValidoNum(event)"/></td>
									<td width="25%" class="cellTablaN" >Ext 2</td>
									<td width="25%"  ><input id="exttel2" class="enabled" type="text" size="5" maxlength="5" value="<%=utils.getValorContexto("EXTTEL2").trim()%>" onKeyPress="return esValidoNum(event)"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >E-mail</td>
									<td colspan="3"  ><input id="email" class="enabled" type="text" size="40" value="<%=utils.getValorContexto("EMAIL").trim()%>" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td>
				<table border=0  align="center" width=100%>
					<tr align="center">
						<td >
							<!--<button class ="button_little" onClick="location.href='Consulta_empresas.html'">Regresar</button>&nbsp;
						    <button class ="button_little" onClick="location.href='Comprobante_Modificacion referencia.html';">Modificación</button>&nbsp;-->
							<input type="button" class="button_little" onClick="jsRegresar(0x2501001);" value="Regresar">
							<input type="button" class="button_little" onClick="modificar();" value="Modificar">
						</td>
					</tr>
				</table>		
			</td>
		</tr>		
	</table>
  <br>

<script type="text/javascript">

window.onload=function(){

var cta_cliente = '<%=utils.getValorContexto("NUM_CLIENTE").trim()%>';
	
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
	
	    
		//esCliente();
		if(cta_cliente!=""){
           banderaCliente=true;   
            document.getElementById("nombreEmpresa").disabled = true;	
            document.getElementById("si").checked = true;
		}
		
        js_IndCli();
				
		if(document.getElementById("TF_NombreCorto").value !=""){
		    document.getElementById("TF_NombreCorto").disabled = true;
			document.getElementById("TF_NombreCorto").readOnly = true;
			document.getElementById("TF_NombreCorto").className = "disabled";		  			
		}else{		
			document.getElementById("TF_NombreCorto").readOnly = false;
			document.getElementById("TF_NombreCorto").disabled = false;
			document.getElementById("TF_NombreCorto").className = "requerido";
			
		}			
}
</script>
</form>


</customform>

</body>
</html>
