<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comprobante Alta Estructura</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript">var dmWorkPath="/aumx_es_web_pub/js/";</script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilBP.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<!--<script type="text/javascript" src="/aumx_es_web_pub/js/utilEx.js"></script>-->
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE21001" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
  <br>

	<div class="divPrincipal">
	<div id="principal" style="overflow:scroll; height:550px; width:100%">
	<table width="750px">
		<tr>
			<td height="34">&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table class="tituloTabla" width="100%">
					<tr>
						<td>ALTA DE ESTRUCTURA REALIZADA</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td>
				<table class="subtituloTabla"  width="100%">
					<tr>
						<td>Datos de origen</td>
					</tr>
				</table>
				<table class="panel" width="100%" style="table-layout: fixed;">
					<tr>
						<td width="100%">
							<table width="100%">
								<tr>
									<td width="25%"  class="cellTablaN" >Referencia</td>
									<td colspan="3" ><input class="disabled" type="text" size="12" value="<%=utils.getValorContexto("SEL_CVE_EMP")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=25%  class="cellTablaN" >Nombre empresa</td>
									<td colspan="3" ><input class="disabled" type="text" size="50" value="<%=utils.getValorContexto("SEL_NOM_EMP")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=25%  class="cellTablaN" >Entidad origen</td>
									<%
									String s_ent_id = utils.getValorContexto("S_ENT_ID").trim();
									String ent_id ="";
									String ent_des ="";
										if(s_ent_id.length() > 4){
											ent_id = s_ent_id.substring(0,5);
										}else
											ent_id="00000";
										if(s_ent_id.length() > 12){
											ent_des = s_ent_id.substring(11);
										}
									%>
									<td width=20% ><input class="disabled" type="text" size="6" value="<%=ent_id%>" readonly="readonly"/></td>
									<td width=25%  class="cellTablaN" >Descripción de entidad</td>
									<td width=30% ><input class="disabled" type="text" size="35" value="<%=ent_des%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table class="subtituloTabla"  width="100%">
					<tr>
						<td>Datos de la estructura</td>
					</tr>
				</table>
				<table class="panel" width="100%" style="table-layout: fixed;">
					<tr>
						<td width="100%">
							<table width="100%">
								<tr>
									<td width="25%"  class="cellTablaN" >Nivel</td>
									<td width="30%"><input class="disabled" type="text" size="2" value="<%=utils.getValorContexto("S_NIVEL").substring(0,1)%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Descripción del nivel</td>
									<td width=25% ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("S_DES_NIV")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Plaza/CR</td>
									<td colspan="3" ><input class="disabled" type="text" size="20" value="<%=utils.getValorContexto("PLAZA_CR")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%" class="cellTablaN" >Descripci&oacute;n</td>
									<td colspan="3" ><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("DESC_ENTIDAD")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td colspan="4" class="cellTablaN" >DIRECCION</td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Calle</td>
									<td width="30%"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("D_CALLE")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Número exterior</td>
									<td width="25%" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_NUM_EXT")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Colonia</td>
									<td width="30%"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("D_COL")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Número interior</td>
									<td width="25%"><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_NUM_INT")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Delegación o Municipio</td>
									<td width="30%"><input class="disabled" type="text" size="35" value="<%=utils.getValorContexto("D_DEL_MUN")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Código postal</td>
									<td width="25%" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_CODPOS")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Ciudad</td>
									<td width="30%" ><input class="disabled" type="text" size="20" value="<%=utils.getValorContexto("D_CIUDAD")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Entidad federativa</td>
									<td width="25%" ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("D_ENTIDAD")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Teléfono 1</td>
									<td width="30%" ><input class="disabled" type="text" size="12" value="<%=utils.getValorContexto("D_TEL1")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Ext 1</td>
									<td width="25%" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_EXT1")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Teléfono 2</td>
									<td width="30%" ><input class="disabled" type="text" size="12" value="<%=utils.getValorContexto("D_TEL2")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Ext 2</td>
									<td width="25%" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_EXT2")%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table align="center" width=100%>
					<tr align="center">
						<td >
							<input type="button" class="button_little" value="Regresar" onClick="jsRegresar(0x2501001)" />&nbsp;
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
			<td height="34">&nbsp;
			</td>
		</tr>
		<tr>
			<td class="tituloTabla">
				<table>
					<tr>
						<td class="tituloTabla">ALTA DE ESTRUCTURA REALIZADA</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td class="subtituloTabla">
				<table>
					<tr>
						<td  class="subtituloTabla">Datos de origen</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>	
			<td>
				<table class="panel" width="100%" style="table-layout: fixed;">
					<tr>
						<td width="100%">
							<table width="100%">
								<tr>
									<td width="25%"  class="cellTablaN" >Referencia</td>
									<td colspan="3" ><input class="disabled" type="text" size="12" value="<%=utils.getValorContexto("SEL_CVE_EMP")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Nombre empresa</td>
									<td colspan="3" ><input class="disabled" type="text" size="50" value="<%=utils.getValorContexto("SEL_NOM_EMP")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=25%  class="cellTablaN" >Entidad origen</td>
									<td width=20% ><input class="disabled" type="text" size="6" value="<%=ent_id%>" readonly="readonly"/></td>
									<td width=25%  class="cellTablaN" >Descripción de entidad</td>
									<td width=30% ><input class="disabled" type="text" size="35" value="<%=ent_des%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
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
				<table class="panel" width="100%" style="table-layout: fixed;">
					<tr>
						<td width="100%">
							<table width="100%">
								<tr>
									<td width="25%" class="cellTablaN" >Nivel</td>
									<td width="30%"><input class="disabled" type="text" size="2" value="<%=utils.getValorContexto("S_NIVEL").substring(0,1)%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Descripción del nivel</td>
									<td width="25%"><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("S_DES_NIV")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%" class="cellTablaN" >Plaza/CR</td>
									<td colspan="3" ><input class="disabled" type="text" size="20" value="<%=utils.getValorContexto("PLAZA_CR")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Descripci&oacute;n</td>
									<td colspan="3" ><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("DESC_ENTIDAD")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td colspan="4" class="cellTablaN" >DIRECCION</td>
								</tr>
								<tr>
									<td width="25%" class="cellTablaN" >Calle</td>
									<td width="30%"><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("D_CALLE")%>" readonly="readonly"/></td>
									<td width="20%" class="cellTablaN" >Número exterior</td>
									<td width="25%"><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_NUM_EXT")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%" class="cellTablaN" >Colonia</td>
									<td width="30%"><input class="disabled" type="text" size="20" value="<%=utils.getValorContexto("D_COL")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Número interior</td>
									<td width="25%"><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_NUM_INT")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Delegación o Municipio</td>
									<td width="30%"><input class="disabled" type="text" size="30" value="<%=utils.getValorContexto("D_DEL_MUN")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Código postal</td>
									<td width="25%"><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_CODPOS")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%" class="cellTablaN" >Ciudad</td>
									<td width="30%"><input class="disabled" type="text" size="12" value="<%=utils.getValorContexto("D_CIUDAD")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Entidad federativa</td>
									<td width="25%"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("D_ENTIDAD")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Teléfono 1</td>
									<td width="30%" ><input class="disabled" type="text" size="12" value="<%=utils.getValorContexto("D_TEL1")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Ext 1</td>
									<td width="25%" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_EXT1")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width="25%"  class="cellTablaN" >Teléfono 2</td>
									<td width="30%" ><input class="disabled" type="text" size="12" value="<%=utils.getValorContexto("D_TEL2")%>" readonly="readonly"/></td>
									<td width="20%"  class="cellTablaN" >Ext 2</td>
									<td width="25%" ><input class="disabled" type="text" size="5" value="<%=utils.getValorContexto("D_EXT2")%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td  align=center>
				
			</td>
		</tr>	
	</table>
	 </div>
	 </div>
	 </div>
	<script type="text/javascript">
        document.getElementById('impresion').style.display = "none"; 
    </script>  <br>
</form>
</customform>
</body>
</html>
<%/*XMLVENTANA=<N C="atae.thin.apli.AtaeSvFlujoInterno"><Canal T="S">WEB</Canal><ContextoEntradaVentana A="S"><I T="S">AUX3</I><I T="S">CI_NIV_USU</I><I T="S">AUX1</I><I T="S">AUX2</I><I T="S">D_DEL_MUN</I><I T="S">D_ENTIDAD</I><I T="S">CI_NOM_USU</I><I T="S">CI_NUM_ACC</I><I T="S">CI_NUMREF</I><I T="S">CI_USUARIO</I><I T="S">COD_AVER</I><I T="S">CVE_OPER</I><I T="S">D_CALLE</I><I T="S">D_CIUDAD</I><I T="S">D_CODPOS</I><I T="S">D_COL</I><I T="S">D_EXT1</I><I T="S">D_EXT2</I><I T="S">D_NUM_EXT</I><I T="S">D_NUM_INT</I><I T="S">D_TEL1</I><I T="S">D_TEL2</I><I T="S">DES_AVER</I><I T="S">DESC_ENTIDAD</I><I T="S">ER_BANDERA</I><I T="S">ER_CODIGO</I><I T="S">ERROR_MDO</I><I T="S">LST_EMPRESA</I><I T="S">LST_ENTIDAD</I><I T="S">LST_NIVEL</I><I T="S">NIVEL</I><I T="S">PLAZA_CR</I><I T="S">REMITENTE</I><I T="S">S_DES_NIV</I><I T="S">S_DESC</I><I T="S">S_ENT_COD</I><I T="S">S_ENT_CR</I><I T="S">S_ENT_DESC</I><I T="S">S_ENT_ID</I><I T="S">S_ENTIDAD</I><I T="S">S_NIVEL</I><I T="S">S_NOM_EMPRESA</I><I T="S">S_NUMREF</I><I T="S">SEL_CVE_EMP</I><I T="S">SEL_NIVEL</I><I T="S">SEL_NOM_EMP</I><I T="S">CI_NOM_REF</I></ContextoEntradaVentana><Controles A="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR07010000</I></I><I A="Ljava.lang.String"><I T="S">ficherosIncluidos</I><I T="S"/></I><I A="Ljava.lang.String"><I T="S">titulo</I><I T="S">Comprobante Alta Estructura</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">AUMXVE21001</I></I><I A="Ljava.lang.String"><I T="S">flujoMulticanal</I><I T="S"/></I></ArrayRestoPropiedades><Nombre T="S">AUMXVE21001</Nombre></I></Controles><NombreVentana T="S">AUMXVE21001</NombreVentana><PasosFlujo A="atae.thin.flujo.AtaeSvPasoMulticanal"/></N>
*/%>