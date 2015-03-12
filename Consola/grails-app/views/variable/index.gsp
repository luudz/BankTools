
<%@ page import="com.mx.eglobal.Variable" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'variable.label', default: 'Variable')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-variable" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-variable" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="alias" title="${message(code: 'variable.alias.label', default: 'Alias')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'variable.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="columna" title="${message(code: 'variable.columna.label', default: 'Columna')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'variable.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'variable.enabled.label', default: 'Enabled')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${variableInstanceList}" status="i" var="variableInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${variableInstance.id}">${fieldValue(bean: variableInstance, field: "alias")}</g:link></td>
					
						<td>${fieldValue(bean: variableInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: variableInstance, field: "columna")}</td>
					
						<td>${fieldValue(bean: variableInstance, field: "descripcion")}</td>
					
						<td><g:formatBoolean boolean="${variableInstance.enabled}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${variableInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
