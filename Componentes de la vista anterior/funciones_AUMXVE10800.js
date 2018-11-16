// JavaScript Document
// Componente: AUMXVE10800

	function validar(){
		//validar campos
		//todos los renglones ya definidos deben tener algun valor.
		tot=total;//sacado de la cuenta de renglones al armar la tabla.
		ok_desc=true;
		ok_descb=true;
		ok_clave=true; //longitud claves
		ok_niveluno=true;
		ok=true;
		
		//para los que ya vienen llenos
		if(tot>1){ //para evitar que entre si no hay ningun renglon previo
			for(i=0;i<llenos;i++){ //tot-1 porque debe ser de 0 al PENULTIMO renglon
				//eval("if(desc_"+i+".value==''){ok_desc=false;}");
				if(gebi("desc_"+i).value==""){ok_desc=false;}			
			}
		}
		//para el ultimo renglon
		//i=tot-1;
		
		for(i=llenos;i<tot;i++){
			//eval("if(desc_"+i+".value!='' && clave_"+i+".value==''){ok_descb=false;}"); //no vacio y vacio
			if(i== 0){
				if(gebi("desc_0").value == '' && gebi("clave_0").value==''){ok_niveluno=false;}
			}
				
			if(gebi("desc_"+i).value!='' && gebi("clave_"+i).value==''){ok_descb=false;}
		
			//eval("if(desc_"+i+".value=='' && clave_"+i+".value!=''){ok_descb=false;}"); //vacio y no vacio
			if(gebi("desc_"+i).value=='' && gebi("clave_"+i).value!=''){ok_descb=false;}
		
			//para validar la clave.length=4
			//eval("if(clave_"+i+".value!='' && clave_"+i+".value.length!=4){ok_clave=false;}"); //si no es vacia, debe ser ==4
			clave = gebi("clave_"+i).value;
			if(gebi("clave_"+i).value!='' && clave.length < 4){ok_clave=false;}
		}
		
		msg="Estimado usuario favor de validar los siguientes campos:\n\n";
		
		if(!ok_desc){
			msg+="- Todos los campos con clave ya ingresada (del 1 al "+llenos+") deben tener descripción\n";
			ok=false;
		}
		if(!ok_descb){
			msg+="- Si un campo tiene clave, tambien debe tener descripción, y viceversa\n";
			ok=false;
		}
		if(!ok_clave){
			msg+="- Todas las claves deben tener una longitud de 4 caracteres\n";
			ok=false;
		}
		if(!ok_niveluno){
			msg+="- Capturar por lo menos un nivel\n";
			ok=false;
		}
		
		
		//armar
		cad="";
		c="";
		d="";
		if(ok){
		
			for(i=0;i<tot;i++){
				//eval("c=gebi('clave_"+i+"').value");
				//eval("d=gebi('desc_"+i+"').value");
				c=gebi("clave_"+i).value;
				d=gebi("desc_"+i).value;
				
				if(c!="" && d!=""){
					if(i>=llenos){
					cad+="A"
					}else{
					cad+="M"
					}
					cad+="-"+(i+1)+"-"+c+"-"+d+"|";
				}
			}
			
			if(cad.length>0){
			cad=cad.substring(0,cad.length-1); //para quitar el ultimo pipe
			}
			
		}
		
	
	
		if(cad=="" && ok==true){
			msg+="- Niveles: Si un campo tiene clave, tambien debe tener descripción, y viceversa\n";
			ok=false;
		}	
		
		//validar clave
		ok_clave=false;
		
		if(ok ){
			actualizar();
		}else{ //mostrar mensajes de error
			alert(msg);
		}
	}
	
	function actualizar(){
	
		gebn("h_niveles").value=cad;
	
		//gebn("h_cve_oper").value=gebi("cve_oper").value;
		
		//alert("clave: "+gebn("h_cve_oper").value+"\nniveles: "+gebn("h_niveles").value);
		
		document.AUMXVE10800.evento.value="0X02501000"; //ir al SG00037
		document.AUMXVE10800.submit();
	}
	
	function recuperar(vars){
		tot=total;
	
		//vars trae la cadena concatenada
		renglones=vars.split("|");
		datos=new Array();
		for(i=0;i<renglones.length;i++){
			datos[i]=renglones[i].split("-");
		}
		//ya tengo n arreglos "datos", cada uno con un arreglo de splits
		//ahora solo los pinto en donde les toca:
		for(i=0;i<datos.length;i++){
			gebi("desc_"+i).value=datos[i][3];
			
			if(i>=llenos){
				gebi("clave_"+i).value=datos[i][2];
			}
		}	
	}
	
	