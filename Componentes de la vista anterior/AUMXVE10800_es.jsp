<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></SCRIPT>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript">var dmWorkPath="/aumx_es_web_pub/js/";</script>
<script type="text/javascript" src="/aumx_es_web_pub/js/dmenu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10800.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
</head>
<body onLoad="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>" bgcolor="#FFFFFF">
<customform> 
<form name="AUMXVE10800" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
  <input type="hidden" name="evento">
  <input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>"></input>
  <input type="hidden" name="ventana" value="<%=utils.getVentana()%>"></input>

<customhidden><input name="h_apptitu" type="hidden" value='<%= utils.getValorContexto("APPTITU") %>' /></customhidden>
<customhidden><input name="h_contact" type="hidden" value='<%= utils.getValorContexto("CONTACT") %>' /></customhidden>
<customhidden><input name="h_niveles" type="hidden" value='<%= utils.getValorContexto("NIVELES") %>' /></customhidden>
<customhidden><input name="h_estadoe" type="hidden" value='<%= utils.getValorContexto("ESTADOE") %>' /></customhidden>
<customhidden><input name="h_referen" type="hidden" value='<%= utils.getValorContexto("REFEREN") %>' /></customhidden>
<customhidden><input name="h_refdesc" type="hidden" value='<%= utils.getValorContexto("REFDESC") %>' /></customhidden>
<customhidden><input name="h_indadm" type="hidden" value='<%= utils.getValorContexto("INDADM") %>' /></customhidden>
<customhidden><input name="h_cve_oper" type="hidden" value='<%= utils.getValorContexto("CVE_OPER") %>' /></customhidden>
<customhidden><input name="h_lst_aniv" type="hidden" value='<%= utils.getValorContexto("LST_ANIV") %>' /></customhidden>

	<div class="divPrincipal">
	<table width="750px">
		<tr>
			<td height="34" ></td>
		</tr>
		<tr>
			<td>
				<table class="tituloTabla" width=100%>
					<tr>
						<td>MODIFICACION DE NIVELES</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table class="subtituloTabla"  width=100%>
					<tr>
						<td>Datos de la empresa</td>
					</tr>
				</table>
				<table class="panel" width=100% style="table-layout: fixed;">
					<tr>
						<td width="100%">
							<table width="100%">
								<tr>
									<td width="20%"  class="cellTablaN" >Referencia</td>
									<td width="33%" align="left"><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("REFEREN")%>" readonly="readonly"/></td>
									<td width=14%  class="cellTablaN" >Tipo de estado</td>
								  <td width=33%  ><input class="disabled" type="text" size="10" value="<%=utils.getValorContexto("ESTADOE")=="A1"?"ACTIVO":"NO ACTIVO"%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Nombre empresa</td>
									<td  colspan="3" align="left" ><input class="disabled" type="text" size="60" value="<%=utils.getValorContexto("REFDESC")%>" readonly="readonly"/></td>
								</tr>
								<tr>
									<td width=20%  class="cellTablaN" >Nombre del contacto</td>
									<td   ><input class="disabled" type="text" size="40" value="<%=utils.getValorContexto("CONTACT")%>" readonly="readonly"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td >
				<table  width=100% cellspacing="0">
					<tr height=24 >
						<td  class="subtituloTabla" colspan="4" >Capturar niveles</td>
					</tr>
					<tr>
						<td width=25%  class="subtituloTabla" align="center"  >Nivel</td>
						<td width=25%  class="subtituloTabla" align="center">Clave</td>
						<td width=50%  class="subtituloTabla" align="center">Descripción</td>
					</tr>
					<%
						int w=0;
						int lim=0;
					try{
						
						String campo="";
						String dato = "";
						String cant_niv=utils.getValorContexto("AUX1"); //aqui vendra el numero de niveles TOTALES
						
						if(cant_niv!=""){					
							lim=Integer.parseInt(cant_niv);
						}
					
				  	while (!utils.getValorContexto("LST_NIVEL."+w+".NVNUME").trim().equals("")){
					%>
						
					<tr height=20 align="middle" class="<%=(w%2 == 0)?"renglonImpar":"renglonPar"%>"> 
						<td align="center" class="cellTablaN tablasDinamicas" ><%=utils.getValorContexto("LST_NIVEL."+w+".NVNUME")%></td>
						<td id="clave_<%=w%>" name="claves" align="center" class="cellTabla tablasDinamicas" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVCLAVE")%>" ><%=utils.getValorContexto("LST_NIVEL."+w+".NVCLAVE")%>
						</td>
						<td align="center" class="cellTablaN tablasDinamicasFin" >
						<input id="desc_<%=w%>" name="descrips" class="requerido" maxlength="30" type="text" size="35" value="<%=utils.getValorContexto("LST_NIVEL."+w+".NVDESCR").trim()%>" />
						*</td>
					</tr>
					<%
						w++;
					}//fin while 
					
					
					for(int x=w;x<lim;x++){
					
						if(x == 0){
							campo = "requerido";
							dato = "*";
						}else{
							campo = "enabled";
							dato = "";
						}
					%>
					
					<tr height="20px" align="middle" class="<%=(x%2 == 0)?"renglonImpar":"renglonPar"%>"> 
						<td align="center" class="cellTablaN tablasDinamicas" > <%=x+1%>
						</td>
						<td align="center" class="cellTablaN tablasDinamicas" ><input id="clave_<%=x%>" name="claves" class="<%=campo%>" maxlength="4" type="text" size="5" value="" /><%=dato%></td>
						<td align="center" class="cellTablaN tablasDinamicasFin" >
							<input id="desc_<%=x%>" name="descrips" class="<%=campo%>" maxlength="30" type="text" size="35" value="" /><%=dato%>
						</td>
					</tr>
					<%
						}					
					}catch(Exception e){
					out.print(e);
					}%>
				</table>
			</td>
		</tr>
		<tr>
			<td >
				<BR>
				<table border=0  align="center" width=100%>
					<tr align="center">
						<td >
					<input type="button" class="button_little" onClick="jsRegresar(0X2501001);" value="Regresar">
					<input type="button" class="button_little" onClick="validar();" value="Modificar">
						</td>
					</tr>
				</table>		
			</td>
		</tr>
	</table>
	</div>
<script type="text/javascript">
//validar fin error y recuperar datos:
nivAE="<%=utils.getValorContexto("NIVELES")%>";
total=<%=lim%>;
llenos=<%=w%>;

if(nivAE.indexOf("|")>=0){ //si SI hay pipe, quiere decir que vengo del fin error (porque ya no vale un solo numero) y tomo esos valores.
	recuperar(nivAE);
}

window.onload=function(){
	
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

}
</script>
</form>
</customform>
</body>
</html>
<%/*XMLVENTANA=<N C="atae.thin.apli.AtaeSvFlujoInterno"><Canal T="S">WEB</Canal><ContextoEntradaVentana A="S"><I T="S">ADMINEM</I><I T="S">APPTITU</I><I T="S">AUX1</I><I T="S">AUX2</I><I T="S">AUX3</I><I T="S">CI_NIV_USU</I><I T="S">CI_NOM_USU</I><I T="S">CI_NUM_ACC</I><I T="S">CI_NUMREF</I><I T="S">CI_USUARIO</I><I T="S">COD_AVER</I><I T="S">CONTACT</I><I T="S">CVE_OPER</I><I T="S">DES_AVER</I><I T="S">EMAIL</I><I T="S">ER_BANDERA</I><I T="S">ER_CODIGO</I><I T="S">ERROR_MDO</I><I T="S">ESTADOE</I><I T="S">INDADM</I><I T="S">LST_ANIV</I><I T="S">LST_NIVEL</I><I T="S">NIVELES</I><I T="S">REFDESC</I><I T="S">REFEREN</I><I T="S">TITULAR</I></ContextoEntradaVentana><Controles A="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">INDADM</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_indadm</I></I></ArrayRestoPropiedades><Contexto T="S">INDADM</Contexto><Nombre T="S">h_indadm</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">CVE_OPER</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_cve_oper</I></I></ArrayRestoPropiedades><Contexto T="S">CVE_OPER</Contexto><Nombre T="S">h_cve_oper</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">ESTADOE</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_estadoe</I></I></ArrayRestoPropiedades><Contexto T="S">ESTADOE</Contexto><Nombre T="S">h_estadoe</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">APPTITU</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_apptitu</I></I></ArrayRestoPropiedades><Contexto T="S">APPTITU</Contexto><Nombre T="S">h_apptitu</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">LST_ANIV</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_lst_aniv</I></I></ArrayRestoPropiedades><Contexto T="S">LST_ANIV</Contexto><Nombre T="S">h_lst_aniv</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">REFEREN</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_referen</I></I></ArrayRestoPropiedades><Contexto T="S">REFEREN</Contexto><Nombre T="S">h_referen</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">NIVELES</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_niveles</I></I></ArrayRestoPropiedades><Contexto T="S">NIVELES</Contexto><Nombre T="S">h_niveles</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">REFDESC</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_refdesc</I></I></ArrayRestoPropiedades><Contexto T="S">REFDESC</Contexto><Nombre T="S">h_refdesc</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">contexto</I><I T="S">CONTACT</I></I><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR071B0000</I></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">h_contact</I></I></ArrayRestoPropiedades><Contexto T="S">CONTACT</Contexto><Nombre T="S">h_contact</Nombre></I><I C="atae.thin.pres.AtaeSvPropiedadesControlFlujoInterno"><ArrayRestoPropiedades A="[Ljava.lang.String;"><I A="Ljava.lang.String"><I T="S">codigoControl</I><I T="S">ATAECR07010000</I></I><I A="Ljava.lang.String"><I T="S">ficherosIncluidos</I><I T="S"/></I><I A="Ljava.lang.String"><I T="S">titulo</I><I T="S"/></I><I A="Ljava.lang.String"><I T="S">nombre</I><I T="S">AUMXVE10800</I></I><I A="Ljava.lang.String"><I T="S">flujoMulticanal</I><I T="S"/></I></ArrayRestoPropiedades><Nombre T="S">AUMXVE10800</Nombre></I></Controles><NombreVentana T="S">AUMXVE10800</NombreVentana><PasosFlujo A="atae.thin.flujo.AtaeSvPasoMulticanal"/></N>
*/%>