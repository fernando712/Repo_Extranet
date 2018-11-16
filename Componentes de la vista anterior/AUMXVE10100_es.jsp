	
  <!-- 
  - Autor(s):Cruz Rodríguez Renato
  - Fecha:24/11/2010
  - Descripción:JSP Alta de Referencia -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- <meta charset=utf-8> -->
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Alta de Referencia</title>
<%@ include file="/atcl_mult_mult_jsp/ajax.jsp"%>
<script type="text/javascript" src="/atcl_es_web_pub/js/ajax.js"></script>
<script type="text/javascript" src="/atcl_es_web_pub/js/utils.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/menu.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
<script type="text/javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10100.js"></script>
<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
<!-- Font Awesome -->
<script type="text/javascript" src="/aumx_es_web_pub/js/all.js"></script>
<!-- Bootstrap core CSS -->
<link href="/aumx_es_web_pub/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="/aumx_es_web_pub/css/mdb.min.css" rel="stylesheet">
</head>

<body onload="controlSesion(); <% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes); <%}%>">
	<customform>
	<div class="container">
		<header>
			<div class="row">
				<span class="pt-2">
					<i class="far fa-building fa-2x blue-text"></i>
				</span>
				<h4 class="blue-text pb-1 mx-2 my-2 title-company">- Alta de Empresa</h4>
			</div>
		</header><!-- /header -->
	</div>
	
	<div class="container">
		<form name="AUMXVE10100" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
			<input type="hidden" name="evento"> 
			<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
			<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
			<customhidden><input name="IND_CLI" type="hidden" value='<%= utils.getValorContexto("IND_CLI") %>' /></customhidden>
			<customhidden><input name="S_APLIC" type="hidden" value='<%= utils.getValorContexto("S_APLIC") %>' /></customhidden>
			<customhidden><input name="TITULAR_APLIC" type="hidden" value='<%= utils.getValorContexto("TITULAR_APLIC") %>' /></customhidden>
			<customhidden><input name="BAN_NIV" type="hidden" value='<%= utils.getValorContexto("BAN_NIV") %>' /></customhidden>
			<customhidden><input name="ID_ADMIN" type="hidden" value='<%= utils.getValorContexto("ID_ADMIN") %>' /></customhidden>
			<customhidden><input name="hd_Idparam" type="hidden" value='<%= utils.getValorContexto("IDPARAM") %>' /></customhidden>
			<customhidden><input name="hd_tipacce" type="hidden" value='<%= utils.getValorContexto("TIPACCE") %>' /></customhidden>
			<customhidden><input name="filaIdparam" type="hidden" value='<%= utils.getValorContexto("FILAIDPARAM") %>' /></customhidden>

			<div class="row subtitle-company">
				<h3 class="mx-2 my-2">Datos de la empresa</h3>
			</div>
			<div class="row form-group mb-4 mt-4">
				<label class="mr-2">Cliente Bancomer </label>
                <label class="custom-control custom-radio">
				  <input class="custom-control-input" id="si" type="radio" name="rb_cli" value="" onclick="js_IndCli('S')" checked>
				  <span class="custom-control-indicator"></span>
				  <span class="custom-control-description">Si</span>
				</label>
				<label class="custom-control custom-radio">
				  <input class="custom-control-input" id="no" type="radio" name="rb_cli" value="" onclick="js_IndCli('N')">
				  <span class="custom-control-indicator"></span>
				  <span class="custom-control-description">No</span>
				</label>
            </div>
			<div class="row">
            	<div class="col-md-6 md-form p-0 m-0">
            		<inputfieldtext>
            			<span id="NUM_CLIENTE_ER" class='<%=utils.escribeEstiloLabel("NUM_CLIENTE")%>'></span>
				        <input type="text" placeholder="Número de cliente" id="noCliente" name="NUM_CLIENTE" value='<%=utils.getValorContexto("NUM_CLIENTE")%>' requerido="false" size="10" maxlength="8" required sentido="N">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>	
			    </div>
			    <div class="col-md-6 md-form d-flex align-items-center justify-content-center m-0">
			    	<!-- Se removio la clase Class="button_little" -->
			    	<input id="BTN_BUSQUEDA" type="button" name="BTN_BUSQUEDA" class="btn primary-color-dark rounded btn-sm" value="Búsqueda" onclick="js_Cliente();"/>
			    </div>
            </div>
            <div class="row">
            	<div class="col-md-12 md-form p-0">
            		<inputfieldtext>
            			<span id="NOM_EMPRESA_ER" class='<%=utils.escribeEstiloLabel("NOM_EMPRESA")%>'></span>
				        <input type="text" placeholder="Nombre Empresa" id="nombreEmpresa" name="NOM_EMPRESA" value='<%=utils.getValorContexto("NOM_EMPRESA")%>' requerido="false" size="70" maxlength="60" disabled sentido="N">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row">
            	<div class="col-sm-12 col-md-12 col-lg-5 md-form p-0">
            		<inputfieldtext>
            			<span id="NOMCTO_ER" class='<%=utils.escribeEstiloLabel("NOMCTO").trim()%>'></span>
				        <input type="text" placeholder="Nombre Corto" name="NOMCTO" id="TF_NombreCorto" value='<%=utils.getValorContexto("NOMCTO").trim()%>' onKeyPress="return valkey(event,'letra');"
							requerido="false" size="3" maxlength="3" sentido="N">
						<%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
			    <div class="col-sm-12 col-md-12 col-lg-6 offset-1 md-form d-flex align-items-center justify-content-center flex-sm-row">
			    	<mark class="text-success font-weight-bold bg-white">Capture el nombre corto si es empresa Aduex, este dato NO PODRA SER MODIFCADO posteriormente</mark>
			    </div>
            </div>
             <div class="row">
            	<div class="col-5 md-form p-0">
            		<inputfieldtext>
            			<span id="NIVEL_ER" class='<%=utils.escribeEstiloLabel("NIVEL")%>'></span>
				        <input type="text" placeholder="Nivel" name="NIVEL" value='<%=utils.getValorContexto("NIVEL")%>' requerido="false" size="2" maxlength="1" sentido="N" onKeyPress="return SoloNumerosNivel(event);">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>	
			    <div class="col-6 offset-1 md-form p-0">
            		<inputfieldtext>
            			<span id="CR_ER" class='<%=utils.escribeEstiloLabel("CR")%>'></span>
				        <input type="text" placeholder="CR" name="CR" value='<%=utils.getValorContexto("CR")%>' requerido="false" size="5" maxlength="6" sentido="N">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-6 p-0 d-flex align-items-center">	
                	<div class="form-group">
                		<label class="mr-2">Delegación de administración</label>
            			<label class="custom-control custom-radio">
						  <input class="custom-control-input" type="checkbox" name="CHK_ADMIN" size="2" value="" onclick="js_SelIdAdm()">
						  <span class="custom-control-indicator"></span>
						  <span class="custom-control-description">Administrador</span>
						</label>
					</div>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-6 md-form p-0 mb-0">
					<inputfieldtext>
						<span id="INDADM_ER" class='<%=utils.escribeEstiloLabel("INDADM")%>'></span>
						<input type="text" placeholder="Identificador de administrador" name="INDADM" value='<%=utils.getValorContexto("INDADM")%>' requerido="false" size="8" maxlength="8" required sentido="N" onKeyPress="return jsVerificaAlfabetico(event);"/>
						<%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
			<div class="row subtitle-company mt-1">
				<h3 class="mx-2 my-2">Datos del contacto</h3>
			</div>
            <div class="row mb-0">
            	<div class="col-sm-12 col-md-12 md-form p-0 my-3">
            		<inputfieldtext>
            			<span id="NOM_CONTACTO_ER" class='<%=utils.escribeEstiloLabel("NOM_CONTACTO")%>'></span>
				        <input type="text" placeholder="Nombre del contacto" name="NOM_CONTACTO" value='<%=utils.getValorContexto("NOM_CONTACTO")%>' requerido="false" size="30" maxlength="30" required sentido="N" onKeyPress="return jsVerificaAlfabetico(event);" >
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row">
            	<div class="p-2 col-11 text-center d-flex justify-content-center">
            		<h5 class="blue-text rounded font-weight-bold">Dirección</h5>
            	</div>	
            </div>
            <div class="row mb-0">
            	<div class="col-md-5 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="CALLE_ER" class='<%=utils.escribeEstiloLabel("CALLE")%>'></span>
				        <input type="text" placeholder="Calle" name="CALLE" value='<%=utils.getValorContexto("CALLE")%>' requerido="false" size="30" maxlength="30" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
			    <div class="col-md-6 offset-md-1 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="NUM_EXT_ER" class='<%=utils.escribeEstiloLabel("NUM_EXT")%>'></span>
				        <input type="text" placeholder="Número Exterior" name="NUM_EXT" value='<%=utils.getValorContexto("NUM_EXT")%>' requerido="false" size="5" maxlength="5" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row mb-0">
            	<div class="col-md-5 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="COLONIA_ER" class='<%=utils.escribeEstiloLabel("COLONIA")%>'></span>
				        <input type="text" placeholder="Colonia" name="COLONIA" value='<%=utils.getValorContexto("COLONIA")%>' requerido="false" size="30" maxlength="30" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
			    <div class="col-md-6 offset-md-1 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="NUM_INT_ER" class='<%=utils.escribeEstiloLabel("NUM_INT")%>'></span>
				        <input type="text" placeholder="Número Interior" name="NUM_INT" value='<%=utils.getValorContexto("NUM_INT")%>' requerido="false" size="5" maxlength="5" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row mb-0">
            	<div class="col-md-5 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="DEL_ER" class='<%=utils.escribeEstiloLabel("DEL")%>'></span>
				        <input type="text" placeholder="Delegación o Municipio" name="DEL" value='<%=utils.getValorContexto("DEL")%>' requerido="false" size="20" maxlength="20" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
			    <div class="col-md-6 offset-md-1 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="CODPOS_ER" class='<%=utils.escribeEstiloLabel("CODPOS")%>'></span>
				        <input type="text" placeholder="Código postal" name="CODPOS" value='<%=utils.getValorContexto("CODPOS")%>' requerido="false" size="5" maxlength="5" sentido="N" onKeyPress="return SoloNumeros(event);">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row mb-0">
            	<div class="col-md-5 md-form p-0 mb-1">
            		<inputfieldtext>
            			<span id="CIUDAD_ER" class='<%=utils.escribeEstiloLabel("CIUDAD")%>'></span>
				        <input type="text" placeholder="Ciudad"  name="CIUDAD" value='<%=utils.getValorContexto("CIUDAD")%>' requerido="false" size="12" maxlength="12" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);"/>
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
			    <div class="col-md-6 offset-md-1 md-form p-0 mb-1">
            		<inputfieldtext>
            			<span id="ENTIDAD_ER" class='<%=utils.escribeEstiloLabel("ENTIDAD")%>'></span>
				        <input type="text" placeholder="Entidad" name="ENTIDAD" value='<%=utils.getValorContexto("ENTIDAD")%>' requerido="false" size="10" maxlength="10" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);"/>
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row mb-0">
            	<div class="col-md-12 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="CALLE_REF_ER" class='<%=utils.escribeEstiloLabel("CALLE_REF")%>'></span>
				        <input type="text" placeholder="Calle referencia" name="CALLE_REF" value='<%=utils.getValorContexto("CALLE_REF")%>' requerido="false" size="60" maxlength="59" sentido="N" onKeyPress="return jsVerificaAlfabetico(event);"/>
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row mb-0">
            	<div class="col-md-5 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="TEL1_ER" class='<%=utils.escribeEstiloLabel("TEL1")%>'></span>
				        <input type="text" placeholder="Teléfono 1" name="TEL1" value='<%=utils.getValorContexto("TEL1")%>' requerido="false" size="10" maxlength="10" sentido="N" onKeyPress="return SoloNumeros(event);"/>
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
			    <div class="col-md-6 offset-md-1 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="EXT1_ER" class='<%=utils.escribeEstiloLabel("EXT1")%>'></span>
				        <input type="text" placeholder="Ext. 1" name="EXT1" value='<%=utils.getValorContexto("EXT1")%>' requerido="false" size="4" maxlength="4" sentido="N" onKeyPress="return SoloNumeros(event);"/>
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row mb-0">
            	<div class="col-md-5 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="TEL2_ER" class='<%=utils.escribeEstiloLabel("TEL2")%>'></span>
				        <input type="text" placeholder="Teléfono 2" name="TEL2" value='<%=utils.getValorContexto("TEL2")%>' requerido="false" size="10" maxlength="10" sentido="N" onKeyPress="return SoloNumeros(event);"/>
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
			    <div class="col-md-6 offset-md-1 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="EXT2_ER" class='<%=utils.escribeEstiloLabel("EXT2")%>'></span>
				        <input type="text" placeholder="Ext. 2" name="EXT2" value='<%=utils.getValorContexto("EXT2")%>' requerido="false" size="4" maxlength="4" sentido="N" onKeyPress="return SoloNumeros(event);"/>
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row mb-0">
            	<div class="col-md-5 md-form p-0 my-2">
            		<inputfieldtext>
            			<span id="EMAIL_ER" class='<%=utils.escribeEstiloLabel("EMAIL")%>'></span>
				        <input type="email" placeholder="Email" name="EMAIL" value='<%=utils.getValorContexto("EMAIL")%>' requerido="false" size="30" maxlength="30" sentido="N">
				        <%=getIndicadorRequeridoDerecha(false)%>
			    	</inputfieldtext>
			    </div>
            </div>
            <div class="row subtitle-company mt-1">
				<h3 class="mx-2 my-2">Tipo de acceso de la aplicación</h3>
				<input type="hidden" name="AccesoTabla" id="AccesoTabla"/>
			</div>
			<div class="row mb-0">
				<table class="table table-hover table-sm table-responsive-md">
					<tbody>
					    <tr>
					      <td scope="row" class="border-shadow border-right-0 border-bottom-0 p-2 d-flex justify-content-center">
					      	<label class="custom-control custom-radio">
							  <input class="custom-control-input" type="radio" size="2" name="TIPOACCESO" value="" checked onclick="captTipAcc('P');"/>
							  <span class="custom-control-indicator"></span>
							</label>
					      </td>
					      <td colspan="3" class="border-shadow border-bottom-0 text-center p-2">Público</td>
					    </tr>
					    <tr>
					      <td scope="row" class="border-shadow p-2 border-right-0 d-flex justify-content-center">
					      	<label class="custom-control custom-radio">
							  <input class="custom-control-input" type="radio" size="2" name="TIPOACCESO" value="" onclick="captTipAcc('D');"/>
							  <span class="custom-control-indicator"></span>
							</label>
					      </td>
					      <td colspan="3" class="border-shadow text-center p-2">Dedicado</td>
					    </tr>
					</tbody>
				</table>
			</div>
			<div class="row subtitle-company mt-1">
				<h3 class="mx-2 my-2">Seleccione aplicación</h3>
				<input type="hidden" name="AccesoTabla" id="AccesoTabla"/>
			</div>
			<div class="row mb-4">
				<table class="table table-hover table-sm table-responsive-md">
					<thead>
				    	<tr>
					      <th scope="col" class="border-shadow border-bottom-0 text-center" colspan="2">Aplicación</th>
					      <th scope="col" class="border-shadow border-bottom-0 text-center">Perfil</th>
					      <th scope="col" class="border-shadow border-bottom-0 text-center">Aplicación titular</th>
					      <th scope="col" class="border-shadow border-bottom-0 text-center">Tipo de Acceso</th>
				   		</tr>
				  	</thead>
				  	<tbody>
					    <tr>
					     <!-- Inicia tabla Dinámica -->
					    <%
						int tam_L_APLIC = 0;							
						
							try{
								tam_L_APLIC = utils.getDatoContexto("LST_APLIC").getLongitud();
								int ban = 0;
								int i=0;
								
								String nom_aplic = "";
								String cod_aplic = "";
								String cod_perf = "";
								String des_perf = "";
								String tipacce = "";
																		
								for( i = 0; i < tam_L_APLIC; i++){
								    if(cod_aplic.equals(utils.getValorContexto("LST_APLIC." + i + ".CODAPLI").trim())){
									    ban = 1;
										cod_perf = utils.getValorContexto("LST_APLIC." + i + ".CODPERF").trim();
				  					    des_perf = utils.getValorContexto("LST_APLIC." + i + ".DESPERF").trim();
										
									}else{
								      ban = 0;
									
										if(i >0 && !cod_aplic.equals("EXTU")){
										%>
								      	<td scope="row" class="border-shadow">
								      		<label class="custom-control custom-radio">
											  	<input class="custom-control-input" type="radio" name="propietario" 
											  	value="<%=cod_aplic%>" <%=(cod_aplic.equals(utils.getValorContexto("TITULAR_APLIC")))?"checked":""%> onclick="jsSelApliTit(this.value)" />
											  	<span class="custom-control-indicator"></span>
											</label>
								      	</td>
			     						<td scope="row" align="center" class="border-shadow text-center"><%=tipacce%></td>
				    	</tr>
								        <%}
								    	cod_aplic = utils.getValorContexto("LST_APLIC." + i + ".CODAPLI").trim();
				  					    nom_aplic = utils.getValorContexto("LST_APLIC." + i + ".NOMAPLI").trim();
										cod_perf  = utils.getValorContexto("LST_APLIC." + i + ".CODPERF").trim();
				  					    des_perf  = utils.getValorContexto("LST_APLIC." + i + ".DESPERF").trim();
										tipacce   = (utils.getValorContexto("LST_TIPACCESO."+i+".TIPACCE")!=null)?utils.getValorContexto("LST_TIPACCESO."+i+".TIPACCE").trim():""; ;
									}
																	
							    if(ban==0 && !cod_aplic.equals("EXTU")) {
									
								%>
							    <tr align="middle">
									<td scope="row" class="border-shadow justify-content-center">
										<label class="custom-control custom-radio">
										<input type="checkbox" id="ck_apli"+i class="custom-control-input" name="ckb_aplic" value="<%=cod_aplic%>-<%=nom_aplic%>" onclick="getTipAcce(this,'<%=tipacce%>')"/>
										<span class="custom-control-indicator"></span>
										</label>
									</td>
									<td scope="row" class="border-shadow text-center">&nbsp;<%=nom_aplic%></td>
									<td scope="row" class="border-shadow py-0">&nbsp;
										<select class="form-control mb-1 mt-0" id="cmb_apli"+i name="cmb_apli">
											<option value="">Seleccione perfil</option>
											<option value="<%=cod_perf%>-<%=des_perf%>"><%=des_perf%></option>
								<%}
											
								if(ban==1){%>
									<option value="<%=cod_perf%>-<%=des_perf%>" > <%=des_perf%></option>
								<%}		
								}
								if(i >0 && !cod_aplic.equals("EXTU")){
									
								 %>
								</select>
							</td>
							<td scope="row" class="border-shadow">&nbsp;
								<label class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" name="propietario" value="<%=cod_aplic%>" <%=(cod_aplic.equals(utils.getValorContexto("TITULAR_APLIC")))?"checked":""%> onclick="jsSelApliTit(this.value)" />
									<span class="custom-control-indicator"></span>
								</label>
							</td>
							<td align="center" class="border-shadow"><label id="LblTipAcce"><%=tipacce%></label></td>
						</tr>
						<%
					    
						}
					  }catch (Exception e){}%>
				<!-- Termina tabla Dinámica -->
				  	</tbody>
				</table>
				  <!-- Inicia idParametro por default 00005 -->
				   <%
					int tamLST_PARAM = 0;
					int j=0;	
					try{
						String idparam = "";
						String idurl   = "";
						String idrama  = "";
						String descrip = "";
					
							for( j = 0; j < 1; j++){
							
							idparam  = (utils.getValorContexto("LST_PARAM."+j+".IDPARAM")!=null)?utils.getValorContexto("LST_PARAM."+j+".IDPARAM").trim():""; ;
							idurl    = (utils.getValorContexto("LST_PARAM."+j+".IDURL")!=null)?utils.getValorContexto("LST_PARAM."+j+".IDURL").trim():""; ;
							idrama   = (utils.getValorContexto("LST_PARAM."+j+".IDRAMA")!=null)?utils.getValorContexto("LST_PARAM."+j+".IDRAMA").trim():""; ;
							descrip  = (utils.getValorContexto("LST_PARAM."+j+".DESCRIP")!=null)?utils.getValorContexto("LST_PARAM."+j+".DESCRIP").trim():""; ;
							
					%>
							  <input hidden type="radio" size="2" id="rdb_Parametro<%=j%>" name="rdb_Param" value="" checked onclick="captIdparam(<%=j%>,'<%=idparam%>');"/>
					<%		}
						}catch (Exception e){}%>	  
				  <!-- Termina idParametro por default 00005 -->
			</div>
			<div class="row d-flex justify-content-center">
				<div class="form-group">
					<input type="button" class="btn primary-color-dark rounded btn-sm" value="Continuar" onclick="jsContinuar()" />
				</div>
			</div><br><br><br>
		</form>
	</div>

	<!-- Modal -->
    <div class="modal fade" id="modalAviso" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Aviso</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                	<div class="m-2">
						<p id="idMsg"></p>
					</div>
                </div>
                <div class="modal-footer">
                	<button type="button" class="btn primary-color-dark rounded btn-sm" data-dismiss="modal" id="aceptarModal">Aceptar</button>
                    <button type="button" class="btn btn-danger rounded btn-sm" data-dismiss="modal" id="cerrarModal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>
	
	<script type="text/javascript">
			
			var lst_aplic = '<%=utils.getValorContexto("S_APLIC").trim()%>';
			var aplic = "";
			var perf = "";
			var combos="";
				
			var indcli =document.AUMXVE10100.IND_CLI.value;			
			if(indcli.length < 1){
				document.getElementById("no").checked = true;	
				document.AUMXVE10100.NUM_CLIENTE.disabled =true;
				document.AUMXVE10100.NOM_EMPRESA.disabled = false;
				document.AUMXVE10100.BTN_BUSQUEDA.disabled =true;
				$('#BTN_BUSQUEDA').prop( "disabled", true );
				$('#nombreEmpresa').prop( "required", true );
				$('#noCliente').prop('disabled');
				$('#smallNombreEmpresa').append('*');
				/*document.getElementById('tdInputNombreEmpresa').className="cellTablaN";*/
				document.AUMXVE10100.rb_cli[1].checked=true;
				
			}else{
				$("#si").prop("checked");	
				document.AUMXVE10100.NUM_CLIENTE.disabled =false;
				document.AUMXVE10100.NOM_EMPRESA.disabled = true;
				document.AUMXVE10100.BTN_BUSQUEDA.disabled =false;	
				$('#nombreEmpresa').addClass('form-control enabled');
				$('#noCliente').prop( "required", true );
				$('#smallNombreEmpresa').remove( ":contains('*')" );
			}
			
			if(lst_aplic !="" ){
				var arr_lst = lst_aplic.split("|");
				
				var checks = arr_lst.length;
				
					if(checks > 1){
						
						for(i=0; i < checks; i++){
							lst_reg = arr_lst[i];
							arr_reg = lst_reg.split("-");
							aplic = arr_reg[0] + "-"+arr_reg[1];
							perf = arr_reg[2] + "-"+arr_reg[3];

							if(document.AUMXVE10100.ckb_aplic[i].value = aplic){
								document.AUMXVE10100.ckb_aplic[i].checked= true;
								combos = document.AUMXVE10100.cmb_apli[i].options.length;
								for(j=0; j < combos; j++){
									if(document.AUMXVE10100.cmb_apli[i].options[j].value == perf){
										document.AUMXVE10100.cmb_apli[i].options[j].selected = true;
									}
								}
								
							}
						}
					}else{
						var arr_apli = lst_aplic.split("-");
						aplic = arr_apli[0] + "-"+arr_apli[1];
						perf = arr_apli[2] + "-"+arr_apli[3];
						if(document.AUMXVE10100.ckb_aplic.value = aplic){
							document.AUMXVE10100.ckb_aplic.checked= true;
						    combos = document.AUMXVE10100.cmb_apli.options.length;
								for(j=0; j < combos; j++){
									if(document.AUMXVE10100.cmb_apli.options[j].value == perf){
										document.AUMXVE10100.cmb_apli.options[j].selected = true;
									}
								} 
						}
					}
			
			
			}
			
			if('<%=utils.getValorContexto("ERROR_MDO").trim()%>' != ""){
				if('<%=utils.getValorContexto("ERROR_MDO")%>' == "-8"){
					alert('Estimado usuario su clave de operación es incorrecta');
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
		if (document.AUMXVE10100.hd_tipacce.value == 'P') {
			document.AUMXVE10100.TIPOACCESO[0].checked = true;
		} else if (document.AUMXVE10100.hd_tipacce.value == 'D') {
			document.AUMXVE10100.TIPOACCESO[1].checked = true;
		}

		if (document.AUMXVE10100.filaIdparam.value != '') {
			document.getElementById('rdb_Parametro' + filaIdparam).checked = true;
		}
	</script> 
	
	</customform>

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript" src="/aumx_es_web_pub/js/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/aumx_es_web_pub/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/aumx_es_web_pub/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/aumx_es_web_pub/js/mdb.min.js"></script>
</body>
</html>