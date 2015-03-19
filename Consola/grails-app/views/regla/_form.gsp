<%@ page import="com.mx.eglobal.Regla" %>

<div class="fieldcontain ${hasErrors(bean: reglaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="regla.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${reglaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reglaInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="regla.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${reglaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reglaInstance, field: 'microregla', 'error')} required">
	<label for="microregla">
		<g:message code="regla.microregla.label" default="Microregla" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="microregla" name="microregla.id" from="${com.mx.eglobal.MicroReglas.list()}" optionKey="id" required="" value="${reglaInstance?.microregla?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reglaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="regla.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${reglaInstance?.enabled}" />

</div>


