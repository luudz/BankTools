import com.mx.eglobal.CatalogoVariables;
import com.mx.eglobal.Variable;
import com.mx.eglobal.Regla;
class BootStrap {

    def init = { servletContext ->
    	if(!CatalogoVariables.count()){
    		new CatalogoVariables(nombre:"Regla001", descripcion:"Esta es la regla Regla001",enabled:true).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla002", descripcion:"Esta es la regla Regla002",enabled:false).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla003", descripcion:"Esta es la regla Regla003",enabled:true).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla004", descripcion:"Esta es la regla Regla004",enabled:false).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla005", descripcion:"Esta es la regla Regla005",enabled:true).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla006", descripcion:"Esta es la regla Regla006",enabled:true).save(failonError:true);
    		
    	}
    	if(!Variable.count()){
    		new Variable(alias:"Regla001", columna:"Columna1", descripcion:"Esta es la primer variable", categoria:"1", enabled:true).save(failonError:true);
    		new Variable(alias:"Regla002", columna:"Columna2", descripcion:"Esta es la segunda variable", categoria:"2", enabled:false).save(failonError:true);
    		new Variable(alias:"Regla003", columna:"Columna3", descripcion:"Esta es la Tercer variable", categoria:"3", enabled:true).save(failonError:true);
    		new Variable(alias:"Regla004", columna:"Columna4", descripcion:"Esta es la cuarta variable", categoria:"4", enabled:true).save(failonError:true);
    	}
    	/*if(!Regla.count()){
    		new Regla(nombre:"Regla1", descripcion:"Regla1", microregla:"Esta es la primer microregla", enabled:true).save(failonError:true);
    	}*/
    }
    def destroy = {
    }
}
