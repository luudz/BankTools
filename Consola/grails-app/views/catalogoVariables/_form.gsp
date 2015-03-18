<%@ page import="com.mx.eglobal.CatalogoVariables" %>

<div class="fieldcontain ${hasErrors(bean: catalogoVariablesInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="catalogoVariables.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${catalogoVariablesInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: catalogoVariablesInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="catalogoVariables.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${catalogoVariablesInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: catalogoVariablesInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="catalogoVariables.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${catalogoVariablesInstance?.enabled}" />

</div>



