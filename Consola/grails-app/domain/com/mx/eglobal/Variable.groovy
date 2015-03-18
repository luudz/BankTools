package com.mx.eglobal
import com.mx.eglobal.CatalogoVariables;


class Variable {
	String alias;
	String columna;
	String descripcion;
	CatalogoVariables categoria;
	Boolean enabled;

    static constraints = {
    }
    String toString(){
    	return "$alias";}
}
