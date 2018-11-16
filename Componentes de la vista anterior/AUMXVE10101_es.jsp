
<!-- - Autor(s):
- Fecha:18/11/2010
- Descripción:JSP Alta de Nivel -->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<!-- <meta charset=utf-8> -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Alta de Nivel</title>
	<%@ include file="/atcl_mult_mult_jsp/funciones.jsp"%>
	<script language="javascript" src="/atcl_es_web_pub/js/utils.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/Validaciones.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/menu.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/utilEX.js"></script>
	<script language="javascript" src="/aumx_es_web_pub/js/funciones_AUMXVE10101.js"></script>
	<link rel="stylesheet" href="/aumx_es_web_pub/estilos/estilosEX.css" type="text/css">
	<!-- Font Awesome -->
	<script type="text/javascript" src="/aumx_es_web_pub/js/all.js"></script>
	<!-- Bootstrap core CSS -->
	<link href="/aumx_es_web_pub/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="/aumx_es_web_pub/css/mdb.min.css" rel="stylesheet">
</head>
	<body  onload="controlSesion();<% if (utils.getPaginaModoMensaje() != getCteServicioOK()) {%> mostrarMensajes(tipoMensajes,paramMensajes)<%}%>">
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
				<form name="AUMXVE10101" action="<%=utils.getDestinoFormulario()%>" method="POST" target="" ayudarapida="Formulario Nacar" onSubmit="javascript:if(!isEnviarFormulario()) return false;">
					<input type="hidden" name="evento">
					<input type="hidden" name="flujo" value="<%=utils.getFlujoID()%>">
					<input type="hidden" name="ventana" value="<%=utils.getVentana()%>">
					<customhidden><input name="N_HDN_REFERENCIA" type="hidden" value='<%= utils.getValorContexto("REFERENCIA") %>' /></customhidden>
					<customhidden><input name="N_HDN_NOM_EMPRESA" type="hidden" value='<%= utils.getValorContexto("NOM_EMPRESA") %>' /></customhidden>
					<customhidden><input name="N_HDN_NOM_CONTACTO" type="hidden" value='<%= utils.getValorContexto("NOM_CONTACTO") %>' /></customhidden>
					<customhidden><input name="N_HDN_S_NIVEL" type="hidden" value='<%= utils.getValorContexto("S_NIVEL") %>' /></customhidden>
					<customhidden><input name="N_HDN_NIVEL" type="hidden" value='<%= utils.getValorContexto("NIVEL") %>' /></customhidden>
					<div class="row rounded-top subtitle-company">
						<h3 class="mx-2 my-2">NIVELES</h3>
					</div>
					<br style="height: 1px;">
					<div class="row">
						<h3 class="mx-2 my-2" style="color: #094fa5; font-size: 1.125rem;">Datos de la empresa</h3>
					</div>
					<div class="row mb-0">
			        	<div class="col-md-12 md-form p-0 my-2">
						    <input class="disabled" placeholder="  Referencia" type="text" size="10" value='<%= utils.getValorContexto("REFERENCIA") %>' readonly="readonly"/>
					    </div>
			        </div>
			        <div class="row mb-0">
			        	<div class="col-md-12 md-form p-0 my-2">
						    <input class="disabled" placeholder="  Nombre Empresa" type="text" size="40" value='<%= utils.getValorContexto("NOM_EMPRESA") %>' readonly="readonly"/>
					    </div>
			        </div>
			        <div class="row mb-0">
			        	<div class="col-md-12 md-form p-0 my-2">
						    <input class="disabled" placeholder="  Nombre contacto" type="text" size="40" value="<%= utils.getValorContexto("NOM_CONTACTO") %>" readonly="readonly"/>
					    </div>
			        </div>
			        <div class="row subtitle-company rounded-top">
						<h3 class="mx-2 my-2">Capturar niveles</h3>
					</div>
					<div class="row mb-0">
						<table class="table table-hover table-sm table-responsive-sd">
							<thead>
						    	<tr>
							      <th scope="col" class="border-shadow border-bottom-0 text-center">Nivel</th>
							      <th scope="col" class="border-shadow border-bottom-0 text-center">Clave</th>
							      <th scope="col" class="border-shadow border-bottom-0 text-center">Descripción</th>
						   		</tr>
						  	</thead>
							<tbody>
							<!-- Inicia tabla Dinámica -->
							<%
								int tam_L_NIVEL = 0;
							  	int tam_L_VBCE = 0;
							  	String ban_vbce="";
							  	int i = 0;
								try{
										tam_L_NIVEL = Integer.parseInt(utils.getValorContexto("NIVEL"));
										tam_L_VBCE = utils.getDatoContexto("LST_VBCE").getLongitud();
										ban_vbce =  utils.getValorContexto("BAN_VBCE").trim();
																				
										if(ban_vbce.equals("0")){
											for(i = 0; i < tam_L_NIVEL; i++){	
										%>
										    <tr>
										      <td scope="row" class="border-shadow border-right-0 border-bottom-0"><%=i+1%></td>
										      <td scope="row" class="border-shadow border-bottom-0 border-right-0 text-center">
										      	<input type="text" id="TXT_CLAVE" name="TXT_CLAVE<%=i%>" maxlength="4"  size="5" value="" onblur="jsVerifica('<%=tam_L_NIVEL%>')" <%if(i==0){%> style="background-color: #FFF2DD" <%}%>/>
										      <%if(i==0){%>*<%}%>	
										      </td>
										      <td scope="row" class="border-shadow border-bottom-0 text-center p-2">
										      	<input id="TXT_NIVEL" name="TXT_NIVEL" maxlength="70" type="text" value='<%=utils.getValorContexto("LST_VBCE."+i+".NIVEL").trim()%>' onblur="jsVerifica('<%=tam_L_NIVEL%>')" <%if(i==0){%> style="background-color: #FFF2DD" <%}%>/>
										      	<%if(i==0){%>*<%}%>	
										      </td>
										    </tr>
									    <%
											}
											%>
										<%
										}
										else
										{
											for(i = 0; i < tam_L_VBCE; i++){
										%>
										    <tr>
										      <td scope="row" class="border-shadow border-right-0"><%=i+1%></td>
										      <td scope="row" class="border-shadow border-right-0 text-center p-2">
										      	<%
													//concatenados.substring(0, concatenados.length-1);		
												%>
										      	<input class="disabled" id="clave" name="clave" maxlength="4" type="text" size="5" value='<%= utils.getValorContexto("LST_VBCE."+i+".NIVEL").substring(2,6)%>'  readonly="readonly" />
										      </td>
										      <td scope="row" class="border-shadow text-center p-2">
										      	<input class="disabled" id="nivel" name="nivel" maxlength="70" type="text" value='<%=utils.getValorContexto("LST_VBCE."+i+".NIVEL").substring(6)%>' readonly="readonly" />
										      </td>
										    </tr>
									    <%
										
											}
										}
									}catch (Exception e){}
								%>
							<!-- Termina tabla Dinámica -->
							</tbody>
						</table>
					</div>
					<div class="row d-flex justify-content-center">
						<div class="form-group">
							<input type="button" class="btn primary-color-dark rounded btn-sm"  value="Regresar" onclick="jsRegresar(0X2501017)" />
							<%	
							if(ban_vbce.equals("0")){
							%>
							<input type="button" class="btn primary-color-dark rounded btn-sm"  value="Alta" onclick="jsActualizar('<%=tam_L_NIVEL%>')" />
							<%
							}
							%>
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
		                	<button type="button" class="btn primary-color-dark rounded btn-sm" data-dismiss="modal">Aceptar</button>
		                </div>
		            </div>
		        </div>
		    </div>
			<script type="text/javascript">
			
				var ban = "";
				var ban = '<%=ban_vbce%>';
				
				if(ban=="0")
				    jsHabilitaCampos('<%=tam_L_NIVEL%>');
					
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