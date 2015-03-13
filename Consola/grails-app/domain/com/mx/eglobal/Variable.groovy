package com.mx.eglobal

class Variable {
	String alias;
	String columna;
	String descripcion;
	String categoria;
	Boolean enabled;

    static constraints = {
    }
    String toString(){
    	return "$alias";}
}
