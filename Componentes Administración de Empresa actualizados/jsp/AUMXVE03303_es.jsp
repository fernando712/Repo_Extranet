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
                stringBuffer.append("\"mensajeOk\" :");  
				stringBuffer.append(utils.getValorContexto("MENSAJE").trim());				
				stringBuffer.append("\",");	
				stringBuffer.append("\"errCodeOk\" :");  
				stringBuffer.append("\"ok");	
				stringBuffer.append("\",");
				stringBuffer.append("\"sNomAplic\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("S_NOM_APLIC").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"sAplic\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("S_APLIC").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"lstAplic\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("LST_APLIC").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"ListaPerfil\" : ["); 
					int longitud=0;
					try{longitud=utils.getDatoContexto("LST_PERF").getLongitud();}catch(Exception e){longitud=0;}
					for(int h=0; h<longitud;h++){	
						stringBuffer.append("{");  
						stringBuffer.append("\"codPerf\" : ");  
						stringBuffer.append("\"");	
						stringBuffer.append(utils.getValorContexto("LST_PERF."+h+".CODPERF").trim());	
						stringBuffer.append("\",");	
						stringBuffer.append("\"desPerf\" : ");  
						stringBuffer.append("\"");	
						stringBuffer.append(utils.getValorContexto("LST_PERF."+h+".DESPERF").trim());	
						stringBuffer.append("\"");	
						if(h<longitud-1){
							stringBuffer.append("},");
						}else{
							stringBuffer.append("}");
						}
				}
				stringBuffer.append("],");
			}
            else{
                stringBuffer.append("\"mensaje\" :");  
                stringBuffer.append("\"");    
                stringBuffer.append(utils.getValorContexto("MENSAJE").trim());    
                stringBuffer.append("\",");    
                stringBuffer.append("\"errCode\" :");  
                stringBuffer.append("\"");    
                stringBuffer.append(utils.getValorContexto("ER_CODIGO").trim());    
                stringBuffer.append("\",");	
				stringBuffer.append("\"sNomAplicError\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("S_NOM_APLIC").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"sAplicError\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("S_APLIC").trim());	
				stringBuffer.append("\",");
				stringBuffer.append("\"lstAplicError\" :");  
				stringBuffer.append("\"");	
				stringBuffer.append(utils.getValorContexto("LST_APLIC").trim());	
				stringBuffer.append("\",");	
			
            }
        }
        catch(Exception e){
            stringBuffer.setLength(0);
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            stringBuffer.append("{");
            stringBuffer.append("\"response\" : ");            
            stringBuffer.append("{");
            stringBuffer.append("\"mensaje\" :");  
            stringBuffer.append("\"");    
            stringBuffer.append(e.getMessage());    
            stringBuffer.append("\",");    
            stringBuffer.append("\"errCode\" :");  
            stringBuffer.append("\"");    
            stringBuffer.append(e.hashCode());   
			stringBuffer.append("\",");	
			stringBuffer.append("\"sn\" :");  
			stringBuffer.append("\"");	
			stringBuffer.append(utils.getValorContexto("REFEREN").trim());	
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
        System.out.println("AUMXVE03303_es.jsp finalizado con ERROR..." + e.toString());
        e.printStackTrace();
    }
%>
