
<%@ page import="com.mx.eglobal.MicroReglas" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/query.min.js"></script>
		<!--script>
			jQuery(document).ready(function(){ 
			$(".content scaffold-create").hide();              
    		$(".MO").click(function(){
     		var nodo = $(this).attr("href");  
			if ($(nodo).is(":visible")){
	       		$(nodo).hide();
        		return false;
        	}else{
    	    	$(".content scaffold-create").hide();                             
        		$(nodo).fadeToggle( "slow" );
        	return false;
       }
    });
	});
	</script-->
	<script>
	$(document).ready(function() 
    { 
        $("#mr").tablesorter(); 
    } 
	); 
	</script>
	<script>
	$(document).ready(function() 
    { 
        $("#mr").tablesorter( {sortList: [[0,3], [1,0]]} ); 
    } 
); 
	</script>
	<script>
	(document).ready(function () {
    var $tbody = $("tbody");

    //hacemos una itinerancia en cada fila
    $tbody.find("tr").each(function () {
    	
        //si no es la primera fila, es decir, la que tiene clase head
        if (!$(this).hasClass("head")) {

            //hacemos un bucle en cada columna
            $(this).children().each(function () {

                //añadimos la opción editable sólo a la última columna
                if ($(this).hasClass("last")) {
                    $(this).click(function () {

                        //si ya le has clickado, la zona editable estará activa
                        if($(this).data("clicked") === true){

                            //evitamos la ejecución del script
                            return false;

                        //si es la primera vez, dejamos una marca de que le hemos hecho click
                        }else{
                            $(this).data("clicked", true);
                        }

                        //la columna
                        var td = $(this),

                            //la información de la columna
                            texto = td.text(),

                            //el ancho + bordes + padding (sin contar margin)
                            ancho = td.outerWidth(),

                            //el padding izquierdo
                            padding = td.css("padding-left");

                        //eliminamos el padding para que no se redimensione al insertar el campo
                        td.css({
                            "padding-left": "0px"
                        });

                        //añadimos el campo
                        td.html("<input style='margin-left: " + padding + "; width: " + (-parseInt(padding, 10) + ancho) + "px' class='transparent' value='" + texto + "' />");

                        //al hacer focus insertamos su mismo valor
                        //esto es para evitar que se seleccione el texto
                        //al hacer auto-focus
                        td.find("input").focus(function () {
                            $(this).val($(this).val());
                        });

                        //cuando se quita el focus volvemos a poner los datos dentro del span
                        td.find("input").blur(function () {
                            td.html("<span class='table-data'>"+$(this).val()+"</span>");
                            
                            //eliminamos el estilo, es decir, el padding de 0px que le habíamos añadido
                            td.removeAttr("style");

                            //borramos la variable que indica que se ha clickado
                            td.data("clicked", false);
                        });

                        //hacemos el autofocus
                        td.find("input").focus();
                    });
                }
            });
        }
    });
});

	</script>

		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'microReglas.label', default: 'MicroReglas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-microReglas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-microReglas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="mr" class="tablesorter">
			<thead>
					<tr>
					
						<g:sortableColumn property="enabled" title="${message(code: 'microReglas.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'microReglas.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'microReglas.valor.label', default: 'Valor')}" />
					
						<th><g:message code="microReglas.variable.label" default="Variable" /></th>

						<g:sortableColumn property="valor" title="${message(code: 'microReglas.valor.label', default: 'Eliminar')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${microReglasInstanceList}" status="i" var="microReglasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${microReglasInstance.id}">${fieldValue(bean: microReglasInstance, field: "enabled")}</g:link></td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "valor")}</td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "variable")}</td>

						<td align="right"><input type="button" value="-" class="clsEliminarFila"></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${microReglasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
