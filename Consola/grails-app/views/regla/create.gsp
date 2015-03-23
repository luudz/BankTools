<%@ page import="com.mx.eglobal.MicroReglas"%>

<!DOCTYPE html>
<html>
	<head>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
	<script>
	jQuery(document).ready(function(){ 
	$(".content scaffold-create").hide();              
    $(".MO").click(function(){
     	var nodo = $(this).attr("href");  
		if ($(nodo).is(":visible")){
	       	$(nodo).hide();
        	return false;
        }else{
    	    $(".content scaffold-create").hide();                             
        	$(nodo).fadeToggle( "slow" );
        	return false;
        }
    });
	});
	</script>
		<meta name="layout" content="main">
		<g:set var="entityNamemicro" value="${message(code: 'microReglas.label', default: 'MicroReglas')}" bean="${microReglasInstance}"/>
		<g:set var="entityName" value="${message(code: 'regla.label', default: 'Regla')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>

				<script>
$(document).ready(function() {
    $('.palette .add').click(function(e) {
        var options = $('select.unselected option:selected');
        $('select.selected').append(options);
        e.preventDefault();
        return false;
    });
    $('.palette .remove').click(function(e) {
        var options = $('select.selected option:selected');
        $('select.unselected').append(options);
        e.preventDefault();
        return false;
    });
    $('.palette .down').click(function(e) {
        var options = $('select.selected option:selected');
        options.last().next().after(options)
        e.preventDefault();
        return false;
    });
    $('.palette .up').click(function(e) {
        var options = $('select.selected option:selected');
        options.first().prev().before(options)
        e.preventDefault();
        return false;
    });
});
</script>

	</head>
	<body>
		<a href="#create-regla" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

		<div id="create-regla" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${reglaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${reglaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:reglaInstance, action:'save']" >
				<fieldset class="form">
					<!--g:render template="form"/-->
					<!--g:render template="lista1"/-->
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>

		<div class="palette">
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
  <div class="choices">
     <select multiple="true" class="selected">
     </select>
  </div>
</div>

		<button href="#create-microReglas" class='MO'>Agregar microregla</button>
	<div id="create-microReglas" class="content scaffold-create" role="main" style="display: none;">
			<h1><g:message code="default.create.label" args="[entityNamemicro]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${microReglasInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${microReglasInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:microReglasInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>