package com.mx.eglobal;
import com.mx.eglobal.MicroReglas;

class Regla {
	String nombre;
	String descripcion;
	//static hasMany =[microregla :MicroRegla];
	MicroReglas microregla;
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
