<!DOCTYPE html>
<html>
	<head>
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
		<g:set var="entityName" value="${message(code: 'regla.label', default: 'Regla')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
		<button href="#create-microReglas" class='MO'>Agregar microregla</button>

			<div id="create-microReglas" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
