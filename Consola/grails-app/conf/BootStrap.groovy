import com.mx.eglobal.CatalogoVariables;
class BootStrap {

    def init = { servletContext ->
    	if(!CatalogoVariables.count()){
    		new CatalogoVariables(nombre:"Regla001", descripcion:"Esta es la regla Regla001",enabled:true).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla002", descripcion:"Esta es la regla Regla002",enabled:false).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla003", descripcion:"Esta es la regla Regla003",enabled:true).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla004", descripcion:"Esta es la regla Regla004",enabled:false).save(failonError:true);
    		new CatalogoVariables(nombre:"Regla005", descripcion:"Esta es la regla Regla005",enabled:true).save(failonError:true);
    		
    	}
    }
    def destroy = {
    }
}
