package com.mx.eglobal

class Regla {
	String nombre;
	String descripcion;
	//static hasMany =[microregla :MicroRegla];
	String microregla;
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
