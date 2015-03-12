<%@ page import="com.mx.eglobal.Variable" %>



<div class="fieldcontain ${hasErrors(bean: variableInstance, field: 'alias', 'error')} required">
	<label for="alias">
		<g:message code="variable.alias.label" default="Alias" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alias" required="" value="${variableInstance?.alias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: variableInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="variable.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoria" required="" value="${variableInstance?.categoria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: variableInstance, field: 'columna', 'error')} required">
	<label for="columna">
		<g:message code="variable.columna.label" default="Columna" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="columna" required="" value="${variableInstance?.columna}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: variableInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="variable.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${variableInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: variableInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="variable.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${variableInstance?.enabled}" />

</div>

