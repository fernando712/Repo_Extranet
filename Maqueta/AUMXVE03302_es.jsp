<%
	atae.thin.pres.AtaeSvPresentacionUtils utils = atae.thin.pres.AtaeSvPresentacionUtils.getInstance(request, getServletConfig().getServletContext());
	response.setContentType("application/json");

	String mensaje = utils.getValorContexto("MENSAJE");
	String errCode = utils.getValorContexto("COD_ERROR");

	<%=mensaje%>°<%errCode%>

%>