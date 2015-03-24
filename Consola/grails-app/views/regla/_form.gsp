<%@ page import="com.mx.eglobal.Regla" %>

<div class="contenedor-reglas">
<div class="contenedor-reglasf1">
<div class="contenedor-reglasc1">
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

<div class="fieldcontain ${hasErrors(bean: reglaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="regla.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${reglaInstance?.enabled}" />

</div>
</div>
<div class="contenedor-reglasc2">
<div class="fieldcontain ${hasErrors(bean: reglaInstance, field: 'microregla', 'error')} required">
	<label for="microregla" style = "float: left">
		<g:message code="regla.microregla.label" default="Microregla" style = "float: left"/>
		<span class="required-indicator" style = "float: left">*</span>
	</label>
	<!--g:textField name="microregla" required="" value="${reglaInstance?.microregla}"/-->
</div>
</div>
<div class="contenedor-reglasc3">
	<div class="palette" >
  <div class="choices" style = "float: left">
    <select multiple="true" class="unselected">
     <option>bla</option>
     <option>ble</option>
     <option>bli</option>
     <option>blo</option>
     <option>blu</option>     
     <option>hola mundo</option>
    </select>
  </div>
  <div class="controls" style = "float: left">
    <input type="button" class="add" value=">"/>
    <input type="button" class="remove" value="<"/>
  </div>
  <div class="choices" style = "float: left">
     <select multiple="true" class="selected">
     </select>
  </div>
</div>
	</br>
		<button href="#create-microReglas" class='MO' style = "float: left">+</button>
</div>
</div>
<div class="contenedor-reglasf2">
	<div id="create-microReglas" class="content scaffold-create" role="main" style="display: none;">
			<form action="/Desarrollo/BankTools/Consola/grails-app/microReglas" method="POST">
			<fieldset class="form">
			<h1>Create Micro Regla</h1>
			Tipo <span class="required-indicator"> * </span>
			<input type="text" required="" name="tipo" value="" /></br>
			Valor <span class="required-indicator"> * </span>
			<input type="text" required="" name="valor" value="" /></br>
			Variable <span class="required-indicator"> * </span>
			<input type="text" required="" name="variable" value="" /></br>
			</fieldset>
			<fieldset class="buttons">
			<input class="save" type="submit" value="Crear" />
			</fieldset>
			</form>
		</div>
</div>
</div>