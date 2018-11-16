<%@ page import="java.io.PrintWriter" %>
<%
atae.thin.pres.AtaeSvPresentacionUtils utils = atae.thin.pres.AtaeSvPresentacionUtils.getInstance(request, getServletConfig().getServletContext());
    
    try{
        PrintWriter printWriter = null;
        StringBuffer stringBuffer = new StringBuffer();
        response.setContentType("application/json");
        response.setHeader("Cache-Control", "no-cache");
        if(utils.getValorContexto("ER_BANDERA").trim().equals("1")){    
            response.setStatus(HttpServletResponse.SC_OK);
        }else{
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }    
        printWriter = response.getWriter();
        try{
            stringBuffer.append("{");
            stringBuffer.append("\"response\" : ");        
            stringBuffer.append("{");
            if(utils.getValorContexto("ER_BANDERA").trim().equals("1")){	
				stringBuffer.append("\"companyName\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("REFDESC").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"levels\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("NIVELES").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"contactName\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("CONTACT").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"street\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("CALLE").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"outdoorNumber\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("NUMEXT").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"neighborhood\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("COLONIA").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"interiorNumber\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("NUMINT").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"municipality\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("DELMUN").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"zipcode\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("CODPOS").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"city\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("CIUDAD").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"state\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("ENTIDAD").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"referenceStreet\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("CALLEREF").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"telephone1\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("TELEF01").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"telephoneExt1\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("EXTTEL1").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"telephone2\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("TELEF02").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"telephoneExt2\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("EXTTEL2").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"email\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("EMAIL").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"reference\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("REFEREN").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"stateCompany\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("ESTADOE").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"identifierAdminName\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("ADMINEM").trim());	
				stringBuffer.append("\",");	
				stringBuffer.append("\"accessKey\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("CVE_ACCESO").trim());	
				stringBuffer.append("\",");	
            }
            else{
                stringBuffer.append("\"message\" :");  
                stringBuffer.append("\"");    
                stringBuffer.append(utils.getValorContexto("MENSAJE").trim());    
                stringBuffer.append("\",");    
                stringBuffer.append("\"code\" :");  
                stringBuffer.append("\"");    
                stringBuffer.append(utils.getValorContexto("ER_CODIGO").trim());    
                stringBuffer.append("\",");	
            }
        }
        catch(Exception e){
            stringBuffer.setLength(0);
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            stringBuffer.append("{");
            stringBuffer.append("\"response\" : ");            
            stringBuffer.append("{");
            stringBuffer.append("\"message\" :");  
            stringBuffer.append("\"");    
            stringBuffer.append(e.getMessage());    
            stringBuffer.append("\",");    
            stringBuffer.append("\"code\" :");  
            stringBuffer.append("\"");    
            stringBuffer.append(e.hashCode());   
			stringBuffer.append("\",");	
			stringBuffer.append("\"sn\" :");  
			stringBuffer.append("\"");	
			stringBuffer.append(utils.getValorContexto("SN").trim());	
			stringBuffer.append("\"");
		stringBuffer.append(",");			
            e.printStackTrace();            
        }finally{
           stringBuffer.append("\"destino\" : ");
	        stringBuffer.append("\"");            
	        stringBuffer.append(utils.getDestinoFormulario());
	        stringBuffer.append("\",");
	        stringBuffer.append("\"flujo\" : ");
	        stringBuffer.append("\"");            
	        stringBuffer.append(utils.getFlujoID());
	        stringBuffer.append("\",");
	        stringBuffer.append("\"ventana\" : ");
	        stringBuffer.append("\"");            
	        stringBuffer.append(utils.getVentana());
	        stringBuffer.append("\"");
	        stringBuffer.append("}");
			stringBuffer.append("}");
	        printWriter.print(stringBuffer.toString());
	        printWriter.close();
			System.out.println("respuestaFinal"+stringBuffer.toString());
	        printWriter = null;
			stringBuffer=null;
        }
    }
    catch(Exception e){
        System.out.println("AUMXVE03302_es.jsp finalizado con ERROR..." + e.toString());
        e.printStackTrace();
    }
%>
