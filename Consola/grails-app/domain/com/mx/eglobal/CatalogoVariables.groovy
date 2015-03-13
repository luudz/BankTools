package com.mx.eglobal
import com.mx.eglobal.Variable;

class CatalogoVariables {
	String nombre;
	String descripcion;
	Boolean enabled;
	Variable variable;
	//static hasMany =[varibles :MicroRegla];

    static constraints = {
    }
   String toString (){
    	if(enabled==true){
    		return "Habilitada";
    	}
    	return "Deshabilitada";
    	

    }
}
