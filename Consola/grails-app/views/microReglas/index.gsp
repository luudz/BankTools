
<%@ page import="com.mx.eglobal.MicroReglas" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/query.min.js"></script>
		<script src="jquery.appendGrid-1.0.0.js"></script>
		<script type="text/javascript" src="jquery.js"></script> 
		<script type="text/javascript" src="jquery.jeditable.js"></script>


		<!--script>
			$(document).ready(function(){
     		$('table').dataTable().makeEditable();
			});

		</script>
		<script language="JavaScript" type="text/javascript">
            $(document).ready(function () {
                $('#myDataTable').dataTable().makeEditable();
            });
        </script-->

        <script type="text/javascript">
 
		$(function(){
		// Clona la fila oculta que tiene los campos base, y la agrega al final de la tabla
			$("#agregar").on('click', function(){
			$("#tabla tbody tr:eq(0)").clone().removeClass('fila-base').appendTo("#tabla tbody");
		});
 	
		// Evento que selecciona la fila y la elimina 
		$(document).on("click",".eliminar",function(){
			var parent = $(this).parents().get(0);
			$(parent).remove();
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
			<table id="tabla">
			<thead>
					<tr class="fila-base">
						
						<g:sortableColumn property="enabled" title="${message(code: 'microReglas.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'microReglas.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'microReglas.valor.label', default: 'Valor')}" />
					
						<th><g:message code="microReglas.variable.label" default="Variable" /></th>

						<th>&nbsp;</th>

						<!--g:sortableColumn property="valor" title="${message(code: 'microReglas.valor.label', default: 'Eliminar')}" /-->
					
					</tr>
				</thead>
				<tbody>
					<tr class="fila-base">
						<td><input type="text" field="enabled" ></td>
						<td><input type="text" field="tipo" /></td>
						<td><input type="text" field="valor" /></td>
						<td><input type="text" fiel="variable" /></td>
						<td><input type="button" id="agregar" value="+"/></td>
					</tr>
				
				<g:each in="${microReglasInstanceList}" status="i" var="microReglasInstance">
					
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${microReglasInstance.id}">${fieldValue(bean: microReglasInstance, field: "enabled")}</g:link></td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "valor")}</td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "variable")}</td>

						<!--td><input type="button" id="agregar" value="Agregar fila"/></td-->

						<!--td class="eliminar">Eliminar</td-->				
					</tr>
				</g:each>
				</tbody>
			</table>
			<!--input type="button" id="agregar" value="Agregar fila"/-->
			<div class="pagination">
				<g:paginate total="${microReglasInstanceCount ?: 0}" />
			</div>
		</div>

	</body>
</html>
