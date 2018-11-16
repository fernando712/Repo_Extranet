<!DOCTYPE html>
<html lang="es">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<!-- <meta charset=utf-8> -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Confirmaci&oacute;n Alta de Referencia</title>
	<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
	<script language="javascript" src="/atcl_es_web_pub/js/utils.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
	<script src="/aumx_es_web_pub/js/jquery-3.2.1.min.js"></script>
	<script src="/aumx_es_web_pub/js/html2canvas.min.js"></script>
	<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
	<!-- Font Awesome -->
	<script type="text/javascript" src="/aumx_es_web_pub/js/all.js"></script>
	<!-- Bootstrap core CSS -->
	<link href="/aumx_es_web_pub/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="/aumx_es_web_pub/css/mdb.min.css" rel="stylesheet">
</head> 
<body id="imagen" onload="controlSesion(); <% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes) <%}%>">
<customform> 
	<div class="container-fluid px-5 pt-2 pb-0">
		<header>
			<div class="row">		
				<span class="pt-2">
					<i class="far fa-building fa-2x blue-text"></i>
				</span>
				<h4 class="blue-text pb-1 mx-2 my-2 title-company">- Alta de Referencia Realizada</h4>
			</div>
		</header><!-- /header -->
	</div>
	<div class="container-fluid px-5 pt-0 pb-2">
		<form name="AUMXVE10102" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
			<input type="hidden" name="evento">
		  	<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
		  	<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
		  	<div class="row subtitle-company rounded-top">
				<h3 class="mx-2 my-2" style="color: #094fa5; font-size: 1.125rem;">Datos de la empresa</h3>
			</div>
			<div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-4 md-form p-0 mt-1 mb-0">
        			<p>Nombre Empresa</p>
			    </div>
			    <div class="col-md-8 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("NOM_EMPRESA")%></p>
			    </div>
			    <div class="col-md-4 md-form p-0 m-0">
        			<p>Referencia</p>
			    </div>
			    <div class="col-md-8 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("REFERENCIA")%></p>
			    </div>
			    <div class="col-md-4 md-form p-0 m-0">
        			<p>Niveles de la Empresa</p>
			    </div>
			    <div class="col-md-8 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("NIVEL")%></p>
			    </div>
			    <div class="col-md-4 md-form p-0 m-0">
        			<p>CR</p>
			    </div>
			    <div class="col-md-8 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("CR")%></p>
			    </div>
			     <div class="col-md-4 p-0 m-0">
        			<p>Delegaci&oacute;n de  Administrador</p>
			    </div>
			    <div class="col-md-8 p-0 m-0">
					<%
						String id_adm =  utils.getValorContexto("ID_ADMIN").trim();
					%>
					<input id="del-admin" disabled type="checkbox" id="CHK_INDADM" <%=(id_adm.equals("X"))?"Checked":""%> /> ADMINISTRADOR
			    </div>
            </div>
            <div class="row subtitle-company rounded-top">
				<h3 class="mx-2 my-2" style="color: #094fa5; font-size: 1.125rem;">Datos del Administrador</h3>
			</div>
			<div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-4 md-form p-0 mt-1 mb-0">
        			<p>Identificador de Administrador</p>
			    </div>
			    <div class="col-md-8 md-form p-0 mt-1 mb-0">
			    	<p class="text-muted"><%= utils.getValorContexto("INDADM")%></p>
			    </div>
			    <div class="col-md-4 md-form p-0 m-0">
        			<p>N&uacute;mero de Acceso</p>
			    </div>
			    <div class="col-md-8 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("NUM_ACCESO")%></p>
			    </div>
			    <div class="col-md-4 md-form p-0 m-0">
        			<p>Clave de Acceso</p>
			    </div>
			    <div class="col-md-8 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("CVE_ACCESO")%></p>
			    </div>
            </div>
            <div class="row subtitle-company rounded-top">
				<h3 class="mx-2 my-2" style="color: #094fa5; font-size: 1.125rem;">Datos del Contacto</h3>
			</div>
			<div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-4 md-form p-0 mt-1 mb-0">
        			<p>Nombre del Contacto</p>
			    </div>
			    <div class="col-md-8 md-form p-0 mt-1 mb-0">
			    	<p class="text-muted"><%= utils.getValorContexto("NOM_CONTACTO")%></p>
			    </div>
            </div>
            <div class="row border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-12 p-0 my-0">
    				<h3 class="mx-0 my-2"  style="color: #094fa5; font-size: 1.125rem;">DIRECCI&Oacute;N</h3>
		    	</div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Calle</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("CALLE")%></p>
			    </div>
			     <div class="col-md-3 offset-md-1 md-form p-0 m-0">
        			<p>N&uacute;mero Exterior</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("NUM_EXT")%></p>
			    </div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Colonia</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("COLONIA")%></p>
			    </div>
			     <div class="col-md-3 offset-md-1 md-form p-0 m-0">
        			<p>N&uacute;mero Interior</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("NUM_INT")%></p>
			    </div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Delegaci&oacute;n &oacute; Municipio</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("DEL")%></p>
			    </div>
			     <div class="col-md-3 offset-md-1 md-form p-0 m-0">
        			<p>C&oacute;digo Postal</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("CODPOS")%></p>
			    </div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Ciudad</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("CIUDAD")%></p>
			    </div>
			     <div class="col-md-3 offset-md-1 md-form p-0 m-0">
        			<p>Entidad</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("ENTIDAD")%></p>
			    </div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Calle Referencia</p>
			    </div>
			    <div class="col-md-10 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("CALLE_REF")%></p>
			    </div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Tel&eacute;fono 1</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("TEL1")%></p>
			    </div>
			     <div class="col-md-3 offset-md-1 md-form p-0 m-0">
        			<p>Ext 1</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("EXT1")%></p>
			    </div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Tel&eacute;fono 2</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("TEL2")%></p>
			    </div>
			     <div class="col-md-3 offset-md-1 md-form p-0 m-0">
        			<p>Ext 2</p>
			    </div>
			    <div class="col-md-3 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("EXT2")%></p>
			    </div>
            </div>
            <div class="row mb-0 border border-top-0 border-bottom-0 pl-2">
            	<div class="col-md-2 md-form p-0 m-0">
        			<p>Email</p>
			    </div>
			    <div class="col-md-10 md-form p-0 m-0">
			    	<p class="text-muted"><%= utils.getValorContexto("EMAIL")%></p>
			    </div>
            </div>
            <div class="row subtitle-company rounded-top">
				<h3 class="mx-2 my-1 mb-0" style="color: #094fa5; font-size: 1.125rem;">Aplicaciones Asignadas</h3>
			</div>
			<div class="row mb-0 border border-top-0 pl-2">
				<table class="table table-hover table-sm table-responsive-md">
					<thead>
						<tr>
							<th>Aplicaci&oacute;n</th>
							<th>Perfil</th>
							<th>Propietario</th>
						</tr>
					</thead>
					<tbody>
						<% 
							String aplicacion = "";
							String cod_apli = "";
							String perfil = "";
							String propietario = "";							
							int i = 0;
							while(!utils.getValorContexto("LST_VBCN."+i+".DES_APLI").equals("")){
								aplicacion = utils.getValorContexto("LST_VBCN."+i+".DES_APLI").trim();
								cod_apli =  utils.getValorContexto("LST_VBCN."+i+".COD_APLI").trim();
								perfil = utils.getValorContexto("LST_VBCN."+i+".DES_PER").trim();
								propietario = utils.getValorContexto("TITULAR_APLIC").trim();
								
						%>
						<tr>
							<td><%= aplicacion %></td>
							<td><%= perfil %></td>
							<td>
								<input type="radio" name="RDB_PROPIETARIO1" value="" <%=(cod_apli.equals(propietario))?"checked":""%> disabled>
							</td>
						</tr>
						<%
							i++;
							}
						%>
					</tbody>
				</table>
			</div>
			<div class="row d-flex justify-content-center" data-html2canvas-ignore>
				<div class="form-group">
					<input type="button" class="btn primary-color-dark rounded btn-sm" value="Regresar" onClick="jsRegresar(0X2501017)"/>
					<!-- <input type="button" class="btn primary-color-dark rounded btn-sm" value="Imprimir" onClick="jsImprimirComprobante()"/> -->
					<input id="imprimirComprobante" type="button" class="btn primary-color-dark rounded btn-sm" value="Imprimir"/>
				</div>
			</div>
			
			<script type="text/javascript">
				/*document.getElementById("impresion").style.display = "none"; */
				$('#imprimirComprobante').click(function() {
						html2canvas(document.querySelector("#imagen")).then(canvas => {
					    var canvas = document.body.appendChild(canvas);
					    var dataURL = canvas.toDataURL("image/jpeg", 1.0);
					    window.print(dataURL);
					    $("canvas").remove();
					});
				});
			</script>	
		</form>
	</div>
	
</customform>
</body>
</html>
