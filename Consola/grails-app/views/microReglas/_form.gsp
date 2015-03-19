<%@ page import="com.mx.eglobal.MicroReglas" %>



<div class="fieldcontain ${hasErrors(bean: microReglasInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="microReglas.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${microReglasInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: microReglasInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="microReglas.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	 <g:select id="myselect" name="tipo" value="${microReglasInstance.tipo}" from="${['1': 'MAYOR QUE > ', '2': 'MENOR QUE < ', '3': 'IGUAL QUE = ','4':'MAYOR IGUAL QUE >= ','5':'MENOR IGUAL QUE <= ']}" optionKey="key" optionValue="value" />   

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
	<g:select id="variable" name="variable.id" from="${com.mx.eglobal.Variable.list()}" optionKey="id" required="" value="${microReglasInstance?.variable?.id}" class="many-to-one"/>

</div>

