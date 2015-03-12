
<%@ page import="com.mx.eglobal.CatalogoVariables" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'catalogoVariables.label', default: 'CatalogoVariables')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-catalogoVariables" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-catalogoVariables" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'catalogoVariables.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'catalogoVariables.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'catalogoVariables.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${catalogoVariablesInstanceList}" status="i" var="catalogoVariablesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${catalogoVariablesInstance.id}">${fieldValue(bean: catalogoVariablesInstance, field: "descripcion")}</g:link></td>
					
						<td><g:formatBoolean boolean="${catalogoVariablesInstance.enabled}" /></td>
					
						<td>${fieldValue(bean: catalogoVariablesInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${catalogoVariablesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>