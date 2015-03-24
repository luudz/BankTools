
<%@ page import="com.mx.eglobal.MicroReglas" %>
<!DOCTYPE html>
<html>
	<head>
		


		<script src="jquery.appendGrid-1.0.0.js"></script>


		<script>
			$(document).ready(function(){
     		$('table').dataTable().makeEditable();
			});

		</script>
		<script language="JavaScript" type="text/javascript">
            $(document).ready(function () {
                $('#myDataTable').dataTable().makeEditable();
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
			<table>
			<thead>
					<tr>
						
						<g:sortableColumn property="enabled" title="${message(code: 'microReglas.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'microReglas.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'microReglas.valor.label', default: 'Valor')}" />
					
						<th><g:message code="microReglas.variable.label" default="Variable" /></th>

						<g:sortableColumn property="valor" title="${message(code: 'microReglas.valor.label', default: 'Eliminar')}" />
					
					</tr>
				</thead>
				<tbody id="myDataTable">
				<tr id="1">
						<td><INPUT TYPE="text" SIZE="25" NAME="enabled"></td>
						<td><INPUT TYPE="text" SIZE="25" NAME="tipo"></td>
						<td><INPUT TYPE="text" SIZE="25" NAME="valor"></td>
						<td><INPUT TYPE="text" SIZE="25" NAME="variable"></td>
						<td align="right"><input type="button" value="Agregar" class="agregar"></td>
				</tr>
				<g:each in="${microReglasInstanceList}" status="i" var="microReglasInstance">
					
					<tr id="2" class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${microReglasInstance.id}">${fieldValue(bean: microReglasInstance, field: "enabled")}</g:link></td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "valor")}</td>
					
						<td>${fieldValue(bean: microReglasInstance, field: "variable")}</td>

					
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
