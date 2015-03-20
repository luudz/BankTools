import com.mx.eglobal.CatalogoVariables;
import com.mx.eglobal.Variable;
import com.mx.eglobal.Regla;
import com.mx.eglobal.MicroReglas;
import com.mx.eglobal.security.SecUser;
import com.mx.eglobal.security.SecRole;
import com.mx.eglobal.security.SecUserSecRole;

/*Cambio test*/


class BootStrap {
    
    def init = { servletContext ->
    /*
    Comente esto porque no hacia nada checalo luz 13-mar-2015 
    def v1=new Variable(alias:"Regla001", columna:"Columna1", descripcion:"Esta es la primer variable", categoria:"1", enabled:true).save(failonError:true);
    def v2=new Variable(alias:"Regla002", columna:"Columna2", descripcion:"Esta es la segunda variable", categoria:"2", enabled:true).save(failonError:true);
    def v3=new Variable(alias:"Regla003", columna:"Columna3", descripcion:"Esta es la Tercer variable", categoria:"3", enabled:true).save(failonError:true);
    def v4=new Variable(alias:"Regla004", columna:"Columna4", descripcion:"Esta es la cuarta variable", categoria:"4", enabled:true).save(failonError:true);
    def v5=new Variable(alias:"Regla005", columna:"Columna5", descripcion:"Esta es la quinta variable", categoria:"5", enabled:true).save(failonError:true);*/  
        def v1,v2,v3,v4,v5,r1,r2,r3,r4,r5,m1,m2,m3,m4,m5,cv1,cv2,cv3,cv4,cv5;


        

            cv1=new CatalogoVariables(nombre:"Monto", descripcion:"variables que interactuan sobre monto",enabled:true).save(failonError:true);
            cv2=new CatalogoVariables(nombre:"Operaciones", descripcion:"variable que su comportamiento es sobre el numero de operaciones",enabled:false).save(failonError:true);
            cv3=new CatalogoVariables(nombre:"Por tiempo", descripcion:"variables que dependen del tiempo",enabled:true).save(failonError:true);

            v1=new Variable(alias:"Monto", columna:"monto", descripcion:"monto acumulado del comercio", categoria:cv1, enabled:true).save(failonError:true);
            v2=new Variable(alias:"Operaciones", columna:"opraciones", descripcion:"operaciones acumuladas del comercio", categoria:cv2, enabled:true).save(failonError:true);
            v3=new Variable(alias:"Anomalia de monto", columna:"monto_anomalo", descripcion:"anomalìa 99% d monto", categoria:cv1, enabled:true).save(failonError:true);
            
     
            m1=new MicroReglas(variable:v1, valor:"Monto >20", tipo:1, enabled:true).save(failonError:true);
            m2=new MicroReglas(variable:v2, valor:"Operaciones >10%", tipo:2, enabled:false).save(failonError:true);
            m3=new MicroReglas(variable:v3, valor:"Anomalia de monto 30%", tipo:3, enabled:true).save(failonError:true);
            
        
        
            r1=new Regla(nombre:"Chihuahua", descripcion:"Comportamiento en oxxo", microregla:[m1,m3], enabled:true).save(failonError:true);
            r2=new Regla(nombre:"Regla Sams club", descripcion:"Aceleraciòn de operaciones", microregla:m2, enabled:true).save(failonError:true);
            
    
            def roleAdmin = new SecRole(authority:"ROLE_ADMIN").save(failOnError:true);
            def userAdmin = new SecUser(username:"admin", password:"admin",enabled:true).save(failOnError:true);
            SecUserSecRole.create userAdmin, roleAdmin; 
       
            


    }
    def destroy = {
    }
}
