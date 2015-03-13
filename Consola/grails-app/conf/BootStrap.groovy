import com.mx.eglobal.CatalogoVariables;
import com.mx.eglobal.Variable;
import com.mx.eglobal.Regla;
import com.mx.eglobal.MicroReglas;
class BootStrap {
    
    def init = { servletContext ->
    /*
    Comente esto porque no hacia nada checalo luz 13-mar-2015 
    def v1=new Variable(alias:"Regla001", columna:"Columna1", descripcion:"Esta es la primer variable", categoria:"1", enabled:true).save(failonError:true);
    def v2=new Variable(alias:"Regla002", columna:"Columna2", descripcion:"Esta es la segunda variable", categoria:"2", enabled:true).save(failonError:true);
    def v3=new Variable(alias:"Regla003", columna:"Columna3", descripcion:"Esta es la Tercer variable", categoria:"3", enabled:true).save(failonError:true);
    def v4=new Variable(alias:"Regla004", columna:"Columna4", descripcion:"Esta es la cuarta variable", categoria:"4", enabled:true).save(failonError:true);
    def v5=new Variable(alias:"Regla005", columna:"Columna5", descripcion:"Esta es la quinta variable", categoria:"5", enabled:true).save(failonError:true);*/ 	
    	def v1,v2,v3,v4,v5,r1,r2,r3,r4,r5;


    	if(!CatalogoVariables.count()){
    		new CatalogoVariables(nombre:"Regla001", descripcion:"Esta es la regla Regla001",enabled:true, variable:v1).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla002", descripcion:"Esta es la regla Regla002",enabled:false, variable:v2).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla003", descripcion:"Esta es la regla Regla003",enabled:true, variable:v3).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla004", descripcion:"Esta es la regla Regla004",enabled:false, variable:v4).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla005", descripcion:"Esta es la regla Regla005",enabled:true, variable:v5).save(failonError:true);
    	}
    	if(!Variable.count()){
    		v1=new Variable(alias:"Regla001", columna:"Columna1", descripcion:"Esta es la primer variable", categoria:"1", enabled:true).save(failonError:true);
    		v2=new Variable(alias:"Regla002", columna:"Columna2", descripcion:"Esta es la segunda variable", categoria:"2", enabled:true).save(failonError:true);
   		 	v3=new Variable(alias:"Regla003", columna:"Columna3", descripcion:"Esta es la Tercer variable", categoria:"3", enabled:true).save(failonError:true);
    		v4=new Variable(alias:"Regla004", columna:"Columna4", descripcion:"Esta es la cuarta variable", categoria:"4", enabled:true).save(failonError:true);
    		v5=new Variable(alias:"Regla005", columna:"Columna5", descripcion:"Esta es la quinta variable", categoria:"5", enabled:true).save(failonError:true);
    		new Variable(alias:"Regla001", columna:"Columna1", descripcion:"Esta es la primer variable", categoria:"1", enabled:true).save(failonError:true);
    		new Variable(alias:"Regla002", columna:"Columna2", descripcion:"Esta es la segunda variable", categoria:"2", enabled:false).save(failonError:true);
    		new Variable(alias:"Regla003", columna:"Columna3", descripcion:"Esta es la Tercer variable", categoria:"3", enabled:true).save(failonError:true);
    		new Variable(alias:"Regla004", columna:"Columna4", descripcion:"Esta es la cuarta variable", categoria:"4", enabled:true).save(failonError:true);
    	}
    	if(!Regla.count()){
    		r1=new Regla(nombre:"Regla001", descripcion:"Columna1", microregla:"Esta es la primer variable", enabled:true).save(failonError:true);
    		r2=new Regla(nombre:"Regla002", descripcion:"Columna2", microregla:"Esta es la segunda variable", enabled:true).save(failonError:true);
   		 	r3=new Regla(nombre:"Regla003", descripcion:"Columna3", microregla:"Esta es la Tercer variable", enabled:true).save(failonError:true);
    		r4=new Regla(nombre:"Regla004", descripcion:"Columna4", microregla:"Esta es la cuarta variable", enabled:true).save(failonError:true);
    		r5=new Regla(nombre:"Regla005", descripcion:"Columna5", microregla:"Esta es la quinta variable", enabled:true).save(failonError:true);
    		/*new Regla(nombre:"Regla1", descripcion:"Regla1", microregla:"Esta es la primer regla", enabled:true).save(failonError:true);
            new Regla(nombre:"Regla2", descripcion:"Regla2", microregla:"Esta es la segunda regla", enabled:true).save(failonError:true);
            new Regla(nombre:"Regla3", descripcion:"Regla3", microregla:"Esta es la tercera regla", enabled:true).save(failonError:true);
            new Regla(nombre:"Regla4", descripcion:"Regla4", microregla:"Esta es la cuarta regla", enabled:true).save(failonError:true);
            new Regla(nombre:"Regla5", descripcion:"Regla5", microregla:"Esta es la quinta regla", enabled:true).save(failonError:true);*/
    	}
        if(!MicroReglas.count()){
            new MicroReglas(variable:v1, valor:"MicroRegla1", tipo:1, enabled:true).save(failonError:true);
            new MicroReglas(variable:v2, valor:"MicroRegla2", tipo:2, enabled:false).save(failonError:true);
            new MicroReglas(variable:v3, valor:"MicroRegla3", tipo:3, enabled:true).save(failonError:true);
            new MicroReglas(variable:v4, valor:"MicroRegla4", tipo:4, enabled:false).save(failonError:true);
            new MicroReglas(variable:v5, valor:"MicroRegla5", tipo:5, enabled:true).save(failonError:true);
        }


    }
    def destroy = {
    }
}
