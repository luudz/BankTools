<%@ page import="com.mx.eglobal.Regla" %>
<%@ page import="com.mx.eglobal.MicroReglas" %>

<!DOCTYPE html>
<html>
	<head>
			<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regla.label', default: 'Regla')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regla" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regla" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<th>id</th>
						<g:sortableColumn property="nombre" title="${message(code: 'regla.nombre.label', default: 'Nombre')}" />

						<th><g:message code="regla.microregla.label" default="Microregla" /></th>
					
						
						<g:sortableColumn property="enabled" title="${message(code: 'regla.enabled.label', default: 'Enabled')}" />

						<th>Fecha</th>
					
						<g:sortableColumn property="nombre" title="${message(code: 'regla.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'regla.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="microregla" title="${message(code: 'regla.microregla.label', default: 'Microregla')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'regla.enabled.label', default: 'Enabled')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${reglaInstanceList}" status="i" var="reglaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										
						<td><g:formatNumber number="${reglaInstance.id}" /></td>
						<td>${fieldValue(bean: reglaInstance, field: "nombre")}</td>
						

						<td>${fieldValue(bean: reglaInstance, field: "microregla")}</td>

						<td><g:formatBoolean boolean="${reglaInstance.enabled}" /></td>
						<td>16-05-2015 13:30:25</td>
						<td><g:link action="show" id="${reglaInstance.id}">${fieldValue(bean: reglaInstance, field: "descripcion")}</g:link></td>
					
						<td><g:formatBoolean boolean="${reglaInstance.enabled}" /></td>
					
						<td>${fieldValue(bean: reglaInstance, field: "microregla")}</td>
					
						<td>${fieldValue(bean: reglaInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div class="pagination">
				<g:paginate total="${reglaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
