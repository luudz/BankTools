<%@ page import="com.mx.eglobal.MicroReglas" %>



<div class="fieldcontain ${hasErrors(bean: microReglasInstance, field: 'enable', 'error')} ">
	<label for="enable">
		<g:message code="microReglas.enable.label" default="Enable" />
		
	</label>
	<g:checkBox name="enable" value="${microReglasInstance?.enable}" />

</div>

<div class="fieldcontain ${hasErrors(bean: microReglasInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="microReglas.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tipo" type="number" value="${microReglasInstance.tipo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: microReglasInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="microReglas.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="valor" required="" value="${microReglasInstance?.valor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: microReglasInstance, field: 'variable', 'error')} required">
	<label for="variable">
		<g:message code="microReglas.variable.label" default="Variable" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="variable" required="" value="${microReglasInstance?.variable}"/>

</div>

