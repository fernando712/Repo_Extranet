// JavaScript Document
// Componente AUMXVE 21000
 
 
var camp1=false;
var camp2=true;
var camp3=true;
var camp4=true;
var camp5=true;
var camp6=true;
var camp7=true;
var camp8=true;
var camp9=true;
var camp10=true;
var camp11=false;
var camp12=false;
var	text="";

function doRequestEmp(registro){

	if(registro!="-1"){
		var aux = registro.split('|');
	   document.AUMXVE21000.SEL_CVE_EMP.value=aux[0];
	   document.AUMXVE21000.SEL_NOM_EMP.value=aux[1];
		document.AUMXVE21000.evento.value="0X2501002"; //consulta de estructuras
		document.AUMXVE21000.submit();
    }
       
}


	function doEntidad1(nivel){
		var ant_nv=0;
		var niv_ant = document.AUMXVE21000.S_NIVEL.value;
		if(niv_ant!=""){
			var num_niv = niv_ant.split('|');
			ant_nv =parseInt(num_niv[0]);
		}
		if(nivel!="-1"){
			var num_niv = nivel.split('|');
			var i=0;
			i=i+num_niv[0];
			document.forms[0].S_NIVEL.value=nivel;
			if(i > 1){
				document.forms[0].S_NIVEL_1.value="";
				document.forms[0].S_NIVEL_2.value="";
				document.forms[0].S_NIVEL_3.value="";
				document.forms[0].S_NIVEL_4.value="";
				document.forms[0].S_NIVEL_5.value="";
				document.forms[0].S_NIVEL_6.value="";
				document.forms[0].S_NIVEL_7.value="";
				document.forms[0].S_NIVEL_8.value="";
				document.forms[0].S_NIVEL_9.value="";
				document.forms[0].SEL_COD_EST.value="00000";
				document.forms[0].SEL_NIVEL.value="1";
				document.AUMXVE21000.evento.value="0X2501001"; //ir al siguiente servicio
				document.AUMXVE21000.submit();
		   }else{
		   
				if(ant_nv > 1){
					if (document.getElementById('est_nv1').style.display =="")
						document.getElementById('est_nv1').style.display = "none"; 
				}
				if(ant_nv > 2){
					if (document.getElementById('est_nv2').style.display =="")
						document.getElementById('est_nv2').style.display = "none"; 
				}
				if(ant_nv > 3){
					if (document.getElementById('est_nv3').style.display =="")	
						document.getElementById('est_nv3').style.display = "none"; 
				}
				if(ant_nv > 4){
					if (document.getElementById('est_nv4').style.display !="none")	
						document.getElementById('est_nv4').style.display = "none"; 
				}
				if(ant_nv > 5){
					if (document.getElementById('est_nv5').style.display =="")	
						document.getElementById('est_nv5').style.display = "none"; 
				}
				if(ant_nv > 6){
					if (document.getElementById('est_nv6').style.display =="")	
						document.getElementById('est_nv6').style.display = "none"; 
				}
				if(ant_nv > 7){
					if (document.getElementById('est_nv7').style.display =="")
						document.getElementById('est_nv7').style.display = "none"; 
				}
				if(ant_nv > 8){
					if (document.getElementById('est_nv8').style.display =="")
						document.getElementById('est_nv8').style.display = "none"; 
				}

		   }
		}
	}
	
	
	function doEntidadN(nivel,reg){
		
		var estructura = reg.split('|');
		var n_nv=0;
		
		if(nivel =="1"){
			document.forms[0].S_NIVEL_1.value=reg;
			document.forms[0].S_NIVEL_2.value="";
			document.forms[0].S_NIVEL_3.value="";
			document.forms[0].S_NIVEL_4.value="";
			document.forms[0].S_NIVEL_5.value="";
			document.forms[0].S_NIVEL_6.value="";
			document.forms[0].S_NIVEL_7.value="";
			document.forms[0].S_NIVEL_8.value="";
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="2"){
			document.forms[0].S_NIVEL_2.value=reg;
			document.forms[0].S_NIVEL_3.value="";
			document.forms[0].S_NIVEL_4.value="";
			document.forms[0].S_NIVEL_5.value="";
			document.forms[0].S_NIVEL_6.value="";
			document.forms[0].S_NIVEL_7.value="";
			document.forms[0].S_NIVEL_8.value="";
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="3"){
			document.forms[0].S_NIVEL_3.value=reg;
			document.forms[0].S_NIVEL_4.value="";
			document.forms[0].S_NIVEL_5.value="";
			document.forms[0].S_NIVEL_6.value="";
			document.forms[0].S_NIVEL_7.value="";
			document.forms[0].S_NIVEL_8.value="";
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="4"){
			document.forms[0].S_NIVEL_4.value=reg;	
			document.forms[0].S_NIVEL_5.value="";
			document.forms[0].S_NIVEL_6.value="";
			document.forms[0].S_NIVEL_7.value="";
			document.forms[0].S_NIVEL_8.value="";
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="5"){
			document.forms[0].S_NIVEL_5.value=reg;		
			document.forms[0].S_NIVEL_6.value="";
			document.forms[0].S_NIVEL_7.value="";
			document.forms[0].S_NIVEL_8.value="";
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="6"){
			document.forms[0].S_NIVEL_6.value=reg;	
			document.forms[0].S_NIVEL_7.value="";
			document.forms[0].S_NIVEL_8.value="";
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="7"){
			document.forms[0].S_NIVEL_7.value=reg;		
			document.forms[0].S_NIVEL_8.value="";
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="8"){
			document.forms[0].S_NIVEL_8.value=reg;		
			document.forms[0].S_NIVEL_9.value="";
		}
		if(nivel =="9")
			document.forms[0].S_NIVEL_9.value=reg;		
			
		tot_nv =document.forms[0].S_NIVEL.value;
		var num_niv = tot_nv.split('|');
		var i=0;
		var j=0;
		i=num_niv[0]-1;
		j=nivel;
		
		if(j == i){
			n_nv =parseInt(nivel)+1;
			document.forms[0].NIVESTR.value = n_nv;
			document.forms[0].h_s_ent_id.value =estructura[0];

		}else{
			n_nv =parseInt(nivel)+1;
			document.forms[0].SEL_COD_EST.value = estructura[0];
			document.forms[0].SEL_NIVEL.value=n_nv;
			document.AUMXVE21000.evento.value="0X02501001"; 
			document.AUMXVE21000.submit();
		}
	}

function validar(){

 var nivel = document.forms[0].S_NIVEL.value;
 var num = nivel.split('|');
 var niv = num[0];

 text="Estimado usuario favor de validar los siguientes campos:\n";
 
   if(niv == "1"){
		document.forms[0].NIVESTR.value ="1";
		document.forms[0].h_s_ent_id.value ="00000";
   }
   
    if(niv == "2"){
		document.forms[0].NIVESTR.value ="2";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_1')[document.getElementById('cmbEst_1').selectedIndex].value;
   }

	if(niv == "3"){
		document.forms[0].NIVESTR.value ="3";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_2')[document.getElementById('cmbEst_2').selectedIndex].value;
   }
   
   if(niv == "4"){
		document.forms[0].NIVESTR.value ="4";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_3')[document.getElementById('cmbEst_3').selectedIndex].value;
   }
   
   if(niv == "5"){
		document.forms[0].NIVESTR.value ="5";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_4')[document.getElementById('cmbEst_4').selectedIndex].value;
   }
   
    if(niv == "6"){
		document.forms[0].NIVESTR.value ="6";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_5')[document.getElementById('cmbEst_5').selectedIndex].value;
   }
   
    if(niv == "7"){
		document.forms[0].NIVESTR.value ="7";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_6')[document.getElementById('cmbEst_6').selectedIndex].value;
   }
   
    if(niv == "8"){
		document.forms[0].NIVESTR.value ="8";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_7')[document.getElementById('cmbEst_7').selectedIndex].value;
   }
   
    if(niv == "9"){
		document.forms[0].NIVESTR.value ="9";
		document.forms[0].h_s_ent_id.value =document.getElementById('cmbEst_8')[document.getElementById('cmbEst_8').selectedIndex].value;
   }
   
	var plaza = gebn("h_plaza_cr").value=gebi("plaza_cr").value;
	var decrip = gebn("h_desc_entidad").value=gebi("desc_entidad").value;
	gebn("h_s_des_niv").value=gebi("cmbNiv")[gebi("cmbNiv").selectedIndex].text;
    gebn("h_d_calle").value=gebi("d_calle").value;
	gebn("h_d_num_ext").value=gebi("d_num_ext").value;
	gebn("h_d_num_int").value=gebi("d_num_int").value;
	gebn("h_d_col").value=gebi("d_col").value;
	gebn("h_d_del_mun").value=gebi("d_del_mun").value;
	gebn("h_d_codpos").value=gebi("d_codpos").value; 
	gebn("h_d_ciudad").value=gebi("d_ciudad").value; 
	gebn("h_d_entidad").value=gebi("d_entidad").value;
	gebn("h_d_tel1").value=gebi("d_tel1").value;
	gebn("h_d_ext1").value=gebi("d_ext1").value;
	gebn("h_d_tel2").value=gebi("d_tel2").value;
	gebn("h_d_ext2").value=gebi("d_ext2").value;
	
	//gebn("h_cve_oper").value=gebi("cve_oper").value;
   
   	if(document.getElementById('cmbNiv').value!=-1){
		camp1=true;
	} else {
		camp1=false;
	}
   
	num_nv =parseInt(niv);

	if(num_nv >1){
		if(document.getElementById('cmbEst_1').value!=-1)
			camp2=true;
		else
			camp2=false;
	}
	if(num_nv >2){
		if(document.getElementById('cmbEst_2').value!=-1)
			camp3=true;
		else
			camp3=false;
	}
	if(num_nv >3){
		if(document.getElementById('cmbEst_3').value!=-1)
			camp4=true;
		else
			camp4=false;
	}
	if(num_nv >4){
		if(document.getElementById('cmbEst_4').value!=-1)
			camp5=true;
		else
			camp5=false;
	}
	if(num_nv >5){
		if(document.getElementById('cmbEst_5').value!=-1)
			camp6=true;
		else
			camp6=false;
	}
	if(num_nv >6){
		if(document.getElementById('cmbEst_6').value!=-1)
			camp7=true;
		else
			camp7=false;
	}
	if(num_nv >7){
		if(document.getElementById('cmbEst_7').value!=-1)
			camp8=true;
		else
			camp8=false;
	}
	if(num_nv >8){
		if(document.getElementById('cmbEst_8').value!=-1)
			camp9=true;
		else
			camp9=false;
	}
	if(num_nv >9){
		if(document.getElementById('cmbEst_9').value!=-1)
			camp10=true;
		else
			camp10=false;
	}
	
	if(plaza!="" && plaza.length > 3 )
		camp11=true;
	else
		camp11=false;	
		
	
	if(decrip!="")
		camp12=true;
	else
		camp12=false;	
	
	
			if(!camp1){
				text+="\nNivel – Debe seleccionar un Nivel";
			}
		
			if(!camp2){
				text+="\nEstructura Nivel 1 –  Debe seleccionar una entidad";
			}
	
			if(!camp3){
				text+="\nEstructura Nivel 2 –  Debe seleccionar una entidad";
			}
			
			if(!camp4){
				text+="\nEstructura Nivel 3 –  Debe seleccionar una entidad";
			}
			
			if(!camp5){
				text+="\nEstructura Nivel 4 –  Debe seleccionar una entidad";
			}
			
			if(!camp6){
				text+="\nEstructura Nivel 5 –  Debe seleccionar una entidad";
			}
			
			if(!camp7){
				text+="\nEstructura Nivel 6 –  Debe seleccionar una entidad";
			}
			
			if(!camp8){
				text+="\nEstructura Nivel 7 –  Debe seleccionar una entidad";
			}
			
			if(!camp9){
				text+="\nEstructura Nivel 8 –  Debe seleccionar una entidad";
			}
			
			if(!camp10){
				text+="\nEstructura Nivel 9 –  Debe seleccionar una entidad";
			}
			
			
			if(!camp11){
				text+="\nPlaza/CR –  Debe introducir una Plaza/CR (4 caracteres) ";
			}
			
			if(!camp12){
				text+="\nDescripción –  Debe introducir una descripción";
			}
			
			
	if((camp1)&&(camp2)&&(camp3)&&(camp4)&&(camp5)&&(camp7)&&(camp8)&&(camp9)&&(camp10)&&(camp11)&&(camp12)){
			document.AUMXVE21000.evento.value="0X02501000"; 
			document.AUMXVE21000.submit();
	} else {
			alert(text);
	}
   
   
	
	
}
