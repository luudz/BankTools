package com.mx.eglobal

class CatalogoVariables {
	String nombre;
	String descripcion;
	Boolean enabled;

    static constraints = {
    }
   String toString (){
    	if(enabled==true){
    		return "Habilitada";
    	}
    	return "Deshabilitada";
    	

    }
}
