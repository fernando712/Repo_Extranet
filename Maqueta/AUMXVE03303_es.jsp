<%
	atae.thin.pres.AtaeSvPresentacionUtils utils = atae.thin.pres.AtaeSvPresentacionUtils.getInstance(request, getServletConfig().getServletContext());
	response.setContentType("application/json");
 
int iTotal =((utils.getDatoContexto("LST_APLIC") == null)?0: utils.getDatoContexto("LST_APLIC").getLongitud());
%>
