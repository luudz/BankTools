import com.mx.eglobal.CatalogoVariables;
class BootStrap {

    def init = { servletContext ->
    	if(!CatalogoVariables.count()){
    		new CatalogoVariables(nombre:"Regla001", descripcion:"Esta es la regla Regla001",enabled:").save(failonError:true);
    		
    	}
    }
    def destroy = {
    }
}
